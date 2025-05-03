part of 'quotation_list_bloc.dart';

@freezed
abstract class QuotationListState with _$QuotationListState {
  const factory QuotationListState.initial() = _Initial;
  const factory QuotationListState.loading() = _Loading;
  const factory QuotationListState.loaded({
    required List<Quotation> quotations,
    required Session session,
    List<String>? statuses,
    required bool isLoadingMore,
    String? cancellingQuotationId,
    required int currentPage,
    required int totalItems,
  }) = QuotationListLoaded;
  const factory QuotationListState.cancelSuccess() = QuotationListCancelSuccess;
  const factory QuotationListState.error(String message) = QuotationListError;
}
