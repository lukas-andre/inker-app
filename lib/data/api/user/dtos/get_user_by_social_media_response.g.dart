// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_by_social_media_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserBySocialMediaResponse _$GetUserBySocialMediaResponseFromJson(Map json) =>
    GetUserBySocialMediaResponse(
      email: json['email'] as String,
      username: json['username'] as String,
      userType: json['userType'] as String,
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      logins:
          (json['logins'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$GetUserBySocialMediaResponseToJson(
        GetUserBySocialMediaResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'userType': instance.userType,
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'logins': instance.logins,
    };
