import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/event/event.dart';
import 'package:inker_studio/domain/models/event/event_actions.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';

part 'event_detail_response.freezed.dart';
part 'event_detail_response.g.dart';

@freezed
class EventDetailResponse with _$EventDetailResponse {
  const factory EventDetailResponse({
    required Event event,
    required Artist artist,
    required Location location,
    required Quotation quotation,
    required EventActions actions,
  }) = _EventDetailResponse;

  factory EventDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$EventDetailResponseFromJson(json);
} 