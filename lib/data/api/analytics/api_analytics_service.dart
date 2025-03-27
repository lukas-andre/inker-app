import 'dart:convert';

import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/domain/models/analytics/analytics_response.dart';
import 'package:inker_studio/domain/models/analytics/content_type.dart';
import 'package:inker_studio/domain/models/analytics/interaction_type.dart';
import 'package:inker_studio/domain/models/analytics/view_source.dart';
import 'package:inker_studio/domain/services/analytics/analytics_service.dart';

class ApiAnalyticsService implements AnalyticsService {
  final HttpClientService _httpClient;
  final String _basePath = 'analytics';

  ApiAnalyticsService(this._httpClient);

  @override
  Future<bool?> recordInteraction({
    required int contentId,
    required ContentType contentType,
    required InteractionType interactionType,
    ViewSource? viewSource,
    int? viewDurationSeconds,
    String? token,
  }) async {
    try {
      final Map<String, dynamic> request = {
        'contentId': contentId,
        'contentType': contentType.value,
        'interactionType': interactionType.value,
      };
      
      if (viewSource != null) {
        request['viewSource'] = viewSource.value;
      }
      
      if (viewDurationSeconds != null) {
        request['viewDurationSeconds'] = viewDurationSeconds;
      }

      // For likes, the API returns true if liked, false if unliked
      if (interactionType == InteractionType.like) {
        return await _httpClient.post(
          path: '$_basePath/interactions',
          body: request,
          fromJson: (json) => json['liked'] as bool? ?? false,
          token: token,
        );
      } else {
        await _httpClient.post(
          path: '$_basePath/interactions',
          body: request,
          fromJson: (json) => null,
          token: token,
        );
        return null;
      }
    } catch (e) {
      print('Error recording interaction: $e');
      return null;
    }
  }

  @override
  Future<void> recordArtistView(int artistId, {String? token}) async {
    try {
      await _httpClient.post(
        path: '$_basePath/interactions/artist/view',
        body: {'artistId': artistId},
        fromJson: (json) => null,
        token: token,
      );
    } catch (e) {
      print('Error recording artist view: $e');
    }
  }

  @override
  Future<void> recordArtistFollow(int artistId, {bool fromContentView = false, String? token}) async {
    try {
      await _httpClient.post(
        path: '$_basePath/interactions/artist/follow',
        body: {
          'artistId': artistId,
          'fromContentView': fromContentView,
        },
        fromJson: (json) => null,
        token: token,
      );
    } catch (e) {
      print('Error recording artist follow: $e');
    }
  }

  @override
  Future<ContentMetrics> getContentMetrics(int contentId, ContentType contentType, {String? token}) async {
    try {
      return await _httpClient.get(
        path: '$_basePath/content/$contentId',
        queryParams: {'type': contentType.value},
        fromJson: (json) => ContentMetrics(
          contentId: json['contentId'] ?? contentId,
          contentType: json['contentType'] ?? contentType.value,
          viewCount: json['viewCount'] ?? 0,
          uniqueViewCount: json['uniqueViewCount'] ?? 0,
          likeCount: json['likeCount'] ?? 0,
          userHasLiked: json['userHasLiked'],
        ),
        token: token,
      );
    } catch (e) {
      print('Error getting content metrics: $e');
      // Return default metrics on error
      return ContentMetrics(
        contentId: contentId,
        contentType: contentType.value,
        viewCount: 0,
        uniqueViewCount: 0,
        likeCount: 0,
      );
    }
  }

  @override
  Future<ArtistMetrics> getArtistMetrics(int artistId, {String? token}) async {
    try {
      return await _httpClient.get(
        path: '$_basePath/artist/$artistId',
        fromJson: (json) => ArtistMetrics(
          artistId: json['artistId'] ?? artistId,
          viewCount: json['viewCount'] ?? 0,
          uniqueViewCount: json['uniqueViewCount'] ?? 0,
        ),
        token: token,
      );
    } catch (e) {
      print('Error getting artist metrics: $e');
      // Return default metrics on error
      return ArtistMetrics(
        artistId: artistId,
        viewCount: 0,
        uniqueViewCount: 0,
      );
    }
  }

  @override
  Future<List<ContentMetrics>> getBatchContentMetrics(
    List<int> contentIds,
    ContentType contentType,
    {String? token}
  ) async {
    try {
      final List<dynamic> result = await _httpClient.get(
        path: '$_basePath/feed',
        queryParams: {
          'contentIds': contentIds.join(','),
          'contentType': contentType.value,
        },
        fromJson: (json) => json['items'] ?? [],
        expectListResponse: true,
        token: token,
      );
      
      return result
          .map((item) => ContentMetrics(
                contentId: item['contentId'] ?? 0,
                contentType: item['contentType'] ?? contentType.value,
                viewCount: item['viewCount'] ?? 0,
                uniqueViewCount: item['uniqueViewCount'] ?? 0,
                likeCount: item['likeCount'] ?? 0,
                userHasLiked: item['userHasLiked'],
              ))
          .toList();
    } catch (e) {
      print('Error getting batch metrics: $e');
      // Return empty list on error
      return [];
    }
  }
} 