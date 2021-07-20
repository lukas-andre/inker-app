import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

// LoginRequest loginRequestFromJson(String str) =>
//     LoginRequest.fromJson(json.decode(str));

// String loginRequestToJson(LoginRequest data) => json.encode(data.toJson());

@JsonSerializable()
class LoginRequest {
  LoginRequest({
    required this.identifier,
    required this.password,
    required this.loginType,
  });

  String identifier;
  String password;
  String loginType;

  // factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
  //     identifier: json["identifier"],
  //     password: json["password"],
  //     loginType: json["loginType"],
  // );

  // Map<String, dynamic> toJson() => {
  //     "identifier": identifier,
  //     "password": password,
  //     "loginType": loginType,
  // };
}
