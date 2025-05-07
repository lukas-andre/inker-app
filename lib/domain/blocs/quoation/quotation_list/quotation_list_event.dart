part of 'quotation_list_bloc.dart';

@freezed
class QuotationListEvent with _$QuotationListEvent {
  const factory QuotationListEvent.started() = _Started;
  const factory QuotationListEvent.loadQuotations(
          List<String>? statuses, bool isNextPage, QuotationType? type) =
      _LoadQuotations;
  const factory QuotationListEvent.cancelQuotation(String quotationId) =
      _CancelQuotation;
  const factory QuotationListEvent.refreshCurrentTab() = _RefreshCurrentTab;
  const factory QuotationListEvent.markAsRead(String quotationId) = _MarkAsRead;
  const factory QuotationListEvent.getQuotationById(String quotationId) =
      _GetQuotationById;
  const factory QuotationListEvent.updateOpenQuotation({
    required String quotationId,
    String? description,
    Money? minBudget,
    Money? maxBudget,
    Money? referenceBudget,
    String? generatedImageId,
  }) = _UpdateOpenQuotation;
  const factory QuotationListEvent.acceptOffer({
    required String quotationId,
    required String offerId,
  }) = _AcceptOffer;
}
