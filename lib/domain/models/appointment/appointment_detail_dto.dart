import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/event/event_actions.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';

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
    required DateTime startDate,
    required DateTime endDate,
    required String color,
    required String info,
    required bool notification,
    required bool done,
    required String status,
    dynamic workEvidence,
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