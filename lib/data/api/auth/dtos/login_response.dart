import 'dart:convert' show json;

import 'package:equatable/equatable.dart' show Equatable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;

part 'login_response.g.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

@JsonSerializable()
class LoginResponse extends Equatable {
  const LoginResponse({
    required this.id,
    required this.email,
    required this.username,
    required this.fullname,
    required this.userType,
    required this.userTypeId,
    required this.profileThumbnail,
    required this.permission,
    required this.accessToken,
    required this.expiresIn,
  });

  final String id;
  final String email;
  final String username;
  final String fullname;
  final String userType;
  final String userTypeId;
  final dynamic profileThumbnail;
  final List<Permision> permission;
  final String accessToken;
  final String expiresIn;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  @override
  List<Object?> get props => [
        id,
        email,
        username,
        fullname,
        userType,
        userTypeId,
        profileThumbnail,
        permission,
        accessToken,
        expiresIn,
      ];

  @override
  bool get stringify => true;
}

@JsonSerializable()
class Permision extends Equatable {
  const Permision({
    required this.c,
    required this.a,
  });

  final String c;
  final String a;

  factory Permision.fromJson(Map<String, dynamic> json) =>
      _$PermisionFromJson(json);

  Map<String, dynamic> toJson() => _$PermisionToJson(this);

  @override
  List<Object?> get props => [c, a];

  @override
  bool get stringify => true;
}
