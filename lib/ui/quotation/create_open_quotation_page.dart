import 'dart:io'; // Import for File

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/gps/gps_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/create_open_quotation/create_open_quotation_bloc.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart'; // Still needed for provider
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_design_dto.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart'; // Corrected import path
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Import LatLng

// Wrapper Widget to Provide the BLoC
class CreateOpenQuotationProvider extends StatelessWidget {
  const CreateOpenQuotationProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateOpenQuotationBloc(
        quotationService: context.read<QuotationService>(),
        authBloc: context.read<AuthBloc>(),
        mapBloc: context.read<MapBloc>(),
        gpsBloc: context.read<GpsBloc>(),
      ),
      child: const CreateOpenQuotationPage(),
    );
  }
}

// Main Page Widget - Now potentially StatefulWidget only for controllers
class CreateOpenQuotationPage extends StatefulWidget {
  const CreateOpenQuotationPage({super.key});

  @override
  State<CreateOpenQuotationPage> createState() =>
      _CreateOpenQuotationPageState();
}

class _CreateOpenQuotationPageState extends State<CreateOpenQuotationPage> {
  final _formKey = GlobalKey<FormState>();
  final _descriptionController = TextEditingController();
  final int _maxDescriptionLength = 1500; // Keep constants if used only in UI
  final int _minDescriptionLength = 10;

  @override
  void initState() {
    super.initState();
    // Add listener to controller to dispatch event
    _descriptionController.addListener(_onDescriptionChanged);
    // Trigger initial location check via BLoC
    _checkAndRequestLocation();
  }

  void _onDescriptionChanged() {
    context.read<CreateOpenQuotationBloc>().add(
        CreateOpenQuotationEvent.descriptionChanged(
            _descriptionController.text));
  }

  Future<void> _checkAndRequestLocation() async {
    final gpsBloc = context.read<GpsBloc>();
    final mapBloc = context.read<MapBloc>();
    final openQuotationBloc = context.read<CreateOpenQuotationBloc>();
    final l10n = S.of(context);

    // 1. Leer estados actuales
    final GpsState gpsState = gpsBloc.state;
    final MapState mapState =
        mapBloc.state; // Asumiendo que tienes acceso a MapState aquí
    final LatLng? currentLocation = mapState.currentLocation;

    // 2. Despachar el estado inicial al BLoC de cotización
    openQuotationBloc.add(CreateOpenQuotationEvent.locationStatusChecked(
      isGpsEnabled: gpsState.isGpsEnabled,
      isPermissionGranted: gpsState.isGpsPermissionGranted,
      location: currentLocation,
    ));

    // 3. Mostrar feedback/acción basado en el estado inicial
    if (!gpsState.isGpsPermissionGranted) {
      // Informar al usuario y solicitar permisos (sin esperar resultado aquí)
      ScaffoldMessenger.of(context).showSnackBar(
        customSnackBar(
          context: context,
          content: l10n
              .enableLocationServicesAndPermissions, // O "Se requieren permisos de ubicación"
          backgroundColor: Colors.orangeAccent, // Usar un color de advertencia
        ),
      );
      // Llamar a askGpsAccess SIN await o sin lógica dependiente inmediata
      gpsBloc.askGpsAccess();
    } else if (!gpsState.isGpsEnabled) {
      // Informar que el GPS está apagado
      ScaffoldMessenger.of(context).showSnackBar(
        customSnackBar(
          context: context,
          content:
              "Por favor, activa el GPS de tu dispositivo.", // Mensaje más específico
          backgroundColor: redColor,
        ),
      );
    } else if (currentLocation == null) {
      // Informar que la ubicación aún no está disponible (puede estar cargando)
      ScaffoldMessenger.of(context).showSnackBar(
        customSnackBar(
          context: context,
          content: l10n.couldNotGetLocation, // O "Obteniendo ubicación..."
          backgroundColor: tertiaryColor, // Color neutro
        ),
      );
    }
  }

  Future<void> _pickImages() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile> images = await picker.pickMultiImage();
    if (!mounted) return;
    if (images.isNotEmpty) {
      context
          .read<CreateOpenQuotationBloc>()
          .add(CreateOpenQuotationEvent.imagesAdded(images));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    // Listen to BLoC state for side effects (Snackbars, Navigation)
    return BlocListener<CreateOpenQuotationBloc, CreateOpenQuotationState>(
      listener: (context, state) {
        // Show error messages (now checks for non-null message)
        if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar(
              context: context,
              content: state.errorMessage!,
              backgroundColor: redColor,
            ),
          );
          // Clear the error message from state after showing
          context
              .read<CreateOpenQuotationBloc>()
              .add(const CreateOpenQuotationEvent.clearErrorMessage());
        }
        // Show success messages (now checks for non-null message)
        if (state.successMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar(
              context: context,
              content: state.successMessage!,
              backgroundColor: secondaryColor,
            ),
          );
        }

        if (state.status == CreateOpenQuotationStatus.submissionSuccess) {
          context
              .read<CreateOpenQuotationBloc>()
              .add(const CreateOpenQuotationEvent.clearSuccessMessage());
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text(
            l10n.createOpenQuotation,
            style: TextStyleTheme.headline2,
            overflow: TextOverflow.ellipsis,
          ),
          backgroundColor: primaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
        ),
        // Use BlocBuilder to react to state changes for the main body
        body: BlocBuilder<CreateOpenQuotationBloc, CreateOpenQuotationState>(
          builder: (context, state) {
            // Show loading indicator based on BLoC state
            if (state.status ==
                    CreateOpenQuotationStatus.submissionInProgress ||
                state.status == CreateOpenQuotationStatus.loading) {
              // Added general loading check
              return const Center(
                  child: InkerProgressIndicator(
                      color: secondaryColor, radius: 15));
            }

            // Build the main form content
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Form(
                key:
                    _formKey, // Keep form key if needed for local validation (optional)
                child: ListView(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 32.0),
                  children: [
                    // Description Section
                    _buildSectionHeader(l10n.description, Icons.edit_note),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: _descriptionController, // Keep controller
                      style: TextStyleTheme.bodyText1,
                      maxLines: 5,
                      maxLength: _maxDescriptionLength,
                      // Update counter based on controller's text length
                      buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) {
                        // Read directly from controller as it triggers rebuild via listener
                        final currentLen = _descriptionController.text.length;
                        return Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            '$currentLen/$maxLength',
                            style: TextStyle(
                              // Use state.isDescriptionValid for color
                              color: currentLen < _minDescriptionLength
                                  ? tertiaryColor
                                  : tertiaryColor, // Simpler color logic now
                              fontSize: 12,
                            ),
                          ),
                        );
                      },
                      decoration: _inputDecoration(
                        hintText:
                            '${l10n.describeYourTattooIdea} (Mín. $_minDescriptionLength caracteres)',
                        prefixIcon: Icons.edit_note,
                        // Show error text from BLoC state if description is invalid
                        errorText: !state.isDescriptionValid &&
                                state.description
                                    .isNotEmpty // Show only if invalid and not empty
                            ? 'Mínimo $_minDescriptionLength caracteres requeridos'
                            : null,
                      ),
                      // Basic validator can remain, but BLoC handles submission logic
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return l10n.pleaseEnterDescription;
                        }
                        // Detailed length check is handled by BLoC onChange
                        // if (value.length < _minDescriptionLength) {
                        //   return 'Mínimo $_minDescriptionLength caracteres requeridos';
                        // }
                        return null; // Keep null or remove if formKey not used
                      },
                      // onChanged handled by listener added in initState
                      // onChanged: (text) {
                      //   context.read<CreateOpenQuotationBloc>().add(
                      //     CreateOpenQuotationEvent.descriptionChanged(text)
                      //   );
                      // },
                    ),
                    const SizedBox(height: 28),

                    // Location/Travel Radius Section
                    _buildSectionHeader(
                        l10n.maxTravelDistanceKm, Icons.location_on_outlined),
                    const SizedBox(height: 12),
                    // Pass state value to distance selector
                    _buildDistanceSelector(l10n, state.selectedDistanceKm),
                    const SizedBox(height: 28),

                    // Stencil/Design Selection Section
                    _buildSectionHeader(l10n.optionalAttachDesign,
                        Icons.design_services_outlined),
                    const SizedBox(height: 12),
                    Text(
                      l10n.attachStencilOrGeneratedDesignHint,
                      style: TextStyleTheme.bodyText2
                          .copyWith(color: tertiaryColor),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: _buildSelectionButton(
                            icon: Icons.brush_outlined,
                            label: l10n.selectStencil,
                            // Use state values for selection status
                            isSelected: state.selectedStencilId != null,
                            isEnabled: state.selectedTattooDesign == null,
                            onPressed:
                                _selectStencil, // Keep simulation method or replace
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: _buildSelectionButton(
                            icon: Icons.auto_awesome_outlined,
                            label: l10n.selectGeneratedDesign,
                            // Use state values for selection status
                            isSelected: state.selectedTattooDesign != null,
                            isEnabled: state.selectedStencilId == null,
                            onPressed:
                                _selectTattooDesign, // Keep simulation method or replace
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Pass state values to display widget
                    _buildSelectionDisplay(
                        l10n,
                        state.selectedStencilId,
                        state.selectedTattooDesign,
                        state.selectedTattooDesignImageUrl),
                    const SizedBox(height: 28),

                    // Reference Images Section
                    _buildSectionHeader(l10n.addReferenceImagesOptional,
                        Icons.photo_library_outlined),
                    const SizedBox(height: 16),
                    // Pass state image list to upload section
                    _buildImageUploadSection(l10n, state.referenceImages),
                    const SizedBox(height: 32),

                    // Submit Button
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      child: ElevatedButton(
                        // Dispatch submit event
                        onPressed: (state.status !=
                                CreateOpenQuotationStatus.submissionInProgress)
                            ? () {
                                // Optional: Trigger local form validation first
                                // if (_formKey.currentState?.validate() ?? false) {
                                context.read<CreateOpenQuotationBloc>().add(
                                    const CreateOpenQuotationEvent
                                        .submitPressed());
                                // }
                              }
                            : null, // Disable button during submission
                        style: ElevatedButton.styleFrom(
                          backgroundColor: secondaryColor,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 56),
                          textStyle:
                              TextStyleTheme.button.copyWith(fontSize: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 2,
                        ),
                        child: (state.status ==
                                CreateOpenQuotationStatus.submissionInProgress)
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                    strokeWidth: 2, color: Colors.white))
                            : Text(l10n.submitOpenQuotation),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // --- Helper Widgets (Modified to accept state or dispatch events) ---

  Widget _buildSectionHeader(String title, IconData icon) {
    // No changes needed, purely presentational
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: secondaryColor, size: 18),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: TextStyleTheme.headline3.copyWith(
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(
      {required String hintText, IconData? prefixIcon, String? errorText}) {
    // Modified to accept errorText
    return InputDecoration(
      fillColor: inputBackgroundColor,
      filled: true,
      hintText: hintText,
      hintStyle: hintTextStyle,
      errorText: errorText, // Display error from BLoC state
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: secondaryColor, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        // Add error border style
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: redColor, width: 1.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        // Add focused error border style
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: redColor, width: 1.5),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      prefixIcon: prefixIcon != null
          ? Padding(
              padding: const EdgeInsets.only(left: 12, right: 8),
              child: Icon(prefixIcon, color: tertiaryColor, size: 20),
            )
          : null,
    );
  }

  Widget _buildSelectionButton({
    required IconData icon,
    required String label,
    required bool isSelected,
    required bool isEnabled,
    required VoidCallback onPressed,
  }) {
    // No changes needed, purely presentational, takes state values as args
    return ElevatedButton.icon(
      icon: Icon(icon, size: 18),
      label: Text(label),
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isSelected ? secondaryColor.withOpacity(0.2) : inputBackgroundColor,
        foregroundColor: isSelected ? secondaryColor : tertiaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: isSelected ? secondaryColor : Colors.transparent,
            width: 1.5,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
    );
  }

  Widget _buildSelectionDisplay(
      S l10n,
      String? selectedStencilId, // Accept state values
      UserTattooDesignDto? selectedTattooDesign,
      String? selectedTattooDesignImageUrl) {
    Widget? content;
    if (selectedStencilId != null) {
      content = ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: secondaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.brush_outlined, color: secondaryColor),
        ),
        title: Text(l10n.selectedStencil,
            style:
                TextStyleTheme.bodyText1.copyWith(fontWeight: FontWeight.w600)),
        subtitle: Text(
          'ID: $selectedStencilId', // Use state value
          style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline, color: redColor),
          onPressed: _clearSelection, // Use BLoC event
          tooltip: l10n.clearSelection,
        ),
      );
    } else if (selectedTattooDesign != null &&
        selectedTattooDesignImageUrl != null) {
      content = ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            selectedTattooDesignImageUrl, // Use state value
            width: 56,
            height: 56,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 56,
              height: 56,
              color: tertiaryColor.withOpacity(0.2),
              child: const Icon(Icons.broken_image, color: tertiaryColor),
            ),
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const SizedBox(
                  width: 56,
                  height: 56,
                  child: InkerProgressIndicator(radius: 10));
            },
          ),
        ),
        title: Text(l10n.selectedGeneratedDesign,
            style:
                TextStyleTheme.bodyText1.copyWith(fontWeight: FontWeight.w600)),
        subtitle: Text(
          selectedTattooDesign.userQuery, // Use state value
          style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline, color: redColor),
          onPressed: _clearSelection, // Use BLoC event
          tooltip: l10n.clearSelection,
        ),
      );
    }

    if (content != null) {
      return Card(
        color: explorerSecondaryColor,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.only(bottom: 8),
        child: content,
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildImageUploadSection(S l10n, List<XFile> referenceImages) {
    // Accept state images
    return Container(
      decoration: BoxDecoration(
        color: inputBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image upload button
          Center(
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add_photo_alternate_outlined),
              label: Text(referenceImages.isEmpty // Use state images
                  ? l10n.addReferenceImages
                  : 'Añadir más imágenes'),
              onPressed: _pickImages, // Uses BLoC event now
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor.withOpacity(0.2),
                foregroundColor: secondaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              ),
            ),
          ),

          // Image previews
          if (referenceImages.isNotEmpty) // Use state images
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Wrap(
                spacing: 12.0,
                runSpacing: 12.0,
                children: referenceImages.map((file) {
                  // Use state images
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(
                            File(file.path),
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: -8,
                        right: -8,
                        child: InkWell(
                          onTap: () {
                            // Dispatch remove event
                            context.read<CreateOpenQuotationBloc>().add(
                                CreateOpenQuotationEvent.imageRemoved(file));
                          },
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: redColor,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: const Icon(Icons.close,
                                size: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }

  // --- Selection Logic Methods (Dispatch events) ---

  Future<void> _selectStencil() async {
    // Keep placeholder navigation/simulation logic for now
    final selectedId = 'stencil_placeholder_id'; // Simulate selection
    if (!mounted) return;
    if (selectedId.isNotEmpty) {
      context
          .read<CreateOpenQuotationBloc>()
          .add(CreateOpenQuotationEvent.stencilSelected(selectedId));
    }
    ScaffoldMessenger.of(context).showSnackBar(customSnackBar(
        context: context, content: 'Stencil selection simulation complete.'));
  }

  Future<void> _selectTattooDesign() async {
    // Keep placeholder navigation/simulation logic for now
    final result = {
      'design': UserTattooDesignDto(
          id: 'design_abc',
          userQuery: 'Simulated Dragon Design',
          imageUrls: ['https://via.placeholder.com/150'],
          createdAt: DateTime.now(),
          isFavorite: false,
          style: 'blackwork'),
      'imageUrl': 'https://via.placeholder.com/150'
    };

    if (!mounted) return;
    if (result['design'] is UserTattooDesignDto &&
        result['imageUrl'] is String) {
      final design = result['design'] as UserTattooDesignDto;
      final imageUrl = result['imageUrl'] as String;
      context.read<CreateOpenQuotationBloc>().add(
          CreateOpenQuotationEvent.tattooDesignSelected(
              design: design, imageUrl: imageUrl));
    }
    ScaffoldMessenger.of(context).showSnackBar(customSnackBar(
        context: context,
        content: 'Tattoo Design selection simulation complete.'));
  }

  void _clearSelection() {
    context
        .read<CreateOpenQuotationBloc>()
        .add(const CreateOpenQuotationEvent.selectionCleared());
  }

  Widget _buildDistanceSelector(S l10n, int selectedDistanceKm) {
    // Accept state value
    const List<int> distanceOptions = [0, 5, 10, 15, 25, 50, 100];

    return Container(
      decoration: BoxDecoration(
        color: inputBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            selectedDistanceKm == 0 // Use state value
                ? 'Sin límite de distancia'
                : 'Distancia máxima: $selectedDistanceKm km', // Use state value
            style: TextStyleTheme.bodyText1.copyWith(
              color: quaternaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ...distanceOptions.map((distance) {
                final bool isSelected =
                    selectedDistanceKm == distance; // Use state value
                final String label =
                    distance == 0 ? 'Sin límite' : '$distance km';

                return ChoiceChip(
                  label: Text(label),
                  selected: isSelected,
                  onSelected: (selected) {
                    // Dispatch distance changed event
                    context.read<CreateOpenQuotationBloc>().add(
                        CreateOpenQuotationEvent.distanceChanged(distance));
                  },
                  backgroundColor: inputBackgroundColor,
                  selectedColor: secondaryColor.withOpacity(0.2),
                  labelStyle: TextStyle(
                    color: isSelected ? secondaryColor : tertiaryColor,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: isSelected ? secondaryColor : Colors.transparent,
                      width: 1.5,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _descriptionController
        .removeListener(_onDescriptionChanged); // Remove listener
    _descriptionController.dispose();
    super.dispose();
  }
}
