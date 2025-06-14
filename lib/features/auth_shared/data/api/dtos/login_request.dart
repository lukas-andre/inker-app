import 'dart:convert' show json;

import 'package:equatable/equatable.dart' show Equatable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;

part 'login_request.g.dart';

LoginRequest loginRequestFromJson(String str) =>
    LoginRequest.fromJson(json.decode(str));

String loginRequestToJson(LoginRequest data) => json.encode(data.toJson());



@JsonSerializable()
class LoginRequest extends Equatable {
  final String identifier;
  final String password;
  final String loginType;
  final String fcmToken;
  // Important: This field is not a Enum, it's a String that can be "android" or "ios"
  final String deviceType;

  const LoginRequest(
      {required this.identifier,
      required this.password,
      required this.loginType,
      required this.fcmToken,
      required this.deviceType});

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  @override
  List<Object?> get props => [identifier, password, loginType];

  @override
  bool get stringify => true;
}
