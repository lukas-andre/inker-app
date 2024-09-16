part of 'quotation_list_bloc.dart';

@freezed
class QuotationListState with _$QuotationListState {
  const factory QuotationListState.initial() = QuotationListInitial;
  const factory QuotationListState.loading() = QuotationListLoading;
  const factory QuotationListState.loaded({
    required List<Quotation> quotations,
    required Session session,
    List<String>? statuses,
    @Default(false) bool isLoadingMore,
    String? cancellingQuotationId,
  }) = QuotationListLoaded;
  const factory QuotationListState.error(String message) = QuotationListError;
  const factory QuotationListState.cancelSuccess() = QuotationListCancelSuccess;
}
