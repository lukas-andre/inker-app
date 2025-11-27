part of 'open_quotation_list_bloc.dart';

@freezed
abstract class OpenQuotationListEvent with _$OpenQuotationListEvent {
  const factory OpenQuotationListEvent.started() = _Started;
  const factory OpenQuotationListEvent.loadOpenQuotations({required bool isNextPage}) = _LoadOpenQuotations;
  const factory OpenQuotationListEvent.refreshOpenQuotations() = _RefreshOpenQuotations;
  const factory OpenQuotationListEvent.getQuotationById(String quotationId) = _GetQuotationById;
  // Add other events if needed later, e.g., for marking as read or getting details
} 