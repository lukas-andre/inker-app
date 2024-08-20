// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisteredUserInfo _$RegisteredUserInfoFromJson(Map json) => RegisteredUserInfo(
      userId: (json['userId'] as num).toInt(),
      userType: $enumDecode(_$UserTypeEnumEnumMap, json['userType']),
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$RegisteredUserInfoToJson(RegisteredUserInfo instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'userType': _$UserTypeEnumEnumMap[instance.userType]!,
    };

const _$UserTypeEnumEnumMap = {
  UserTypeEnum.customer: 'CUSTOMER',
  UserTypeEnum.artist: 'ARTIST',
};
