import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

part 'appointment.freezed.dart';
part 'appointment.g.dart';

enum AppointmentStatus {
  pending,
  confirmed,
  scheduled,
  inProgress,
  completed,
  rescheduled,
  waitingForPhotos,
  waitingForReview,
  reviewed,
  canceled
}

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required String id,
    required String eventId,
    required String customerId,
    required String artistId,
    required String title,
    required String info,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime startDate,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime endDate,
    required AppointmentStatus status,
    required Artist artist,
    required Location location,
    required String color,
    required bool notification,
    required bool done,
    String? quotationId,
    String? cancelationReason,
    WorkEvidence? workEvidence,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? readByCustomer,
    DateTime? deletedAt,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
}

@freezed
class WorkEvidence with _$WorkEvidence {
  const factory WorkEvidence({
    required int count,
    required List<WorkEvidenceMetadata> metadata,
  }) = _WorkEvidence;

  factory WorkEvidence.fromJson(Map<String, dynamic> json) => _$WorkEvidenceFromJson(json);
}

@freezed
class WorkEvidenceMetadata with _$WorkEvidenceMetadata {
  const factory WorkEvidenceMetadata({
    required String url,
    required int size,
    required String type,
    required String encoding,
    required int position,
    required String fieldname,
    required String originalname,
  }) = _WorkEvidenceMetadata;

  factory WorkEvidenceMetadata.fromJson(Map<String, dynamic> json) => _$WorkEvidenceMetadataFromJson(json);
}

DateTime _dateTimeFromJson(String date) {
  tz.initializeTimeZones();
  final chileLocation = tz.getLocation('America/Santiago');
  return tz.TZDateTime.from(DateTime.parse(date), chileLocation);
}

String _dateTimeToJson(DateTime date) => date.toUtc().toIso8601String();