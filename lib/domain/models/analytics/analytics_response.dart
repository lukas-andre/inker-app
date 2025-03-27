import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/analytics/content_type.dart';

part 'analytics_response.freezed.dart';
part 'analytics_response.g.dart';

/// Response for content metrics
@freezed
class ContentMetrics with _$ContentMetrics {
  const factory ContentMetrics({
    required int contentId,
    required String contentType,
    required int viewCount,
    required int uniqueViewCount,
    required int likeCount,
    bool? userHasLiked,
    ViewDuration? viewDuration,
    double? engagementRate,
    ConversionMetrics? conversions,
    ImpressionMetrics? impressions,
    ViewSourceMetrics? viewSources,
  }) = _ContentMetrics;

  factory ContentMetrics.fromJson(Map<String, dynamic> json) =>
      _$ContentMetricsFromJson(json);
}

/// Response for artist metrics
@freezed
class ArtistMetrics with _$ArtistMetrics {
  const factory ArtistMetrics({
    required int artistId,
    required int viewCount,
    required int uniqueViewCount,
    FollowerMetrics? followers,
  }) = _ArtistMetrics;

  factory ArtistMetrics.fromJson(Map<String, dynamic> json) =>
      _$ArtistMetricsFromJson(json);
}

/// View duration metrics
@freezed
class ViewDuration with _$ViewDuration {
  const factory ViewDuration({
    required int totalSeconds,
    required double averageSeconds,
  }) = _ViewDuration;

  factory ViewDuration.fromJson(Map<String, dynamic> json) =>
      _$ViewDurationFromJson(json);
}

/// Conversion metrics
@freezed
class ConversionMetrics with _$ConversionMetrics {
  const factory ConversionMetrics({
    required int count,
    required double conversionRate,
  }) = _ConversionMetrics;

  factory ConversionMetrics.fromJson(Map<String, dynamic> json) =>
      _$ConversionMetricsFromJson(json);
}

/// Impression metrics
@freezed
class ImpressionMetrics with _$ImpressionMetrics {
  const factory ImpressionMetrics({
    required int count,
    required double ctr,
  }) = _ImpressionMetrics;

  factory ImpressionMetrics.fromJson(Map<String, dynamic> json) =>
      _$ImpressionMetricsFromJson(json);
}

/// View source metrics
@freezed
class ViewSourceMetrics with _$ViewSourceMetrics {
  const factory ViewSourceMetrics({
    int? search,
    int? feed,
    int? profile,
    int? related,
    int? direct,
  }) = _ViewSourceMetrics;

  factory ViewSourceMetrics.fromJson(Map<String, dynamic> json) =>
      _$ViewSourceMetricsFromJson(json);
}

/// Follower metrics
@freezed
class FollowerMetrics with _$FollowerMetrics {
  const factory FollowerMetrics({
    required int count,
    int? fromContentViews,
    double? conversionRate,
  }) = _FollowerMetrics;

  factory FollowerMetrics.fromJson(Map<String, dynamic> json) =>
      _$FollowerMetricsFromJson(json);
} 