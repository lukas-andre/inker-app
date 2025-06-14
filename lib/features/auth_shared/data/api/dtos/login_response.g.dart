// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map json) => LoginResponse(
      id: json['id'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      fullname: json['fullname'] as String,
      userType: json['userType'] as String,
      userTypeId: json['userTypeId'] as String,
      profileThumbnail: json['profileThumbnail'],
      permission: (json['permission'] as List<dynamic>)
          .map((e) => Permision.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      accessToken: json['accessToken'] as String,
      expiresIn: json['expiresIn'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'email': instance.email,
    'username': instance.username,
    'fullname': instance.fullname,
    'userType': instance.userType,
    'userTypeId': instance.userTypeId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profileThumbnail', instance.profileThumbnail);
  val['permission'] = instance.permission.map((e) => e.toJson()).toList();
  val['accessToken'] = instance.accessToken;
  val['expiresIn'] = instance.expiresIn;
  return val;
}

Permision _$PermisionFromJson(Map json) => Permision(
      c: json['c'] as String,
      a: json['a'] as String,
    );

Map<String, dynamic> _$PermisionToJson(Permision instance) => <String, dynamic>{
      'c': instance.c,
      'a': instance.a,
    };
