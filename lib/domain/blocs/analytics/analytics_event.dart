part of 'analytics_bloc.dart';

@freezed
class AnalyticsEvent with _$AnalyticsEvent {
  /// Record a view of a work or stencil content
  const factory AnalyticsEvent.recordContentView({
    required int contentId,
    required ContentType contentType,
    ViewSource? viewSource,
    int? viewDurationSeconds,
  }) = _RecordContentView;

  /// Record a like of a work or stencil content
  const factory AnalyticsEvent.recordContentLike({
    required int contentId,
    required ContentType contentType,
  }) = _RecordContentLike;

  /// Record an impression of content (seen but not necessarily viewed)
  const factory AnalyticsEvent.recordContentImpression({
    required int contentId,
    required ContentType contentType,
  }) = _RecordContentImpression;

  /// Record a view of an artist profile
  const factory AnalyticsEvent.recordArtistView({
    required int artistId,
  }) = _RecordArtistView;

  /// Record a follow of an artist
  const factory AnalyticsEvent.recordArtistFollow({
    required int artistId,
    @Default(false) bool fromContentView,
  }) = _RecordArtistFollow;

  /// Get metrics for a specific content item
  const factory AnalyticsEvent.getContentMetrics({
    required int contentId,
    required ContentType contentType,
  }) = _GetContentMetrics;

  /// Get metrics for a specific artist
  const factory AnalyticsEvent.getArtistMetrics({
    required int artistId,
  }) = _GetArtistMetrics;

  /// Get metrics for multiple content items
  const factory AnalyticsEvent.getBatchContentMetrics({
    required List<int> contentIds,
    required ContentType contentType,
  }) = _GetBatchContentMetrics;
} 