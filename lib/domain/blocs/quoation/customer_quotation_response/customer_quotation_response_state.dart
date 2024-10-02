// customer_quotation_response_state.dart
part of 'customer_quotation_response_bloc.dart';

@freezed
class CustomerQuotationResponseState with _$CustomerQuotationResponseState {
  const factory CustomerQuotationResponseState.initial() = _Initial;
  const factory CustomerQuotationResponseState.loadingQuotation() =
      _LoadingQuotation;
  const factory CustomerQuotationResponseState.quotationLoaded(
      Quotation quotation) = _QuotationLoaded;
  const factory CustomerQuotationResponseState.submittingResponse() =
      _SubmittingResponse;
  const factory CustomerQuotationResponseState.success() = _Success;
  const factory CustomerQuotationResponseState.failure(String error) = _Failure;
}
