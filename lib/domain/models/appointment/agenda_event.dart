import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda_event.freezed.dart';
part 'agenda_event.g.dart';

@freezed
class AgendaEvent with _$AgendaEvent {
  @JsonSerializable(explicitToJson: true)
  const factory AgendaEvent({
    required String id,
    DateTime? createdAt,
    DateTime? updatedAt,
    required String customerId,
    required String title,
    required DateTime startDate,
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
    DateTime? deletedAt,
    @Default([]) List<StatusLogEntry> statusLog,
    String? quotationId,
    String? reviewId,
    Object? rescheduleLog,
    @Default([]) List<dynamic> messages,
    Agenda? agenda,
  }) = _AgendaEvent;

  factory AgendaEvent.fromJson(Map<String, dynamic> json) => _$AgendaEventFromJson(json);
}

@freezed
class StatusLogEntry with _$StatusLogEntry {
  const factory StatusLogEntry({
    required Actor actor,
    String? notes,
    required String status,
    required DateTime timestamp,
    String? action,
  }) = _StatusLogEntry;

  factory StatusLogEntry.fromJson(Map<String, dynamic> json) => _$StatusLogEntryFromJson(json);
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
    DateTime? createdAt,
    DateTime? updatedAt,
    required String userId,
    required String artistId,
    @Default([]) List<String> workingDays,
    String? workingHoursStart,
    String? workingHoursEnd,
    @Default(true) bool public,
    @Default(true) bool open,
    DateTime? deletedAt,
  }) = _Agenda;

  factory Agenda.fromJson(Map<String, dynamic> json) => _$AgendaFromJson(json);
} 