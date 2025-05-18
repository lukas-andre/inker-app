import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_agenda_events_response.dart';
import 'package:inker_studio/domain/models/agenda/agenda.dart';
import 'package:inker_studio/domain/models/event/event_message.dart';

part 'event.freezed.dart';
part 'event.g.dart';

enum EventStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('scheduled')
  scheduled,
  @JsonValue('confirmed')
  confirmed,
  @JsonValue('canceled')
  canceled,
  @JsonValue('rescheduled_pending_approval')
  rescheduledPendingApproval,
  @JsonValue('rescheduled')
  rescheduled,
  @JsonValue('completed')
  completed,
  @JsonValue('done') // From payload, though 'done' is also a boolean field.
  doneStatus, 
  @JsonValue('awaiting_photos')
  awaitingPhotos,
  @JsonValue('awaiting_review')
  awaitingReview,
}

@freezed
class Event with _$Event {
  const factory Event({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String customerId,
    required String title,
    @JsonKey(name: 'startDate') required DateTime startDateTime,
    @JsonKey(name: 'endDate') required DateTime endDateTime,
    String? color,
    String? info,
    @Default(false) bool notification,
    @Default(false) bool done,
    required EventStatus status,
    WorkEvidence? workEvidence,
    String? notes,
    int? preparationTime,
    int? cleanupTime,
    @Default(false) bool customerNotified,
    DateTime? deletedAt,
    dynamic statusLog, 
    String? quotationId,
    String? reviewId,
    dynamic rescheduleLog, 
    @Default([]) List<EventMessage> messages,
    required Agenda agenda,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
} 