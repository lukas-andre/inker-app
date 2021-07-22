// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      email: json['email'] as String,
      username: json['username'] as String,
      fullname: json['fullname'] as String,
      userType: json['userType'] as String,
      userTypeId: json['userTypeId'] as int,
      profileThumbnail: json['profileThumbnail'],
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'fullname': instance.fullname,
      'userType': instance.userType,
      'userTypeId': instance.userTypeId,
      'profileThumbnail': instance.profileThumbnail,
    };
