// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDtoImpl _$$NotificationDtoImplFromJson(Map json) =>
    _$NotificationDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      type: json['type'] as String,
      data: Map<String, dynamic>.from(json['data'] as Map),
      read: json['read'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$NotificationDtoImplToJson(
        _$NotificationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'type': instance.type,
      'data': instance.data,
      'read': instance.read,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$NotificationsResponseDtoImpl _$$NotificationsResponseDtoImplFromJson(
        Map json) =>
    _$NotificationsResponseDtoImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              NotificationDto.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      unreadCount: (json['unreadCount'] as num).toInt(),
    );

Map<String, dynamic> _$$NotificationsResponseDtoImplToJson(
        _$NotificationsResponseDtoImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.total,
      'pages': instance.pages,
      'unreadCount': instance.unreadCount,
    };
