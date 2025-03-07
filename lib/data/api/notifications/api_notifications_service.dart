import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/notifications/dtos/notification_dto.dart';
import 'package:inker_studio/domain/models/notifications/notification.dart';

abstract class ApiNotificationsService {
  Future<NotificationsResponse> getNotifications({
    int page = 1,
    int limit = 10,
    required String token,
    String? type,
  });

  Future<void> markAsRead(String id, String token);

  Future<void> markAllAsRead(String token);

  Future<void> deleteNotification(String id, String token);
}

class ApiNotificationsServiceImpl implements ApiNotificationsService {
  final HttpClientService _httpClient;

  ApiNotificationsServiceImpl(this._httpClient);

  @override
  Future<NotificationsResponse> getNotifications({
    int page = 1,
    int limit = 10,
    required String token,
    String? type,
  }) async {
    final Map<String, dynamic> queryParams = {
      'page': page.toString(),
      'limit': limit.toString(),
    };

    if (type != null) {
      queryParams['type'] = type;
    }

    final response = await _httpClient.get(
      path: '/notifications',
      queryParams: queryParams,
      fromJson: (json) => NotificationsResponseDto.fromJson(json),
      token: token,
    );

    return NotificationsResponse.fromDto(response);
  }

  @override
  Future<void> markAsRead(String id, String token) async {
    await _httpClient.put(
      path: '/notifications/$id/read',
      body: {},
      token: token,
      fromJson: (json) => NotificationsResponseDto.fromJson(json),
    );
  }

  @override
  Future<void> markAllAsRead(String token) async {
    await _httpClient.put(
      path: '/notifications/read-all',
      body: {},
      token: token,
      fromJson: (json) => NotificationsResponseDto.fromJson(json),
    );
  }

  @override
  Future<void> deleteNotification(String id, String token) async {
    await _httpClient.delete(
      path: '/notifications/$id',
      body: {},
      token: token,
    );
  }
}