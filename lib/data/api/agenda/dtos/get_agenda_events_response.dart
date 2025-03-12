import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_agenda_events_response.freezed.dart';
part 'get_agenda_events_response.g.dart';

List<EventItem> getAgendaEventsResponseFromJson(String str) =>
    List<EventItem>.from(json.decode(str).map((x) => EventItem.fromJson(x)));

String getAgendaEventsResponseToJson(List<EventItem> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

EventItem getEventItemFromJson(String str) =>
    EventItem.fromJson(json.decode(str));

@freezed
class EventItem with _$EventItem {
  const factory EventItem({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int customerId,
    required String title,
    @JsonKey(name: 'startDate') required DateTime start,
    @JsonKey(name: 'endDate') required DateTime end,
    required String color,
    String? info,
    required bool notification,
    required bool done,
    WorkEvidence? workEvidence,
    String? cancelationReason,
    DateTime? deletedAt,
    int? quotationId,
  }) = _EventItem;

  factory EventItem.fromJson(Map<String, dynamic> json) =>
      _$EventItemFromJson(json);
}

@freezed
class WorkEvidence with _$WorkEvidence {
  const factory WorkEvidence({
    required int count,
    required List<Metadata> metadata,
  }) = _WorkEvidence;

  factory WorkEvidence.fromJson(Map<String, dynamic> json) =>
      _$WorkEvidenceFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata({
    required String url,
    required int size,
    required String type,
    required String encoding,
    required int position,
    required String fieldname,
    required String originalname,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}