import 'dart:async'; // Import dart:async

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_design_dto.dart';
import 'package:inker_studio/features/auth_shared/bloc/auth/auth_bloc.dart' show AuthBloc;
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart'; // Import MapBloc
import 'package:inker_studio/domain/blocs/gps/gps_bloc.dart'; // Import GpsBloc
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/event_bus/app_event_bus.dart';
import 'package:inker_studio/domain/blocs/mixins/event_bus_mixin.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

part 'create_open_quotation_event.dart';
part 'create_open_quotation_state.dart';
part 'create_open_quotation_bloc.freezed.dart';

class CreateOpenQuotationBloc
    extends Bloc<CreateOpenQuotationEvent, CreateOpenQuotationState>
    with EventBusMixin<CreateOpenQuotationEvent, CreateOpenQuotationState> {
  final QuotationService _quotationService;
  final AuthBloc _authBloc; // Inject AuthBloc to get user info and token
  final MapBloc _mapBloc; // Inject MapBloc
  final GpsBloc _gpsBloc; // Inject GpsBloc

  StreamSubscription<MapState>? _mapSubscription; // Subscription for MapBloc
  StreamSubscription<GpsState>? _gpsSubscription; // Subscription for GpsBloc

  static const int _maxReferenceImages = 5; // Consistent with other bloc
  static const int _minDescriptionLength = 10; // From UI validation

  CreateOpenQuotationBloc({
    required QuotationService quotationService,
    required AuthBloc authBloc,
    required MapBloc mapBloc, // Require MapBloc
    required GpsBloc gpsBloc, // Require GpsBloc
  })
      : _quotationService = quotationService,
        _authBloc = authBloc,
        _mapBloc = mapBloc, // Store MapBloc instance
        _gpsBloc = gpsBloc, // Store GpsBloc instance
        // Initialize state immediately based on current states
        super(CreateOpenQuotationState(
          isLocationAvailable: gpsBloc.state.isGpsEnabled && 
                               gpsBloc.state.isGpsPermissionGranted && 
                               mapBloc.state.currentLocation != null,
          currentLocation: mapBloc.state.currentLocation,
          // Set initial status/error based on location
          status: !(gpsBloc.state.isGpsEnabled && gpsBloc.state.isGpsPermissionGranted)
              ? CreateOpenQuotationStatus.locationRequired
              : mapBloc.state.currentLocation == null
                  ? CreateOpenQuotationStatus.locationError
                  : CreateOpenQuotationStatus.ready,
          errorMessage: !(gpsBloc.state.isGpsEnabled && gpsBloc.state.isGpsPermissionGranted)
              ? 'Por favor, habilita los servicios de ubicación y permisos.'
              : mapBloc.state.currentLocation == null
                  ? 'Obteniendo ubicación...'
                  : null,
          // Initialize other fields to default
          description: '',
          isDescriptionValid: false,
          selectedDistanceKm: 0,
          referenceImages: [],
        )) {

    // Register event handlers
    on<_Started>(_onStarted);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_DistanceChanged>(_onDistanceChanged);
    on<_StencilSelected>(_onStencilSelected);
    on<_TattooDesignSelected>(_onTattooDesignSelected);
    on<_SelectionCleared>(_onSelectionCleared);
    on<_ImagesAdded>(_onImagesAdded);
    on<_ImageRemoved>(_onImageRemoved);
    on<_LocationStatusChecked>(_onLocationStatusChecked); // Keep for potential UI trigger
    on<_SubmitPressed>(_onSubmitPressed);
    on<_ClearSuccessMessage>(_onClearSuccessMessage);
    on<_ClearErrorMessage>(_onClearErrorMessage);
    on<_MinBudgetChanged>(_onMinBudgetChanged);
    on<_MaxBudgetChanged>(_onMaxBudgetChanged);
    on<_ReferenceBudgetChanged>(_onReferenceBudgetChanged);

    // Start listening to streams
    _listenToStreams();
  }

  void _listenToStreams() {
    _mapSubscription?.cancel(); // Cancel previous if any
    _mapSubscription = _mapBloc.stream.listen((mapState) {
      // Update state directly when MapBloc changes
      _updateLocationState(_gpsBloc.state, mapState.currentLocation);
    });

    _gpsSubscription?.cancel(); // Cancel previous if any
    _gpsSubscription = _gpsBloc.stream.listen((gpsState) {
       // Update state directly when GpsBloc changes
      _updateLocationState(gpsState, _mapBloc.state.currentLocation);
    });
  }

  // Centralized logic to update location-related state
  // Now emits directly if the state changes
  void _updateLocationState(GpsState gpsState, LatLng? currentLocation) {
    final bool isGpsOk = gpsState.isGpsEnabled && gpsState.isGpsPermissionGranted;
    final bool isLocationReady = isGpsOk && currentLocation != null;
    String? errorMessage;
    CreateOpenQuotationStatus status = state.status; // Keep current status unless changed by location

    if (!isGpsOk) {
      errorMessage = 'Por favor, habilita los servicios de ubicación y permisos.';
      status = CreateOpenQuotationStatus.locationRequired;
    } else if (currentLocation == null) {
       errorMessage = 'Obteniendo ubicación...';
       // Keep status as ready/loading unless it was already an error
       if (status != CreateOpenQuotationStatus.submissionInProgress && status != CreateOpenQuotationStatus.submissionSuccess) {
         status = CreateOpenQuotationStatus.locationError; // Indicate locating/error state
       }
    } else {
       // Location is available, clear location-specific errors/status
       errorMessage = null;
       // Only change status back to ready if it was a location-related error/required status
       if (status == CreateOpenQuotationStatus.locationRequired || status == CreateOpenQuotationStatus.locationError) {
           status = CreateOpenQuotationStatus.ready;
       }
    }

    final newState = state.copyWith(
      isLocationAvailable: isLocationReady,
      currentLocation: currentLocation,
      errorMessage: errorMessage ?? (status == CreateOpenQuotationStatus.ready ? null : state.errorMessage),
      status: status,
    );

    // Emit directly if the relevant state has changed
    if (state.isLocationAvailable != newState.isLocationAvailable ||
        state.currentLocation != newState.currentLocation ||
        state.errorMessage != newState.errorMessage ||
        state.status != newState.status) {
      if (!isClosed) emit(newState);
    }
  }

  @override
  Future<void> close() {
    _mapSubscription?.cancel();
    _gpsSubscription?.cancel();
    return super.close(); // This will also handle event bus cleanup from mixin
  }

  void _onStarted(_Started event, Emitter<CreateOpenQuotationState> emit) {
      // State is initialized in constructor. This could potentially re-emit if needed.
      // emit(state); 
  }

  void _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter<CreateOpenQuotationState> emit,
  ) {
    final isValid = event.description.length >= _minDescriptionLength;
    // Use the emit from _updateLocationState if possible, otherwise be careful
    // For simplicity, just emit the change here, _updateLocationState handles location separately
    emit(state.copyWith(
      description: event.description,
      isDescriptionValid: isValid,
    ));
  }

  void _onDistanceChanged(
    _DistanceChanged event,
    Emitter<CreateOpenQuotationState> emit,
  ) {
    emit(state.copyWith(selectedDistanceKm: event.distanceKm));
  }

  void _onStencilSelected(
    _StencilSelected event,
    Emitter<CreateOpenQuotationState> emit,
  ) {
    emit(state.copyWith(
      selectedStencilId: event.stencilId,
      selectedTattooDesign: null,
      selectedTattooDesignImageUrl: null,
    ));
  }

  void _onTattooDesignSelected(
    _TattooDesignSelected event,
    Emitter<CreateOpenQuotationState> emit,
  ) {
    emit(state.copyWith(
      selectedStencilId: null,
      selectedTattooDesign: event.design,
      selectedTattooDesignImageUrl: event.imageUrl,
    ));
  }

  void _onSelectionCleared(
    _SelectionCleared event,
    Emitter<CreateOpenQuotationState> emit,
  ) {
    emit(state.copyWith(
      selectedStencilId: null,
      selectedTattooDesign: null,
      selectedTattooDesignImageUrl: null,
    ));
  }

  void _onImagesAdded(
    _ImagesAdded event,
    Emitter<CreateOpenQuotationState> emit,
  ) {
    final currentImages = state.referenceImages;
    final remainingSlots = _maxReferenceImages - currentImages.length;
    if (remainingSlots <= 0) return; // No space left

    final imagesToAdd = event.images.take(remainingSlots).toList();
    final updatedImages = List<XFile>.from(currentImages)..addAll(imagesToAdd);

    String? message;
    if (event.images.length > remainingSlots) {
      message = 'Se han añadido $remainingSlots imágenes. Límite máximo alcanzado.';
    } else if (imagesToAdd.isNotEmpty) {
      message = 'Se han añadido ${imagesToAdd.length} imágenes.';
    }

    emit(state.copyWith(
      referenceImages: updatedImages,
      successMessage: message, // Using success message for image feedback
    ));
    // Clear message after a short duration or let UI handle it
    // emit(state.copyWith(successMessage: null));
  }

  void _onImageRemoved(
    _ImageRemoved event,
    Emitter<CreateOpenQuotationState> emit,
  ) {
    final updatedImages = List<XFile>.from(state.referenceImages)
      ..removeWhere((img) => img.path == event.image.path);
    emit(state.copyWith(
      referenceImages: updatedImages,
      successMessage: 'Imagen eliminada.', // Feedback message
    ));
    // emit(state.copyWith(successMessage: null));
  }

  void _onLocationStatusChecked(
    _LocationStatusChecked event,
    Emitter<CreateOpenQuotationState> emit,
  ) {
    // Call the update logic directly, it will handle emitting
    _updateLocationState( 
        GpsState(isGpsEnabled: event.isGpsEnabled, isGpsPermissionGranted: event.isPermissionGranted), 
        event.location 
    );
  }

  void _onClearSuccessMessage(
    _ClearSuccessMessage event,
    Emitter<CreateOpenQuotationState> emit,
  ) {
    emit(state.copyWith(successMessage: null, status: CreateOpenQuotationStatus.initial));
  }

  void _onClearErrorMessage(
    _ClearErrorMessage event,
    Emitter<CreateOpenQuotationState> emit,
  ) {
    // Only clear non-location-related errors
    final isLocationIssue = state.status == CreateOpenQuotationStatus.locationRequired || 
                            state.status == CreateOpenQuotationStatus.locationError;
    if (!isLocationIssue) {
       final newStatus = (state.status == CreateOpenQuotationStatus.submissionFailure || 
                         state.status == CreateOpenQuotationStatus.validationError)
                         ? CreateOpenQuotationStatus.ready
                         : state.status;
       emit(state.copyWith(errorMessage: null, status: newStatus));
    } else {
      // If it's a location issue, don't clear the message handled by _updateLocationState
      // emit(state); // Optionally re-emit same state if needed
    }
  }

  void _onMinBudgetChanged(_MinBudgetChanged event, Emitter<CreateOpenQuotationState> emit) {
    emit(state.copyWith(minBudget: event.minBudget));
  }

  void _onMaxBudgetChanged(_MaxBudgetChanged event, Emitter<CreateOpenQuotationState> emit) {
    emit(state.copyWith(maxBudget: event.maxBudget));
  }

  void _onReferenceBudgetChanged(_ReferenceBudgetChanged event, Emitter<CreateOpenQuotationState> emit) {
    emit(state.copyWith(referenceBudget: event.referenceBudget));
  }

  Future<void> _onSubmitPressed(
    _SubmitPressed event,
    Emitter<CreateOpenQuotationState> emit,
  ) async {
    // 1. Validation Checks
    if (!state.isDescriptionValid) {
      emit(state.copyWith(
        status: CreateOpenQuotationStatus.validationError,
        errorMessage: 'Mínimo $_minDescriptionLength caracteres requeridos.',
      ));
      return;
    }
    
    // Location validation now relies purely on the reactive state
    if (!state.isLocationAvailable || state.currentLocation == null) {
       // The state should already reflect the error/status correctly.
       // Just return to prevent submission.
       return;
    }
    
    // Stencil/Design validation remains the same
    if (state.selectedStencilId != null && state.selectedTattooDesign != null) {
       emit(state.copyWith(
        status: CreateOpenQuotationStatus.validationError,
        errorMessage: 'No puedes seleccionar un esténcil y un diseño generado a la vez.',
      ));
      return;
    }

    // 2. Authentication Check
    final session = _authBloc.state.session;
    if (session.user == null) {
       emit(state.copyWith(
        status: CreateOpenQuotationStatus.submissionFailure,
        errorMessage: 'Debes iniciar sesión para crear una solicitud.',
      ));
      return;
    }

    // 3. Proceed with Submission
    emit(state.copyWith(
      status: CreateOpenQuotationStatus.submissionInProgress,
      errorMessage: null,
      successMessage: null,
    ));

    try {
      final quotation = Quotation(
        // Backend generates ID, createdAt, updatedAt
        id: '', 
        createdAt: DateTime.now(), // Placeholder
        updatedAt: DateTime.now(), // Placeholder
        customerId: session.user!.id,
        description: state.description,
        type: QuotationType.OPEN,
        status: QuotationStatus.pending,
        customerLat: state.currentLocation!.latitude,
        customerLon: state.currentLocation!.longitude,
        customerTravelRadiusKm: state.selectedDistanceKm > 0 ? state.selectedDistanceKm : null,
        stencilId: state.selectedStencilId,
        tattooDesignCacheId: state.selectedTattooDesign?.id,
        tattooDesignImageUrl: state.selectedTattooDesignImageUrl,
        referenceBudget: state.referenceBudget,
      );

      final result = await _quotationService.createQuotation(
        quotation,
        state.referenceImages,
        session.accessToken,
      );

      // Fire event to notify other parts of the app
      fireEvent(QuotationCreatedEvent(
        quotationId: result['id'].toString(),
        artistId: null, // Open quotations don't have a specific artist
        customerId: session.user!.id,
        isOpenQuotation: true,
      ));

      emit(state.copyWith(
        status: CreateOpenQuotationStatus.submissionSuccess,
        successMessage: result['message'] ?? 'Solicitud abierta creada con éxito.',
        createdQuotationId: result['id'],
      ));
    } catch (e, stackTrace) {
      dev.log('Error creating open quotation: $e\n$stackTrace', 'CreateOpenQuotationBloc'); 
      emit(state.copyWith(
        status: CreateOpenQuotationStatus.submissionFailure,
        errorMessage: 'Error al crear la solicitud: ${e.toString()}',
      ));
    }
  }
} 