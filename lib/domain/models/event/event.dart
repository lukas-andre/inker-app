import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_agenda_events_response.dart';
import 'package:inker_studio/domain/models/agenda/agenda.dart';
import 'package:inker_studio/domain/models/event/event_message.dart';
import 'package:inker_studio/domain/models/work_evidence/work_evidence.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

part 'event.freezed.dart';
part 'event.g.dart';

enum EventStatus {
  // Initial state
  @JsonValue('created')
  created, // New: Event is created, not yet requested for confirmation (maps to TS AgendaEventStatus.CREATED).

  // Pending states
  @JsonValue('pending')
  pending, // Existing: Confirmation requested, awaiting response (maps to TS AgendaEventStatus.PENDING_CONFIRMATION).
  @JsonValue('payment_pending')
  paymentPending, // New: Event confirmed, but payment is pending (maps to TS AgendaEventStatus.PAYMENT_PENDING).

  // Confirmed and active states
  @JsonValue('confirmed')
  confirmed, // Existing: Event is agreed upon and on the schedule (maps to TS AgendaEventStatus.CONFIRMED).
  @JsonValue('scheduled') // Existing: Event is currently in progress (maps to TS AgendaEventStatus.IN_PROGRESS / Active Session).
  scheduled,

  @JsonValue('in_progress')
  inProgress, // Existing: Event is currently in progress (maps to TS AgendaEventStatus.IN_PROGRESS / Active Session).

  // Post-session states
  @JsonValue('completed')
  completed, // Existing: Session/work is finished (maps to TS AgendaEventStatus.COMPLETED).
  @JsonValue('waiting_for_photos')
  waitingForPhotos, // Existing: Session completed, awaiting photos (maps to TS AgendaEventStatus.WAITING_FOR_PHOTOS).
  @JsonValue('waiting_for_review')
  awaitingReview, // Existing: Session completed (photos possibly added), awaiting review (maps to TS AgendaEventStatus.WAITING_FOR_REVIEW).
  @JsonValue('reviewed')
  reviewed, // New: Review has been submitted (maps to TS AgendaEventStatus.REVIEWED).
  @JsonValue('aftercare_period')
  aftercarePeriod, // New: Event is in the aftercare phase (maps to TS AgendaEventStatus.AFTERCARE_PERIOD).

  // Rescheduling states
  @JsonValue('rescheduled_pending_approval')
  rescheduledPendingApproval, // Existing: A reschedule request has been made and is pending approval from the other party.
  @JsonValue('rescheduled')
  rescheduled, // Existing: Event has been rescheduled (maps to TS AgendaEventStatus.RESCHEDULED).

  // Terminal or exceptional states
  @JsonValue('canceled')
  canceled, // Existing: Event has been canceled (maps to TS AgendaEventStatus.CANCELED).
  @JsonValue('dispute_open')
  disputeOpen, // New: A dispute has been opened for this event (maps to TS AgendaEventStatus.DISPUTE_OPEN).

  // TODO: Clarify 'doneStatus' - maps to which state in your state machine?
  // Is it needed if the 'bool done' field exists on the Event model,
  // and/or if states like 'reviewed' or 'aftercarePeriod' represent finality?
  @JsonValue('done') // From payload, though 'done' is also a boolean field.
  doneStatus,
}

extension EventStatusExtension on EventStatus {
  String get value {
    switch (this) {
      case EventStatus.created:
        return 'created';
      case EventStatus.pending:
        return 'pending';
      case EventStatus.paymentPending:
        return 'payment_pending';
      case EventStatus.confirmed:
        return 'confirmed';
      case EventStatus.scheduled:
        return 'scheduled';
      case EventStatus.completed:
        return 'completed';
      case EventStatus.waitingForPhotos:
        return 'waiting_for_photos';
      case EventStatus.awaitingReview:
        return 'waiting_for_review';
      case EventStatus.reviewed:
        return 'reviewed';
      case EventStatus.aftercarePeriod:
        return 'aftercare_period';
      case EventStatus.rescheduledPendingApproval:
        return 'rescheduled_pending_approval';
      case EventStatus.rescheduled:
        return 'rescheduled';
      case EventStatus.canceled:
        return 'canceled';
      case EventStatus.disputeOpen:
        return 'dispute_open';
      case EventStatus.doneStatus:
        return 'done';
      case EventStatus.inProgress:
        return 'in_progress';
    }
  }
}

@freezed
class Event with _$Event {
  const Event._();

  @JsonSerializable(explicitToJson: true)
  const factory Event({
    required String id,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime createdAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime updatedAt,
    required String customerId,
    required String title,
    @JsonKey(name: 'startDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime startDateTime,
    @JsonKey(name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime endDateTime,
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
    @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
    DateTime? deletedAt,
    dynamic statusLog, 
    String? quotationId,
    String? reviewId,
    dynamic rescheduleLog, 
    @Default([]) List<EventMessage> messages,
    required Agenda agenda,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  // Getter methods for local dates
  DateTime get localCreatedAt => createdAt;
  DateTime get localUpdatedAt => updatedAt;
  DateTime get localStartDateTime => startDateTime;
  DateTime get localEndDateTime => endDateTime;
  DateTime? get localDeletedAt => deletedAt;
}

// Helper functions for JSON serialization
DateTime _dateTimeFromJson(String date) {
  tz.initializeTimeZones();
  final chileLocation = tz.getLocation('America/Santiago');
  return tz.TZDateTime.from(DateTime.parse(date), chileLocation);
}

DateTime? _dateTimeFromJsonNullable(String? date) {
  if (date == null) return null;
  tz.initializeTimeZones();
  final chileLocation = tz.getLocation('America/Santiago');
  return tz.TZDateTime.from(DateTime.parse(date), chileLocation);
}

String _dateTimeToJson(DateTime date) => date.toUtc().toIso8601String();

String? _dateTimeToJsonNullable(DateTime? date) => date?.toUtc().toIso8601String(); 