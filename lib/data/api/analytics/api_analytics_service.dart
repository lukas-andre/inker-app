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

      // La API ahora devuelve un objeto AnalyticsInteractionResponse
      final response = await _httpClient.post(
        path: '$_basePath/interactions',
        body: request,
        fromJson: (json) => AnalyticsInteractionResponse.fromJson(json),
        token: token,
      );
      
      // Para interacciones de like, verificamos si el usuario actual está en la lista de userIds
      if (interactionType == InteractionType.like) {
        // Si el response.result es false, algo falló en el servidor
        if (!response.result) {
          return null;
        }
        
        // Comprobamos si hay algún ID de usuario en el array userIds
        // En el contexto actual, solo necesitamos saber si el usuario ha dado like o no
        return response.state.userIds.isNotEmpty;
      }
      
      return null;
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
      final response = await _httpClient.get(
        path: '$_basePath/content/$contentId',
        queryParams: {'type': contentType.value},
        fromJson: (json) {
          // Comprobamos si hay una estructura de state en la respuesta
          final state = json['state'] as Map<String, dynamic>?;
          // Comprobamos si hay una estructura de metrics en la respuesta
          final metrics = json['metrics'] as Map<String, dynamic>?;
          
          return ContentMetrics(
            contentId: json['contentId'] ?? contentId,
            contentType: json['contentType'] ?? contentType.value,
            // Usamos la estructura nueva si está disponible
            viewCount: metrics?['viewCount'] ?? json['viewCount'] ?? 0,
            uniqueViewCount: metrics?['uniqueViewCount'] ?? json['uniqueViewCount'] ?? 0,
            likeCount: state?['count'] ?? json['likeCount'] ?? 0,
            // Verificamos si el usuario actual está en el array de userIds
            userHasLiked: state?['userIds'] != null 
              ? (state!['userIds'] as List).isNotEmpty 
              : json['userHasLiked'],
          );
        },
        token: token,
        skipCache: true,  // Para asegurarnos de obtener los datos más actualizados
      );
      
      return response;
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
        skipCache: true,  // Para asegurarnos de obtener los datos más actualizados
      );
      
      return result
          .map((item) {
            // Comprobamos si hay una estructura de state en la respuesta
            final state = item['state'] as Map<String, dynamic>?;
            // Comprobamos si hay una estructura de metrics en la respuesta
            final metrics = item['metrics'] as Map<String, dynamic>?;
            
            return ContentMetrics(
              contentId: item['contentId'] ?? 0,
              contentType: item['contentType'] ?? contentType.value,
              // Usamos la estructura nueva si está disponible
              viewCount: metrics?['viewCount'] ?? item['viewCount'] ?? 0,
              uniqueViewCount: metrics?['uniqueViewCount'] ?? item['uniqueViewCount'] ?? 0,
              likeCount: state?['count'] ?? item['likeCount'] ?? 0,
              // Verificamos si el usuario actual está en el array de userIds
              userHasLiked: (state?['userIds'] is List) 
                ? (state!['userIds'] as List).isNotEmpty 
                : item['userHasLiked'],
            );
          })
          .toList();
    } catch (e) {
      print('Error getting batch metrics: $e');
      // Return empty list on error
      return [];
    }
  }
} 