part of 'customer_quotation_response_bloc.dart';

@freezed
class CustomerQuotationResponseEvent with _$CustomerQuotationResponseEvent {
  const factory CustomerQuotationResponseEvent.loadQuotation(
      String quotationId) = _LoadQuotation;
  const factory CustomerQuotationResponseEvent.submit({
    required String quotationId,
    required CustomerQuotationAction action,
    QuotationCustomerRejectReason? rejectionReason,
    QuotationCustomerAppealReason? appealReason,
    String? additionalDetails,
  }) = _Submit;
}
