part of 'artist_quotation_response_bloc.dart';

@freezed
class ArtistQuotationResponseEvent with _$ArtistQuotationResponseEvent {
  const factory ArtistQuotationResponseEvent.loadQuotation(String quotationId) =
      _LoadQuotation;
  const factory ArtistQuotationResponseEvent.submit({
    required String quotationId,
    required ArtistQuotationAction action,
    Money? estimatedCost,
    DateTime? appointmentDate,
    int? appointmentDuration,
    String? additionalDetails,
    QuotationArtistRejectReason? rejectionReason,
    List<XFile>? proposedDesigns,
  }) = _Submit;

  // New event for submitting an offer to an OPEN quotation
  const factory ArtistQuotationResponseEvent.submitOffer({
    required String quotationId,
    double? estimatedCost,
    DateTime? appointmentDate,
    int? appointmentDuration,
    String? additionalDetails,
    List<XFile>? proposedDesigns,
  }) = _SubmitOffer;
}
