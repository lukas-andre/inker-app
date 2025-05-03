part of 'offer_message_bloc.dart';

@freezed
class OfferMessageEvent with _$OfferMessageEvent {
  const factory OfferMessageEvent.loadMessages({
    required String quotationId,
    required String offerId,
  }) = LoadMessages;

  const factory OfferMessageEvent.sendMessage({
    required String message,
    XFile? image,
  }) = SendMessage;

  const factory OfferMessageEvent.refreshMessages() = RefreshMessages;
} 