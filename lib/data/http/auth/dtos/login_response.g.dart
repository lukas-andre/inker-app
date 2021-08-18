// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      id: json['id'] as int,
      email: json['email'] as String,
      username: json['username'] as String,
      fullname: json['fullname'] as String,
      userType: json['userType'] as String,
      userTypeId: json['userTypeId'] as int,
      profileThumbnail: json['profileThumbnail'],
      permission: (json['permision'] as List<dynamic>)
          .map((e) => Permision.fromJson(e as Map<String, dynamic>))
          .toList(),
      accessToken: json['accessToken'] as String,
      expiresIn: json['expiresIn'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'fullname': instance.fullname,
      'userType': instance.userType,
      'userTypeId': instance.userTypeId,
      'profileThumbnail': instance.profileThumbnail,
      'permision': instance.permission,
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
    };

Permision _$PermisionFromJson(Map<String, dynamic> json) => Permision(
      c: json['c'] as String,
      a: json['a'] as String,
    );

Map<String, dynamic> _$PermisionToJson(Permision instance) => <String, dynamic>{
      'c': instance.c,
      'a': instance.a,
    };
