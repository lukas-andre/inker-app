part of 'create_open_quotation_bloc.dart';

@freezed
class CreateOpenQuotationEvent with _$CreateOpenQuotationEvent {
  const factory CreateOpenQuotationEvent.started() = _Started;
  const factory CreateOpenQuotationEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory CreateOpenQuotationEvent.distanceChanged(int distanceKm) =
      _DistanceChanged;
  const factory CreateOpenQuotationEvent.stencilSelected(String stencilId) =
      _StencilSelected;
  const factory CreateOpenQuotationEvent.tattooDesignSelected({
    required UserTattooDesignDto design,
    required String imageUrl,
  }) = _TattooDesignSelected;
  const factory CreateOpenQuotationEvent.selectionCleared() = _SelectionCleared;
  const factory CreateOpenQuotationEvent.imagesAdded(List<XFile> images) =
      _ImagesAdded;
  const factory CreateOpenQuotationEvent.imageRemoved(XFile image) =
      _ImageRemoved;
  const factory CreateOpenQuotationEvent.locationStatusChecked({
    required bool isGpsEnabled,
    required bool isPermissionGranted,
    required LatLng? location,
  }) = _LocationStatusChecked;
  const factory CreateOpenQuotationEvent.submitPressed() = _SubmitPressed;

  // New events to clear messages
  const factory CreateOpenQuotationEvent.clearSuccessMessage() = _ClearSuccessMessage;
  const factory CreateOpenQuotationEvent.clearErrorMessage() = _ClearErrorMessage;

  // Nuevos eventos para presupuesto
  const factory CreateOpenQuotationEvent.minBudgetChanged(Money? minBudget) = _MinBudgetChanged;
  const factory CreateOpenQuotationEvent.maxBudgetChanged(Money? maxBudget) = _MaxBudgetChanged;
  const factory CreateOpenQuotationEvent.referenceBudgetChanged(Money? referenceBudget) = _ReferenceBudgetChanged;
} 