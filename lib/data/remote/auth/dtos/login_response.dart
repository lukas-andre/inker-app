// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

@JsonSerializable()
class LoginResponse {
  LoginResponse({
    required this.id,
    required this.email,
    required this.username,
    required this.fullname,
    required this.userType,
    required this.userTypeId,
    required this.profileThumbnail,
    required this.permision,
    required this.accessToken,
    required this.expireIn,
  });

  int id;
  String email;
  String username;
  String fullname;
  String userType;
  int userTypeId;
  dynamic profileThumbnail;
  List<Permision> permision;
  String accessToken;
  String expireIn;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class Permision {
  Permision({
    required this.c,
    required this.a,
  });

  String c;
  String a;

  factory Permision.fromJson(Map<String, dynamic> json) =>
      _$PermisionFromJson(json);

  Map<String, dynamic> toJson() => _$PermisionToJson(this);
}
