import 'package:inker_studio/data/api/notifications/api_notifications_service.dart';
import 'package:inker_studio/domain/models/notifications/notification.dart';

abstract class NotificationsService {
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

class NotificationsServiceImpl implements NotificationsService {
  final ApiNotificationsService _apiNotificationsService;

  NotificationsServiceImpl(this._apiNotificationsService);

  @override
  Future<NotificationsResponse> getNotifications({
    int page = 1,
    int limit = 10,
    required String token,
    String? type,
  }) {
    return _apiNotificationsService.getNotifications(
      page: page,
      limit: limit,
      type: type,
      token: token,
    );
  }

  @override
  Future<void> markAsRead(String id, String token) {
    return _apiNotificationsService.markAsRead(id, token);
  }

  @override
  Future<void> markAllAsRead(String token) {
    return _apiNotificationsService.markAllAsRead(token);
  }

  @override
  Future<void> deleteNotification(String id, String token) {
    return _apiNotificationsService.deleteNotification(id, token);
  }
}