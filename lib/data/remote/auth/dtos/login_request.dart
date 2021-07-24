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

  LoginRequest(this.identifier, this.password, this.loginType);

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [identifier, password, loginType];

  @override
  bool get stringify => true;
}
