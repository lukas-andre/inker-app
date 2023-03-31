// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert' show json;

import 'package:equatable/equatable.dart' show Equatable;
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:json_annotation/json_annotation.dart'
    show $enumDecode, JsonSerializable;

part 'registered_user_info.g.dart';

RegisteredUserInfo createdUserFromJson(String str) =>
    RegisteredUserInfo.fromJson(json.decode(str));
String createdUserToJson(RegisteredUserInfo data) => json.encode(data.toJson());

@JsonSerializable()
class RegisteredUserInfo extends Equatable {
  const RegisteredUserInfo({
    required this.userId,
    required this.userType,
    required this.phoneNumber,
    required this.email,
  });

  final int userId;
  final String phoneNumber;
  final String email;
  final UserTypeEnum userType;

  factory RegisteredUserInfo.fromJson(Map<String, dynamic> json) =>
      _$RegisteredUserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$RegisteredUserInfoToJson(this);

  @override
  List<Object?> get props => [userId, userType];

  @override
  bool get stringify => true;
}
