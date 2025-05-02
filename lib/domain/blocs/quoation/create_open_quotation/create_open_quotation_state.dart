part of 'create_open_quotation_bloc.dart';

// Enum for distinct statuses
enum CreateOpenQuotationStatus {
  initial,
  loading, // General loading state if needed
  locationCheckInProgress,
  locationRequired, // GPS disabled or permission denied
  locationError, // Failed to get location
  ready, // Form is ready to be filled
  validationError, // Specific validation errors (e.g., description too short)
  submissionInProgress,
  submissionSuccess,
  submissionFailure
}

@freezed
class CreateOpenQuotationState with _$CreateOpenQuotationState {
  const factory CreateOpenQuotationState({
    @Default(CreateOpenQuotationStatus.initial)
        CreateOpenQuotationStatus status,
    @Default('') String description,
    @Default([]) List<XFile> referenceImages,
    @Default(0) int selectedDistanceKm, // 0 for no limit
    String? selectedStencilId,
    UserTattooDesignDto? selectedTattooDesign,
    String? selectedTattooDesignImageUrl,
    @Default(false) bool isDescriptionValid,
    @Default(false) bool isLocationAvailable,
    LatLng? currentLocation,
    String? errorMessage,
    String? successMessage,
    String? createdQuotationId, // ID of the created quotation on success
  }) = _CreateOpenQuotationState;

  // // Helper getter to determine if submission is allowed
  // // Can be refined based on exact requirements (e.g., location needed)
  // bool get canSubmit =>
  //     isDescriptionValid &&
  //     isLocationAvailable &&
  //     (selectedStencilId == null || selectedTattooDesign == null) && // Cannot select both
  //     status != CreateOpenQuotationStatus.submissionInProgress;
} 