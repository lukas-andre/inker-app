import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;

part 'get_user_by_social_media_response.g.dart';

GetUserBySocialMediaResponse getUserBySocialMediaResponseFromJson(String str) =>
    GetUserBySocialMediaResponse.fromJson(json.decode(str));

String getUserBySocialMediaResponseToJson(GetUserBySocialMediaResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class GetUserBySocialMediaResponse extends Equatable {
  const GetUserBySocialMediaResponse({
    required this.email,
    required this.username,
    required this.userType,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.logins,
  });

  final String email;
  final String username;
  final String userType;
  final int id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<String> logins;

  factory GetUserBySocialMediaResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserBySocialMediaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetUserBySocialMediaResponseToJson(this);

  @override
  List<Object?> get props =>
      [username, userType, email, id, createdAt, updatedAt, logins];

  @override
  bool get stringify => true;
}
