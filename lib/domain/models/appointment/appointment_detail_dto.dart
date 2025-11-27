import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/appointment/agenda_event.dart';
import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/event/event_actions.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/work_evidence/work_evidence.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

part 'appointment_detail_dto.freezed.dart';
part 'appointment_detail_dto.g.dart';

@freezed
class AppointmentDetailDto with _$AppointmentDetailDto {
  const factory AppointmentDetailDto({
    required AppointmentEventDto event,
    required Artist artist,
    required Location location,
    required Quotation quotation,
    required EventActions actions,
  }) = _AppointmentDetailDto;

  factory AppointmentDetailDto.fromJson(Map<String, dynamic> json) => _$AppointmentDetailDtoFromJson(json);
}

@freezed
class AppointmentEventDto with _$AppointmentEventDto {
  const factory AppointmentEventDto({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String customerId,
    required String title,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime startDate,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime endDate,
    required String color,
    required String info,
    required bool notification,
    required bool done,
    required String status,
    WorkEvidence? workEvidence,
    String? cancelationReason,
    String? rescheduleReason,
    String? notes,
    int? preparationTime,
    int? cleanupTime,
    DateTime? lastStatusChange,
    bool? customerNotified,
    DateTime? deletedAt,
    String? quotationId,
    required AgendaDto agenda,
    List<StatusLogEntry>? statusLog,
  }) = _AppointmentEventDto;

  factory AppointmentEventDto.fromJson(Map<String, dynamic> json) => _$AppointmentEventDtoFromJson(json);
}

@freezed
class AgendaDto with _$AgendaDto {
  const factory AgendaDto({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String userId,
    required String artistId,
    required List<String> workingDays,
    String? workingHoursStart,
    String? workingHoursEnd,
    required bool public,
    required bool open,
    DateTime? deletedAt,
  }) = _AgendaDto;

  factory AgendaDto.fromJson(Map<String, dynamic> json) => _$AgendaDtoFromJson(json);
} 

DateTime _dateTimeFromJson(String date) {
  tz.initializeTimeZones();
  final chileLocation = tz.getLocation('America/Santiago');
  return tz.TZDateTime.from(DateTime.parse(date), chileLocation);
}

String _dateTimeToJson(DateTime date) => date.toUtc().toIso8601String();