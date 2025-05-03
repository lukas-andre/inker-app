part of 'offer_message_bloc.dart';

@freezed
class OfferMessageEvent with _$OfferMessageEvent {
  const factory OfferMessageEvent.loadMessages({
    required String quotationId,
    required String offerId,
  }) = _LoadMessages;
  
  const factory OfferMessageEvent.sendMessage({
    required String quotationId,
    required String offerId,
    required String message,
    XFile? image,
  }) = _SendMessage;
  
  const factory OfferMessageEvent.refreshMessages() = _RefreshMessages;
} 