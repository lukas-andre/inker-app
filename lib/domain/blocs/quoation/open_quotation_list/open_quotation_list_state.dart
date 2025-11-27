part of 'open_quotation_list_bloc.dart';

@freezed
abstract class OpenQuotationListState with _$OpenQuotationListState {
  const factory OpenQuotationListState.initial() = OpenQuotationListInitial;
  const factory OpenQuotationListState.loading() = _Loading;
  const factory OpenQuotationListState.loaded({
    required List<Quotation> openQuotations,
    required bool isLoadingMore,
    required int currentPage,
    required int totalItems,
    String? infoMessage, // Optional message for success/info
  }) = _Loaded;
  const factory OpenQuotationListState.error(String message) = _Error;
} 