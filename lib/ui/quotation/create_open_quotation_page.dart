import 'dart:io'; // Import for File

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/features/auth_shared/bloc/auth/auth_bloc.dart' show AuthBloc;
import 'package:inker_studio/domain/blocs/gps/gps_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/create_open_quotation/create_open_quotation_bloc.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart'; // Still needed for provider
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_design_dto.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart'; // Corrected import path
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Import LatLng
import 'package:inker_studio/domain/models/quotation/quotation.dart'; // Importa Money
import 'package:inker_studio/domain/blocs/tattoo_generator/tattoo_generator_bloc.dart';
import 'package:inker_studio/ui/quotation/widgets/select_generated_design_bottomsheet.dart';
import 'package:inker_studio/ui/tattoo_generator/tattoo_generator_page.dart';
import 'package:inker_studio/ui/quotation/widgets/estimated_cost_field.dart';
import 'package:inker_studio/ui/shared/navigation/reactive_navigation.dart';

// Wrapper Widget to Provide the BLoC
class CreateOpenQuotationProvider extends StatelessWidget {
  final UserTattooDesignDto? initialTattooDesign;
  final String? initialTattooDesignImageUrl;
  const CreateOpenQuotationProvider(
      {super.key, this.initialTattooDesign, this.initialTattooDesignImageUrl});

  @override
  Widget build(BuildContext context) {
    final bloc = CreateOpenQuotationBloc(
      quotationService: context.read<QuotationService>(),
      authBloc: context.read<AuthBloc>(),
      mapBloc: context.read<MapBloc>(),
      gpsBloc: context.read<GpsBloc>(),
    );
    if (initialTattooDesign != null && initialTattooDesignImageUrl != null) {
      bloc.add(
        CreateOpenQuotationEvent.tattooDesignSelected(
          design: initialTattooDesign!,
          imageUrl: initialTattooDesignImageUrl!,
        ),
      );
    }
    return BlocProvider(
      create: (context) => bloc,
      child: CreateOpenQuotationPage(
        initialTattooDesign: initialTattooDesign,
        initialTattooDesignImageUrl: initialTattooDesignImageUrl,
      ),
    );
  }
}

// Main Page Widget - Now potentially StatefulWidget only for controllers
class CreateOpenQuotationPage extends StatefulWidget {
  final UserTattooDesignDto? initialTattooDesign;
  final String? initialTattooDesignImageUrl;
  const CreateOpenQuotationPage(
      {super.key, this.initialTattooDesign, this.initialTattooDesignImageUrl});

  @override
  State<CreateOpenQuotationPage> createState() =>
      _CreateOpenQuotationPageState();
}

class _CreateOpenQuotationPageState extends State<CreateOpenQuotationPage> {
  final _formKey = GlobalKey<FormState>();
  final _descriptionController = TextEditingController();
  final _referenceBudgetController = TextEditingController();
  final _maxDescriptionLength = 1500; // Keep constants if used only in UI
  final _minDescriptionLength = 10;
  final FocusNode _referenceBudgetFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Add listener to controller to dispatch event
    _descriptionController.addListener(_onDescriptionChanged);
    _referenceBudgetController.addListener(_onReferenceBudgetChanged);
    // Trigger initial location check via BLoC
    _checkAndRequestLocation();

    // Si viene con diseño inicial, setear descripción si está vacía
    if (widget.initialTattooDesign != null &&
        _descriptionController.text.isEmpty) {
      _descriptionController.text = widget.initialTattooDesign!.userQuery;
    }
    // Set initial value for reference budget if present
    // (Assume state is not available here, will be set in build)
  }

  void _onDescriptionChanged() {
    context.read<CreateOpenQuotationBloc>().add(
        CreateOpenQuotationEvent.descriptionChanged(
            _descriptionController.text));
  }

  void _onReferenceBudgetChanged() {
    final raw = _referenceBudgetController.text.replaceAll('.', '');
    final parsed = double.tryParse(raw);
    context.read<CreateOpenQuotationBloc>().add(
          CreateOpenQuotationEvent.referenceBudgetChanged(
            parsed != null ? Money.fromFloat(parsed, 'CLP', 0) : null,
          ),
        );
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
          content: l10n.pleaseEnableGps, // Mensaje más específico
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
    } else if (currentLocation == null) {
      // Informar que la ubicación aún no está disponible (puede estar cargando)
      ScaffoldMessenger.of(context).showSnackBar(
        customSnackBar(
          context: context,
          content: l10n.couldNotGetLocation, // O "Obteniendo ubicación..."
          backgroundColor:
              Colors.blueGrey, // Color neutro
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
              backgroundColor: Theme.of(context).colorScheme.error,
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
              backgroundColor: Theme.of(context).colorScheme.secondary,
            ),
          );
        }

        if (state.status == CreateOpenQuotationStatus.submissionSuccess) {
          context
              .read<CreateOpenQuotationBloc>()
              .add(const CreateOpenQuotationEvent.clearSuccessMessage());
          // The event bus will handle refreshing the quotation list
          Navigator.of(context).pop();
        }

        // Set reference budget controller if state changes
        final refBudget = state.referenceBudget;
        final formatted =
            refBudget != null ? refBudget.formatWithoutSymbol() : '';
        if (_referenceBudgetController.text.replaceAll('.', '') !=
            refBudget?.amount.toString()) {
          _referenceBudgetController.text = formatted;
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: Text(
            l10n.createOpenQuotation,
            style: TextStyleTheme.headline2,
            overflow: TextOverflow.ellipsis,
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
        ),
        resizeToAvoidBottomInset: true,
        // Use BlocBuilder to react to state changes for the main body
        body: BlocBuilder<CreateOpenQuotationBloc, CreateOpenQuotationState>(
          builder: (context, state) {
            // Show loading indicator based on BLoC state
            if (state.status ==
                    CreateOpenQuotationStatus.submissionInProgress ||
                state.status == CreateOpenQuotationStatus.loading) {
              // Added general loading check
              return Center(
                  child: InkerProgressIndicator(
                      color: Theme.of(context).colorScheme.secondary,
                      radius: 15));
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
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _descriptionController, // Keep controller
                      style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
                      minLines: 3,
                      maxLines: 5,
                      maxLength: _maxDescriptionLength,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
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
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        );
                      },
                      decoration: _inputDecoration(
                        hintText:
                            '${l10n.describeYourTattooIdea} (Min. $_minDescriptionLength ${l10n.characters})',
                        prefixIcon: Icons.edit_note,
                        // Show error text from BLoC state if description is invalid
                        errorText: !state.isDescriptionValid &&
                                state.description
                                    .isNotEmpty // Show only if invalid and not empty
                            ? l10n.minDescriptionLengthRequired(
                                _minDescriptionLength)
                            : null,
                      ),
                      // Basic validator can remain, but BLoC handles submission logic
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return l10n.pleaseEnterDescription;
                        }
                        return null; // Keep null or remove if formKey not used
                      },
                    ),
                    const SizedBox(height: 28),

                    // Location/Travel Radius Section
                    _buildSectionHeader(
                        l10n.maxTravelDistanceKm, Icons.location_on_outlined),
                    const SizedBox(height: 16),
                    // Pass state value to distance selector
                    _buildDistanceSelector(l10n, state.selectedDistanceKm),
                    const SizedBox(height: 28),

                    // Stencil/Design Selection Section
                    _buildSectionHeader(l10n.optionalAttachDesign,
                        Icons.design_services_outlined),
                    const SizedBox(height: 12),
                    Text(
                      l10n.attachStencilOrGeneratedDesignHint,
                      style: TextStyleTheme.bodyText2.copyWith(
                          color: Colors.white70),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 16),
                    // Solo mostrar las dos opciones: elegir diseño generado o generar nuevo diseño
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Botón: Elegir diseño generado
                        Container(
                          margin: const EdgeInsets.only(bottom: 18),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(16),
                            onTap: () async {
                              final result = await showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                builder: (_) => BlocProvider.value(
                                  value: context.read<TattooGeneratorBloc>(),
                                  child:
                                      const SelectGeneratedDesignBottomSheet(),
                                ),
                              );
                              if (result != null && result['design'] != null) {
                                final design = result['design'];
                                final imageUrl = result['imageUrl'];
                                context.read<CreateOpenQuotationBloc>().add(
                                      CreateOpenQuotationEvent
                                          .tattooDesignSelected(
                                        design: design,
                                        imageUrl: imageUrl,
                                      ),
                                    );
                                if (_descriptionController.text
                                        .trim()
                                        .isEmpty &&
                                    design.userQuery != null) {
                                  _descriptionController.text =
                                      design.userQuery;
                                }
                              }
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Theme.of(context).colorScheme.error,
                                    Theme.of(context).colorScheme.secondary
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .error
                                        .withOpacity(0.12),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 22, horizontal: 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.collections_bookmark_outlined,
                                      color: Colors.white, size: 32),
                                  const SizedBox(width: 16),
                                  Text(
                                    l10n.chooseGeneratedDesign,
                                    style: TextStyleTheme.headline3.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Botón: Generar nuevo diseño
                        InkWell(
                          borderRadius: BorderRadius.circular(16),
                          onTap: _goToTattooGenerator,
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Theme.of(context).colorScheme.secondary,
                                  Theme.of(context).colorScheme.error
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.12),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 22, horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.auto_awesome_outlined,
                                    color: Colors.white, size: 32),
                                const SizedBox(width: 16),
                                Text(
                                  l10n.generateNewDesign,
                                  style: TextStyleTheme.headline3.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Pass state values to display widget
                    _buildSelectionDisplay(
                        l10n,
                        null, // stencilId siempre null
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

                    // Presupuesto Section
                    _buildSectionHeader(
                        l10n.estimatedBudgetOptional, Icons.attach_money),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: _referenceBudgetController,
                      focusNode: _referenceBudgetFocusNode,
                      style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        ChileanPesoInputFormatter(),
                        // TODO: Add support for other currencies
                      ],
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                      decoration: _inputDecoration(
                        hintText: l10n.referenceBudgetHint,
                        prefixIcon: Icons.attach_money,
                      ),
                      // No validator for optional field
                    ),
                    const SizedBox(height: 28),

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
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.secondary, size: 22),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: TextStyleTheme.headline3.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  InputDecoration _inputDecoration(
      {required String hintText, IconData? prefixIcon, String? errorText}) {
    // Modified to accept errorText
    return InputDecoration(
      fillColor: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
      filled: true,
      hintText: hintText,
      hintStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.white60),
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
        borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        // Add error border style
        borderRadius: BorderRadius.circular(12),
        borderSide:
            BorderSide(color: Theme.of(context).colorScheme.error, width: 1.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        // Add focused error border style
        borderRadius: BorderRadius.circular(12),
        borderSide:
            BorderSide(color: Theme.of(context).colorScheme.error, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      prefixIcon: prefixIcon != null
          ? Padding(
              padding: const EdgeInsets.only(left: 12, right: 8),
              child: Icon(prefixIcon,
                  color: Colors.white70, size: 20),
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
        backgroundColor: isSelected
            ? Theme.of(context).colorScheme.secondary.withOpacity(0.2)
            : Theme.of(context).colorScheme.surfaceVariant,
        foregroundColor: isSelected
            ? Theme.of(context).colorScheme.secondary
            : Colors.white70,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: isSelected
                ? Theme.of(context).colorScheme.secondary
                : Colors.transparent,
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
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.brush_outlined,
              color: Theme.of(context).colorScheme.secondary),
        ),
        title: Text(l10n.selectedStencil,
            style:
                TextStyleTheme.bodyText1.copyWith(fontWeight: FontWeight.w600)),
        subtitle: Text(
          '${l10n.id}: $selectedStencilId', // Use state value
          style: TextStyleTheme.caption
              .copyWith(color: Colors.white70),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete_outline,
              color: Theme.of(context).colorScheme.error),
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
              color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
              child: Icon(Icons.broken_image,
                  color: Colors.white70),
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
          style: TextStyleTheme.caption
              .copyWith(color: Colors.white70),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete_outline,
              color: Theme.of(context).colorScheme.error),
          onPressed: _clearSelection, // Use BLoC event
          tooltip: l10n.clearSelection,
        ),
      );
    }

    if (content != null) {
      return Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                width: 1)),
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
        color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
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
                  : l10n.addMoreImages),
              onPressed: _pickImages, // Uses BLoC event now
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                foregroundColor: Theme.of(context).colorScheme.secondary,
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
                          child: kIsWeb
                            ? Image.network(
                                file.path,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: 80,
                                    height: 80,
                                    color: Colors.grey[800],
                                    child: const Icon(Icons.broken_image, color: Colors.white),
                                  );
                                },
                              )
                            : Image.file(
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
                              color: Theme.of(context).colorScheme.error,
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

  void _clearSelection() {
    context
        .read<CreateOpenQuotationBloc>()
        .add(const CreateOpenQuotationEvent.selectionCleared());
  }

  Widget _buildDistanceSelector(S l10n, int selectedDistanceKm) {
    const List<int> distanceOptions = [0, 5, 10, 15, 25, 50, 100];
    // Find the index of the current selection to set the slider's initial value
    final int selectedIndex = distanceOptions.indexOf(selectedDistanceKm);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              selectedDistanceKm == 0
                  ? l10n.noDistanceLimit
                  : l10n.maxDistance(selectedDistanceKm),
              style: TextStyleTheme.bodyText1.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Slider.adaptive(
            value: selectedIndex.toDouble(),
            min: 0,
            max: (distanceOptions.length - 1).toDouble(),
            divisions: distanceOptions.length - 1,
            activeColor: Theme.of(context).colorScheme.secondary,
            inactiveColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            label: selectedDistanceKm == 0
                ? l10n.noDistanceLimit
                : '$selectedDistanceKm km',
            onChanged: (value) {
              final newDistance = distanceOptions[value.round()];
              context
                  .read<CreateOpenQuotationBloc>()
                  .add(CreateOpenQuotationEvent.distanceChanged(newDistance));
            },
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
    _referenceBudgetController.dispose();
    _referenceBudgetFocusNode.dispose();
    super.dispose();
  }

  // Agregar método para navegar al generador y recibir el resultado
  Future<void> _goToTattooGenerator() async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: context.read<TattooGeneratorBloc>(),
          child: const TattooGeneratorPage(
            selectForQuotation: true,
          ),
        ),
      ),
    );
    if (result != null && result is Map) {
      final design = result['design'];
      final imageUrl = result['imageUrl'];
      context.read<CreateOpenQuotationBloc>().add(
            CreateOpenQuotationEvent.tattooDesignSelected(
              design: design,
              imageUrl: imageUrl,
            ),
          );
      if (_descriptionController.text.trim().isEmpty &&
          design.userQuery != null) {
        _descriptionController.text = design.userQuery;
      }
    }
  }
}
