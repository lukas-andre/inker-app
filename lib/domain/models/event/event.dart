import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_agenda_events_response.dart';
import 'package:inker_studio/domain/models/agenda/agenda.dart';
import 'package:inker_studio/domain/models/event/event_message.dart';

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

  // Post-session states
  @JsonValue('completed')
  completed, // Existing: Session/work is finished (maps to TS AgendaEventStatus.COMPLETED).
  @JsonValue('awaiting_photos')
  awaitingPhotos, // Existing: Session completed, awaiting photos (maps to TS AgendaEventStatus.WAITING_FOR_PHOTOS).
  @JsonValue('awaiting_review')
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