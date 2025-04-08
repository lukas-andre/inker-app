import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_response.freezed.dart';
part 'analytics_response.g.dart';

/// Response for content metrics
@freezed
class ContentMetrics with _$ContentMetrics {
  const factory ContentMetrics({
    required String contentId,
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
    required String artistId,
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

/// Respuesta de interacción de analytics
class AnalyticsInteractionResponse {
  /// Indica si la operación fue exitosa
  final bool result;
  
  /// Estado actual de la interacción
  final InteractionState state;
  
  /// Métricas adicionales relacionadas con la interacción
  final InteractionMetrics metrics;
  
  const AnalyticsInteractionResponse({
    required this.result,
    required this.state,
    required this.metrics,
  });
  
  factory AnalyticsInteractionResponse.fromJson(Map<String, dynamic> json) {
    return AnalyticsInteractionResponse(
      result: json['result'] ?? false,
      state: InteractionState.fromJson(json['state'] ?? {}),
      metrics: InteractionMetrics.fromJson(json['metrics'] ?? {}),
    );
  }
}

/// Estado de una interacción
class InteractionState {
  /// Contador de interacciones (likes, views, etc.)
  final int count;
  
  /// IDs de usuarios que han interactuado
  final List<int> userIds;
  
  const InteractionState({
    required this.count,
    required this.userIds,
  });
  
  factory InteractionState.fromJson(Map<String, dynamic> json) {
    return InteractionState(
      count: json['count'] ?? 0,
      userIds: List<int>.from(json['userIds'] ?? []),
    );
  }
}

/// Métricas adicionales para interacciones
class InteractionMetrics {
  /// Contador de vistas
  final int viewCount;
  
  /// Contador de vistas únicas
  final int uniqueViewCount;
  
  /// Tasa de engagement (opcional)
  final double? engagementRate;
  
  const InteractionMetrics({
    required this.viewCount,
    required this.uniqueViewCount,
    this.engagementRate,
  });
  
  factory InteractionMetrics.fromJson(Map<String, dynamic> json) {
    return InteractionMetrics(
      viewCount: json['viewCount'] ?? 0,
      uniqueViewCount: json['uniqueViewCount'] ?? 0,
      engagementRate: json['engagementRate']?.toDouble(),
    );
  }
} 