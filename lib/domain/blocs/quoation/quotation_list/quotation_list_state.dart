part of 'quotation_list_bloc.dart';

@freezed
class QuotationListState with _$QuotationListState {
  const factory QuotationListState.initial() = QuotationListInitial;
  const factory QuotationListState.loading() = QuotationListLoading;
  const factory QuotationListState.loaded({
    required Map<int, List<Quotation>> quotationsByTab,
    required int currentTab,
    required Map<int, int> currentPage,
    required Map<int, bool> hasMorePages,
    required Session session,
    List<String>? currentStatuses,
    @Default(false) bool isLoadingMore,
  }) = QuotationListLoaded;
  const factory QuotationListState.error(String message) = QuotationListError;
}
