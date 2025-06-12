import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/work_evidence/work_evidence.dart';
import 'dart:convert';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

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
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String customerId,
    required String title,
    @JsonKey(
        name: 'startDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime start,
    @JsonKey(
        name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
    required DateTime end,
    required String color,
    String? info,
    required bool notification,
    required bool done,
    WorkEvidence? workEvidence,
    String? cancelationReason,
    DateTime? deletedAt,
    String? quotationId,
  }) = _EventItem;

  factory EventItem.fromJson(Map<String, dynamic> json) =>
      _$EventItemFromJson(json);
}

DateTime _dateTimeFromJson(String date) {
  tz.initializeTimeZones();
  final chileLocation = tz.getLocation('America/Santiago');
  return tz.TZDateTime.from(DateTime.parse(date), chileLocation);
}


String _dateTimeToJson(DateTime date) => date.toUtc().toIso8601String();
