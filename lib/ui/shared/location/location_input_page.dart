import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/locations/artist_location_manager_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class LocationInputPage extends StatefulWidget {
  final String title;
  final String? initialName;
  final String? initialAddress;
  final LatLng? initialLatLng;

  const LocationInputPage({
    super.key,
    required this.title,
    this.initialName,
    this.initialAddress,
    this.initialLatLng,
  });

  @override
  State<LocationInputPage> createState() => _LocationInputPageState();
}

class _LocationInputPageState extends State<LocationInputPage> {
  late final TextEditingController _nameController;
  late final TextEditingController _addressController;

  bool _isFormValid = false;

  // For a real implementation, this would use the Google Places API
  // but for this example, we'll simulate the response
  Map<String, dynamic> _placeDetails = {};

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName ?? '');
    _addressController =
        TextEditingController(text: widget.initialAddress ?? '');

    if (widget.initialLatLng != null) {
      _placeDetails = {
        'lat': widget.initialLatLng!.latitude,
        'lng': widget.initialLatLng!.longitude,
        'address1': 'Sample Street 123',
        'address2': 'Floor 1',
        'city': 'Sample City',
        'formattedAddress': widget.initialAddress,
        'placeId': 'sample_place_id',
      };
    }

    _validateForm();

    _nameController.addListener(_validateForm);
    _addressController.addListener(_validateForm);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  void _validateForm() {
    setState(() {
      _isFormValid = _nameController.text.isNotEmpty &&
          _addressController.text.isNotEmpty &&
          _placeDetails.isNotEmpty;
    });
  }

  void _searchAddress(String query) {
    // In a real app, this would call the Google Places API
    // For this example, we'll simulate a response after a delay
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _placeDetails = {
          'lat': 37.7749,
          'lng': -122.4194,
          'address1': 'Sample Street 123',
          'address2': 'Floor 1',
          'city': 'Sample City',
          'formattedAddress': query,
          'placeId': 'sample_place_id',
        };
        _validateForm();
      });
    });
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
            const SizedBox(height: 24.0),
            if (_placeDetails.isNotEmpty) _buildAddressDetails(),
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
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () => _searchAddress(_addressController.text),
            ),
          ),
          onEditingComplete: () => _searchAddress(_addressController.text),
        ),
      ],
    );
  }

  Widget _buildAddressDetails() {
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
            _placeDetails['formattedAddress'] as String? ?? '',
            style: TextStyleTheme.bodyText1,
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Icon(Icons.location_on, color: secondaryColor, size: 16.0),
              const SizedBox(width: 8.0),
              Text(
                '${_placeDetails['lat']}, ${_placeDetails['lng']}',
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
    if (_isFormValid) {
      // Combine the form data with the place details
      final result = {
        'name': _nameController.text,
        ..._placeDetails,
      };

      Navigator.pop(context, result);
    }
  }
}
