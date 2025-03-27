import 'package:inker_studio/domain/models/analytics/interaction_type.dart';
import 'package:inker_studio/domain/models/analytics/content_type.dart';
import 'package:inker_studio/domain/models/analytics/view_source.dart';
import 'package:inker_studio/domain/models/analytics/analytics_response.dart';

/// Service for tracking analytics events in the application
abstract class AnalyticsService {
  /// Records a content interaction such as view, like, etc.
  Future<bool?> recordInteraction({
    required int contentId,
    required ContentType contentType,
    required InteractionType interactionType,
    ViewSource? viewSource,
    int? viewDurationSeconds,
    String? token,
  });
  
  /// Records a view of an artist profile
  Future<void> recordArtistView(int artistId, {String? token});
  
  /// Records a follow of an artist
  Future<void> recordArtistFollow(int artistId, {bool fromContentView = false, String? token});
  
  /// Gets metrics for a specific content item
  Future<ContentMetrics> getContentMetrics(int contentId, ContentType contentType, {String? token});
  
  /// Gets metrics for a specific artist
  Future<ArtistMetrics> getArtistMetrics(int artistId, {String? token});
  
  /// Gets batch metrics for multiple content items
  Future<List<ContentMetrics>> getBatchContentMetrics(
    List<int> contentIds, 
    ContentType contentType,
    {String? token}
  );
} 