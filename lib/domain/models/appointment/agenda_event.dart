import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

part 'agenda_event.freezed.dart';
part 'agenda_event.g.dart';

@freezed
class AgendaEvent with _$AgendaEvent {
  const AgendaEvent._();

  @JsonSerializable(explicitToJson: true)
  const factory AgendaEvent({
    required String id,
    @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
    DateTime? updatedAt,
    required String customerId,
    required String title,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime startDate,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime endDate,
    String? color,
    String? info,
    @Default(false) bool notification,
    @Default(false) bool done,
    required String status,
    Object? workEvidence,
    Object? notes,
    int? preparationTime,
    int? cleanupTime,
    @Default(false) bool customerNotified,
    @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
    DateTime? deletedAt,
    @Default([]) List<StatusLogEntry> statusLog,
    String? quotationId,
    String? reviewId,
    Object? rescheduleLog,
    @Default([]) List<dynamic> messages,
    Agenda? agenda,
  }) = _AgendaEvent;

  factory AgendaEvent.fromJson(Map<String, dynamic> json) => _$AgendaEventFromJson(json);

  // Getter methods for local dates
  DateTime? get localCreatedAt => createdAt;
  DateTime? get localUpdatedAt => updatedAt;
  DateTime get localStartDate => startDate;
  DateTime get localEndDate => endDate;
  DateTime? get localDeletedAt => deletedAt;
}

@freezed
class StatusLogEntry with _$StatusLogEntry {
  const StatusLogEntry._();

  @JsonSerializable(explicitToJson: true)
  const factory StatusLogEntry({
    required Actor actor,
    String? notes,
    String? reason,
    required String status,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime timestamp,
    String? action,
  }) = _StatusLogEntry;

  factory StatusLogEntry.fromJson(Map<String, dynamic> json) => _$StatusLogEntryFromJson(json);

  // Getter for local timestamp
  DateTime get localTimestamp => timestamp;
}

@freezed
class Actor with _$Actor {
  const factory Actor({
    required String role,
    required String roleId,
    required String userId,
  }) = _Actor;

  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);
}

@freezed
class Agenda with _$Agenda {
  const factory Agenda({
    required String id,
    @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
    DateTime? createdAt,
    @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
    DateTime? updatedAt,
    required String userId,
    required String artistId,
    @Default([]) List<String> workingDays,
    String? workingHoursStart,
    String? workingHoursEnd,
    @Default(true) bool public,
    @Default(true) bool open,
    @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
    DateTime? deletedAt,
  }) = _Agenda;

  factory Agenda.fromJson(Map<String, dynamic> json) => _$AgendaFromJson(json);
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
  // TODO: ADD TIMEZONE SELECTION.
  final chileLocation = tz.getLocation('America/Santiago');
  return tz.TZDateTime.from(DateTime.parse(date), chileLocation);
}

String _dateTimeToJson(DateTime date) => date.toUtc().toIso8601String();

String? _dateTimeToJsonNullable(DateTime? date) => date?.toUtc().toIso8601String(); 