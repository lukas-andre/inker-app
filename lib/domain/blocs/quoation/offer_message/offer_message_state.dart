
part of 'offer_message_bloc.dart';

@freezed
class OfferMessageState with _$OfferMessageState {
  const factory OfferMessageState.initial() = _Initial;
  const factory OfferMessageState.loading() = _Loading;
  const factory OfferMessageState.loaded({
    required List<OfferMessageDto> messages,
    required String quotationId,
    required String offerId,
    @Default(false) bool isRefreshing,
    @Default(false) bool isSending,
  }) = _Loaded;
  const factory OfferMessageState.error(String message) = _Error;
} 