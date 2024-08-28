part of 'quotation_list_bloc.dart';

@freezed
class QuotationListEvent with _$QuotationListEvent {
  const factory QuotationListEvent.started() = _Started;
  const factory QuotationListEvent.loadQuotations(
      List<String>? statuses, bool isNextPage) = _LoadQuotations;
  const factory QuotationListEvent.changeTab(int tabIndex) = _ChangeTab;
}
