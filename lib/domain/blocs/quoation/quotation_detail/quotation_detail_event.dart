part of 'quotation_detail_bloc.dart';

@freezed
class QuotationDetailEvent with _$QuotationDetailEvent {
  const factory QuotationDetailEvent.fetchQuotationById(String quotationId) = _FetchQuotationById;
  const factory QuotationDetailEvent.refresh(String quotationId) = _Refresh;
  const factory QuotationDetailEvent.markAsRead(String quotationId) = _MarkAsRead;
  const factory QuotationDetailEvent.acceptOffer({
    required String quotationId,
    required String offerId,
  }) = _AcceptOffer;
  const factory QuotationDetailEvent.cancelQuotation(String quotationId) = _CancelQuotation;
} 