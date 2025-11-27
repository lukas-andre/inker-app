import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:inker_studio/domain/models/quotation/quotation.dart';

part 'agenda_event_detail_response.freezed.dart';
part 'agenda_event_detail_response.g.dart';

AgendaEventDetailResponse agendaEventDetailResponseFromJson(String str) =>
    AgendaEventDetailResponse.fromJson(json.decode(str));

String agendaEventDetailResponseToJson(AgendaEventDetailResponse data) =>
    json.encode(data.toJson());

@freezed
class AgendaEventDetailResponse with _$AgendaEventDetailResponse {
  const factory AgendaEventDetailResponse({
    required AgendaEventDetailEvent event,
    required AgendaEventDetailLocation location,
    Quotation? quotation,
  }) = _AgendaEventDetailResponse;

  factory AgendaEventDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$AgendaEventDetailResponseFromJson(json);
}

@freezed
class AgendaEventDetailEvent with _$AgendaEventDetailEvent {
  const factory AgendaEventDetailEvent({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String customerId,
    required String title,
    @JsonKey(name: 'startDate') required DateTime start,
    @JsonKey(name: 'endDate') required DateTime end,
    required String color,
    String? info,
    required bool notification,
    required bool done,
    AgendaEventDetailWorkEvidence? workEvidence,
    String? cancelationReason,
    DateTime? deletedAt,
    String? quotationId,
    String? notes,
    int? preparationTimeMinutes,
    int? cleanupTimeMinutes,
  }) = _AgendaEventDetailEvent;

  factory AgendaEventDetailEvent.fromJson(Map<String, dynamic> json) =>
      _$AgendaEventDetailEventFromJson(json);
}

@freezed
class AgendaEventDetailWorkEvidence with _$AgendaEventDetailWorkEvidence {
  const factory AgendaEventDetailWorkEvidence({
    required int count,
    required List<AgendaEventDetailMetadata> metadata,
  }) = _AgendaEventDetailWorkEvidence;

  factory AgendaEventDetailWorkEvidence.fromJson(Map<String, dynamic> json) =>
      _$AgendaEventDetailWorkEvidenceFromJson(json);
}

@freezed
class AgendaEventDetailMetadata with _$AgendaEventDetailMetadata {
  const factory AgendaEventDetailMetadata({
    required String url,
    required int size,
    required String type,
    required String encoding,
    required int position,
    required String fieldname,
    required String originalname,
  }) = _AgendaEventDetailMetadata;

  factory AgendaEventDetailMetadata.fromJson(Map<String, dynamic> json) =>
      _$AgendaEventDetailMetadataFromJson(json);
}

@freezed
class AgendaEventDetailLocation with _$AgendaEventDetailLocation {
  const factory AgendaEventDetailLocation({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String address1,
    required String shortAddress1,
    required String address2,
    required String addressType,
    required String state,
    required String city,
    required String country,
    required String formattedAddress,
    required double lat,
    required double lng,
    required AgendaEventDetailViewport viewport,
    required AgendaEventDetailLocationCoordinates location,
    String? artistId,
    String? address3,
    String? name,
    String? profileThumbnail,
    String? googlePlaceId,
  }) = _AgendaEventDetailLocation;

  factory AgendaEventDetailLocation.fromJson(Map<String, dynamic> json) =>
      _$AgendaEventDetailLocationFromJson(json);
}

@freezed
class AgendaEventDetailViewport with _$AgendaEventDetailViewport {
  const factory AgendaEventDetailViewport({
    required AgendaEventDetailCoordinates northeast,
    required AgendaEventDetailCoordinates southwest,
  }) = _AgendaEventDetailViewport;

  factory AgendaEventDetailViewport.fromJson(Map<String, dynamic> json) =>
      _$AgendaEventDetailViewportFromJson(json);
}

@freezed
class AgendaEventDetailCoordinates with _$AgendaEventDetailCoordinates {
  const factory AgendaEventDetailCoordinates({
    required double lat,
    required double lng,
  }) = _AgendaEventDetailCoordinates;

  factory AgendaEventDetailCoordinates.fromJson(Map<String, dynamic> json) =>
      _$AgendaEventDetailCoordinatesFromJson(json);
}

@freezed
class AgendaEventDetailLocationCoordinates
    with _$AgendaEventDetailLocationCoordinates {
  const factory AgendaEventDetailLocationCoordinates({
    required String type,
    required List<double> coordinates,
  }) = _AgendaEventDetailLocationCoordinates;

  factory AgendaEventDetailLocationCoordinates.fromJson(
          Map<String, dynamic> json) =>
      _$AgendaEventDetailLocationCoordinatesFromJson(json);
}