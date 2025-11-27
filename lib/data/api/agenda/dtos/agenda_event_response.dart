import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda_event_response.freezed.dart';
part 'agenda_event_response.g.dart';

@freezed
class AgendaEventResponse with _$AgendaEventResponse {
  const factory AgendaEventResponse({
    required String id,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
    @JsonKey(name: 'customerId') required String customerId,
    required String title,
    @JsonKey(name: 'startDate') required DateTime startDate,
    @JsonKey(name: 'endDate') required DateTime endDate,
    required String color,
    required String info,
    required bool notification,
    required bool done,
    required String status,
    @JsonKey(name: 'workEvidence') Map<String, dynamic>? workEvidence,
    @JsonKey(name: 'cancelationReason') String? cancelationReason,
    @JsonKey(name: 'deletedAt') DateTime? deletedAt,
    @JsonKey(name: 'quotationId') String? quotationId,
    required Map<String, dynamic>? agenda,
    required Map<String, dynamic>? artist,
    required Map<String, dynamic>? location,
  }) = _AgendaEventResponse;

  factory AgendaEventResponse.fromJson(Map<String, dynamic> json) =>
      _$AgendaEventResponseFromJson(json);
} 