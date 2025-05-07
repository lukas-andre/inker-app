part of 'quotation_detail_bloc.dart';

@freezed
abstract class QuotationDetailState with _$QuotationDetailState {
  const factory QuotationDetailState.initial() = _Initial;
  const factory QuotationDetailState.loading() = _Loading;
  const factory QuotationDetailState.loaded(Quotation quotation) = _Loaded;
  const factory QuotationDetailState.refreshing(Quotation quotation) = _Refreshing;
  const factory QuotationDetailState.offerAccepting() = _OfferAccepting;
  const factory QuotationDetailState.offerAccepted(Quotation quotation) =
      _OfferAccepted;
  const factory QuotationDetailState.error(String message) = _Error;
}
