part of 'artist_quotation_response_bloc.dart';

@freezed
class ArtistQuotationResponseState with _$ArtistQuotationResponseState {
  const factory ArtistQuotationResponseState.initial() = _Initial;
  const factory ArtistQuotationResponseState.loadingQuotation() =
      _LoadingQuotation;
  const factory ArtistQuotationResponseState.quotationLoaded(
      Quotation quotation) = _QuotationLoaded;
  const factory ArtistQuotationResponseState.submittingResponse() =
      _SubmittingResponse;
  const factory ArtistQuotationResponseState.success() = _Success;
  const factory ArtistQuotationResponseState.failure(String error) = _Failure;
}
