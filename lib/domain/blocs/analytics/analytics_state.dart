part of 'analytics_bloc.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  /// Initial state
  const factory AnalyticsState.initial() = _Initial;

  /// Loading state for longer operations
  const factory AnalyticsState.loading() = _Loading;

  /// Content metrics loaded successfully
  const factory AnalyticsState.contentMetricsLoaded({
    required ContentMetrics metrics,
  }) = _ContentMetricsLoaded;

  /// Artist metrics loaded successfully
  const factory AnalyticsState.artistMetricsLoaded({
    required ArtistMetrics metrics,
  }) = _ArtistMetricsLoaded;

  /// Batch content metrics loaded successfully
  const factory AnalyticsState.batchContentMetricsLoaded({
    required List<ContentMetrics> metrics,
  }) = _BatchContentMetricsLoaded;

  /// Content liked status
  const factory AnalyticsState.contentLikeUpdated({
    required String contentId,
    required ContentType contentType,
    required bool isLiked,
    required int likeCount,
  }) = _ContentLikeUpdated;

  /// Error state
  const factory AnalyticsState.error({
    required String message,
  }) = _Error;
} 