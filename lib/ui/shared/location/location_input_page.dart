import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/location/dtos/artist_location_dto.dart';
import 'package:inker_studio/data/gcp/dto/auto_complete_response.dart';
import 'package:inker_studio/data/gcp/dto/place_details_response.dart' as place_dto;
import 'package:inker_studio/data/gcp/gcp_places_service.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/services/places/places_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'dart:async'; // Add this import for Timer

class LocationInputPage extends StatefulWidget {
  final String title;
  final String? initialName;
  final String? initialAddress;
  final LatLng? initialLatLng;
  final String? initialPlaceId;
  final AddressType? initialAddressType;

  const LocationInputPage({
    super.key,
    required this.title,
    this.initialName,
    this.initialAddress,
    this.initialLatLng,
    this.initialPlaceId,
    this.initialAddressType,
  });

  @override
  State<LocationInputPage> createState() => _LocationInputPageState();
}

class _LocationInputPageState extends State<LocationInputPage> {
  late final TextEditingController _nameController;
  late final TextEditingController _addressController;
  late final FocusNode _addressFocusNode;

  bool _isFormValid = false;
  bool _isLoadingPlace = false;
  place_dto.PlaceDetailsResult? _selectedPlace;
  String? _selectedPlaceId; // Store the placeId separately
  AddressType _selectedAddressType = AddressType.STUDIO; // Default address type
  final List<Prediction> _predictions = [];
  
  // Add debounce timer
  Timer? _debounceTimer;
  final Duration _debounceDuration = const Duration(milliseconds: 500);
  bool _isSearching = false;
  
  final Prediction _noResultsPrediction = const Prediction(
    description: '__NO_RESULTS__',
    matchedSubstrings: [],
    placeId: '',
    reference: '',
    structuredFormatting: StructuredFormatting(
      mainText: '',
      mainTextMatchedSubstrings: [],
      secondaryText: '',
    ),
    terms: [],
    types: [],
  );

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName ?? '');
    _addressController = TextEditingController(text: widget.initialAddress ?? '');
    _addressFocusNode = FocusNode();
    
    // Set initial address type if provided
    if (widget.initialAddressType != null) {
      _selectedAddressType = widget.initialAddressType!;
    }

    // If we have initial data, load the place details
    if (widget.initialPlaceId != null && widget.initialPlaceId!.isNotEmpty) {
      _selectedPlaceId = widget.initialPlaceId; // Set the initial place ID
      _loadPlaceDetailsById(widget.initialPlaceId!);
    } else if (widget.initialLatLng != null) {
      // If we have coordinates but no place ID, we can still display the location
      _setManualLocation();
    }

    _nameController.addListener(_validateForm);
    _addressController.addListener(_onAddressTextChanged);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _addressFocusNode.dispose();
    _debounceTimer?.cancel(); // Cancel the timer when disposing
    super.dispose();
  }

  // New method to handle text changes with debounce
  void _onAddressTextChanged() {
    // Cancel any existing timer
    _debounceTimer?.cancel();
    
    // Don't trigger search if the text is too short
    if (_addressController.text.length < 4) {
      setState(() {
        _predictions.clear();
      });
      return;
    }
    
    // Set a new timer to delay the API call
    _debounceTimer = Timer(_debounceDuration, () {
      // Only fetch if we're not already searching
      if (!_isSearching) {
        _fetchPredictions();
      }
    });
  }

  // Separate method to handle the actual API call
  Future<void> _fetchPredictions() async {
    // Set flag to prevent multiple concurrent API calls
    setState(() {
      _isSearching = true;
    });
    
    try {
      final placesService = context.read<PlacesService>();
      
      // If this is a new search (not a continuation), refresh the session token
      if (_predictions.isEmpty && placesService is GcpPlacesService) {
        placesService.refreshSessionToken();
      }
      
      final predictions = await placesService.getAutoComplete(_addressController.text);
      
      // Only update UI if the text hasn't changed during the API call
      setState(() {
        _predictions.clear();
        if (predictions.isEmpty) {
          _predictions.add(_noResultsPrediction);
        } else {
          _predictions.addAll(predictions);
        }
        _isSearching = false;
      });
    } catch (e) {
      setState(() {
        _predictions.clear();
        _predictions.add(_noResultsPrediction);
        _isSearching = false;
      });
    }
  }

  void _setManualLocation() {
    if (widget.initialLatLng != null && widget.initialAddress != null) {
      setState(() {
        _selectedPlace = place_dto.PlaceDetailsResult(
          addressComponents: [],
          formattedAddress: widget.initialAddress!,
          geometry: place_dto.Geometry(
            location: place_dto.Location(
              lat: widget.initialLatLng!.lat,
              lng: widget.initialLatLng!.lng,
            ),
            viewport: null,
          ),
          name: widget.initialAddress!,
        );
        _validateForm();
      });
    }
  }

  void _validateForm() {
    setState(() {
      _isFormValid = _nameController.text.isNotEmpty &&
          _selectedPlace != null;
    });
  }

  // Keep this method for compatibility but use the debounced version instead
  Future<void> _onAddressChanged() async {
    // This is now handled by _onAddressTextChanged and _fetchPredictions
  }

  Future<void> _loadPlaceDetailsById(String placeId) async {
    setState(() {
      _isLoadingPlace = true;
      _selectedPlaceId = placeId; // Store the placeId for later use
    });
    
    try {
      final placesService = context.read<PlacesService>();
      final placeDetails = await placesService.getPlaceDetails(placeId);
      
      if (placeDetails != null) {
        setState(() {
          _selectedPlace = placeDetails;
          _addressController.text = placeDetails.formattedAddress;
          _isLoadingPlace = false;
        });
        _validateForm();
      } else {
        setState(() {
          _isLoadingPlace = false;
        });
      }
    } catch (e) {
      setState(() {
        _isLoadingPlace = false;
      });
    }
  }

  Future<void> _selectPrediction(Prediction prediction) async {
    // Clear focus to dismiss the autocomplete
    FocusScope.of(context).unfocus();
    
    // Reset the prediction list
    setState(() {
      _predictions.clear();
      _isLoadingPlace = true;
    });
    
    try {
      // Refresh the session token before making the details request
      final placesService = context.read<PlacesService>();
      if (placesService is GcpPlacesService) {
        placesService.refreshSessionToken();
      }
      
      await _loadPlaceDetailsById(prediction.placeId);
    } catch (e) {
      setState(() {
        _isLoadingPlace = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          widget.title,
          style: TextStyleTheme.headline2,
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildNameInput(),
            const SizedBox(height: 24.0),
            _buildAddressInput(),
            if (_predictions.isNotEmpty && _addressFocusNode.hasFocus) 
              _buildPredictionsList(),
            const SizedBox(height: 24.0),
            _buildAddressTypeDropdown(),
            const SizedBox(height: 24.0),
            if (_isLoadingPlace) _buildLoadingIndicator(),
            if (_selectedPlace != null && !_isLoadingPlace) _buildAddressDetails(),
            const SizedBox(height: 32.0),
            _buildSaveButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildNameInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).locationName,
          style: TextStyleTheme.headline3,
        ),
        const SizedBox(height: 8.0),
        TextFormField(
          controller: _nameController,
          style: TextStyleTheme.bodyText1,
          decoration: InputDecoration(
            hintText: S.of(context).enterLocationName,
            hintStyle: hintTextStyle,
            filled: true,
            fillColor: inputBackgroundColor,
            border: inputBorder,
            focusedBorder: focusedBorder,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
          ),
        ),
      ],
    );
  }
  
  Widget _buildAddressTypeDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Address Type', // Should be localized
          style: TextStyleTheme.headline3,
        ),
        const SizedBox(height: 8.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: inputBackgroundColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.transparent),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<AddressType>(
              isExpanded: true,
              dropdownColor: inputBackgroundColor,
              value: _selectedAddressType,
              style: TextStyleTheme.bodyText1,
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
              onChanged: (AddressType? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedAddressType = newValue;
                  });
                }
              },
              items: AddressType.values.map<DropdownMenuItem<AddressType>>((AddressType value) {
                return DropdownMenuItem<AddressType>(
                  value: value,
                  child: Text(
                    value.toString().split('.')[1], // Convert enum to string (e.g., "STUDIO")
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAddressInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).address,
          style: TextStyleTheme.headline3,
        ),
        const SizedBox(height: 8.0),
        TextFormField(
          controller: _addressController,
          focusNode: _addressFocusNode,
          style: TextStyleTheme.bodyText1,
          decoration: InputDecoration(
            hintText: S.of(context).enterAddress,
            hintStyle: hintTextStyle,
            filled: true,
            fillColor: inputBackgroundColor,
            border: inputBorder,
            focusedBorder: focusedBorder,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear, color: Color(0xff777E91)),
              onPressed: () {
                _addressController.clear();
                setState(() {
                  _selectedPlace = null;
                  _selectedPlaceId = null;
                  _predictions.clear();
                });
                _validateForm();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPredictionsList() {
    if (_isSearching) {
      return Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: inputBackgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            SizedBox(width: 12),
            Text(
              'Buscando lugares...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      );
    }

    if (_predictions.length == 1 && _predictions.first.description == '__NO_RESULTS__') {
      return Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: inputBackgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Text(
          'No se encontraron resultados 😥',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: inputBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _predictions.length,
        itemBuilder: (context, index) {
          final prediction = _predictions[index];
          
          if (prediction.description == '__NO_RESULTS__') {
            return const SizedBox.shrink();
          }
          
          return ListTile(
            title: Text(
              prediction.description,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
            ),
            onTap: () => _selectPrediction(prediction),
          );
        },
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: explorerSecondaryColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 16.0),
          Text(
            'Cargando detalles del lugar...',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddressDetails() {
    final place = _selectedPlace!;
    
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: explorerSecondaryColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).addressDetails,
            style: TextStyleTheme.subtitle1,
          ),
          const SizedBox(height: 8.0),
          Text(
            place.formattedAddress,
            style: TextStyleTheme.bodyText1,
          ),
          const SizedBox(height: 16.0),
          if (place.geometry?.location != null) Row(
            children: [
              const Icon(Icons.location_on, color: secondaryColor, size: 16.0),
              const SizedBox(width: 8.0),
              Text(
                '${place.geometry!.location!.lat}, ${place.geometry!.location!.lng}',
                style: TextStyleTheme.caption,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSaveButton() {
    return ElevatedButton(
      onPressed: _isFormValid ? _saveLocation : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: secondaryColor,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        disabledBackgroundColor: Colors.grey,
      ),
      child: Text(
        S.of(context).save,
        style: TextStyleTheme.button,
      ),
    );
  }

  void _saveLocation() {
    if (_isFormValid && _selectedPlace != null) {
      final place = _selectedPlace!;
      final geometry = place.geometry;
      
      // Extract address components
      String address1 = '';
      String address2 = '';
      String city = '';
      String state = '';
      String country = '';
      String shortAddress1 = '';
      
      for (final component in place.addressComponents) {
        if (component.types.contains('street_number')) {
          address1 = component.longName;
          shortAddress1 = component.shortName;
        } else if (component.types.contains('route')) {
          address2 = component.longName;
        } else if (component.types.contains('locality') || 
                  component.types.contains('administrative_area_level_3')) {
          city = component.longName;
        } else if (component.types.contains('administrative_area_level_1')) {
          state = component.longName;
        } else if (component.types.contains('country')) {
          country = component.longName;
        }
      }
      
      // If we couldn't parse the address properly, use defaults
      if (address1.isEmpty && address2.isEmpty) {
        final addressParts = place.formattedAddress.split(',');
        if (addressParts.isNotEmpty) {
          address1 = addressParts[0];
          shortAddress1 = addressParts[0];
        }
        if (addressParts.length > 1) {
          address2 = addressParts[1].trim();
        }
      }
      
      if (city.isEmpty && place.addressComponents.isNotEmpty) {
        city = place.addressComponents[0].longName;
      }
      
      // Create a viewport from the place details
      Map<String, dynamic> viewport = {};
      if (geometry?.viewport != null) {
        viewport = {
          'northeast': {
            'lat': geometry!.viewport!.northeast!.lat,
            'lng': geometry.viewport!.northeast!.lng,
          },
          'southwest': {
            'lat': geometry.viewport!.southwest!.lat,
            'lng': geometry.viewport!.southwest!.lng,
          },
        };
      }
      
      // Combine the form data with the place details
      final result = {
        'name': _nameController.text,
        'address1': address1,
        'shortAddress1': shortAddress1,
        'address2': address2,
        'city': city,
        'state': state,
        'country': country,
        'formattedAddress': place.formattedAddress,
        'lat': geometry?.location?.lat ?? 0.0,
        'lng': geometry?.location?.lng ?? 0.0,
        'viewport': viewport,
        'googlePlaceId': _selectedPlaceId ?? widget.initialPlaceId ?? '', // Use the stored placeId
        'addressType': _selectedAddressType, // Add the selected address type
      };

      // Refresh session token after completing a full search flow
      try {
        final placesService = context.read<PlacesService>();
        if (placesService is GcpPlacesService) {
          placesService.refreshSessionToken();
        }
      } catch (_) {
        // Ignore errors when refreshing session token
      }

      Navigator.pop(context, result);
    }
  }
}
