import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/analytics/content_type.dart';
import 'package:inker_studio/domain/models/analytics/interaction_type.dart';
import 'package:inker_studio/domain/models/analytics/view_source.dart';

part 'analytics_request.freezed.dart';
part 'analytics_request.g.dart';

/// Request to record a content interaction
@freezed
class RecordInteractionRequest with _$RecordInteractionRequest {
  const factory RecordInteractionRequest({
    required String contentId,
    required ContentType contentType,
    required InteractionType interactionType,
    ViewSource? viewSource,
    int? viewDurationSeconds,
  }) = _RecordInteractionRequest;

  factory RecordInteractionRequest.fromJson(Map<String, dynamic> json) =>
      _$RecordInteractionRequestFromJson(json);
}

/// Request to record an artist view
@freezed
class RecordArtistViewRequest with _$RecordArtistViewRequest {
  const factory RecordArtistViewRequest({
    required String artistId,
  }) = _RecordArtistViewRequest;

  factory RecordArtistViewRequest.fromJson(Map<String, dynamic> json) =>
      _$RecordArtistViewRequestFromJson(json);
}

/// Request to record an artist follow
@freezed
class RecordArtistFollowRequest with _$RecordArtistFollowRequest {
  const factory RecordArtistFollowRequest({
    required String artistId,
    @Default(false) bool fromContentView,
  }) = _RecordArtistFollowRequest;

  factory RecordArtistFollowRequest.fromJson(Map<String, dynamic> json) =>
      _$RecordArtistFollowRequestFromJson(json);
}

/// Request to get batch content metrics
@freezed
class BatchMetricsRequest with _$BatchMetricsRequest {
  const factory BatchMetricsRequest({
    required List<String> contentIds,
    required ContentType contentType,
  }) = _BatchMetricsRequest;

  factory BatchMetricsRequest.fromJson(Map<String, dynamic> json) =>
      _$BatchMetricsRequestFromJson(json);
} 