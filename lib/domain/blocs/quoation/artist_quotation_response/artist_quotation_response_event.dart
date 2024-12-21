part of 'artist_quotation_response_bloc.dart';

@freezed
class ArtistQuotationResponseEvent with _$ArtistQuotationResponseEvent {
  const factory ArtistQuotationResponseEvent.loadQuotation(String quotationId) =
      _LoadQuotation;
  const factory ArtistQuotationResponseEvent.submit({
    required String quotationId,
    required ArtistQuotationAction action,
    double? estimatedCost,
    DateTime? appointmentDate,
    int? appointmentDuration,
    String? additionalDetails,
    QuotationArtistRejectReason? rejectionReason,
    List<XFile>? proposedDesigns,
  }) = _Submit;
}
