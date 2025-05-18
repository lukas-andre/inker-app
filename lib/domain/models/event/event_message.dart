import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart'; // For QuotationRole

part 'event_message.freezed.dart';
part 'event_message.g.dart';

@freezed
class EventMessage with _$EventMessage {
  const factory EventMessage({
    required String id,
    required String eventId,
    required String senderId,
    required QuotationRole senderType, 
    required String message,
    String? imageUrl,
    required DateTime createdAt,
  }) = _EventMessage;

  factory EventMessage.fromJson(Map<String, dynamic> json) =>
      _$EventMessageFromJson(json);
} 