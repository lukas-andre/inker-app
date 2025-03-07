import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/notifications/dtos/notification_dto.dart';

part 'notification.freezed.dart';

@freezed
class InkerNotification with _$InkerNotification {
  const factory InkerNotification({
    required String id,
    required String title,
    required String body,
    required String type,
    required Map<String, dynamic> data,
    required bool read,
    required DateTime createdAt,
  }) = _InkerNotification;

  factory InkerNotification.fromDto(NotificationDto dto) {
    return InkerNotification(
      id: dto.id,
      title: dto.title,
      body: dto.body,
      type: dto.type,
      data: dto.data,
      read: dto.read,
      createdAt: dto.createdAt,
    );
  }
}

@freezed
class NotificationsResponse with _$NotificationsResponse {
  const factory NotificationsResponse({
    required List<InkerNotification> items,
    required int page,
    required int limit,
    required int total,
    required int pages,
    required int unreadCount,
  }) = _NotificationsResponse;

  factory NotificationsResponse.fromDto(NotificationsResponseDto dto) {
    return NotificationsResponse(
      items: dto.items.map((e) => InkerNotification.fromDto(e)).toList(),
      page: dto.page,
      limit: dto.limit,
      total: dto.total,
      pages: dto.pages,
      unreadCount: dto.unreadCount,
    );
  }
}