// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map json) => User(
      id: json['id'] as int,
      uid: json['uid'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      fullname: json['fullname'] as String?,
      userType: json['userType'] as String?,
      userTypeId: json['userTypeId'] as int?,
      profileThumbnail: json['profileThumbnail'],
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('email', instance.email);
  writeNotNull('username', instance.username);
  writeNotNull('fullname', instance.fullname);
  writeNotNull('userType', instance.userType);
  writeNotNull('userTypeId', instance.userTypeId);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  return val;
}
