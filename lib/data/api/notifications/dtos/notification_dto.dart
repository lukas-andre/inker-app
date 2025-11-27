import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

@freezed
class NotificationDto with _$NotificationDto {
  const factory NotificationDto({
    required String id,
    required String title,
    required String body,
    required String type,
    required Map<String, dynamic> data,
    required bool read,
    required DateTime createdAt,
  }) = _NotificationDto;

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);
}

@freezed
class NotificationsResponseDto with _$NotificationsResponseDto {
  const factory NotificationsResponseDto({
    required List<NotificationDto> items,
    required int page,
    required int limit,
    required int total,
    required int pages,
    required int unreadCount,
  }) = _NotificationsResponseDto;

  factory NotificationsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationsResponseDtoFromJson(json);
}