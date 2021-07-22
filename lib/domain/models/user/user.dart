// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

@JsonSerializable()
class User extends Equatable {
  User({
    required this.id,
    required this.email,
    required this.username,
    required this.fullname,
    required this.userType,
    required this.userTypeId,
    required this.profileThumbnail,
  });

  int id;
  String email;
  String username;
  String fullname;
  String userType;
  int userTypeId;
  dynamic profileThumbnail;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props =>
      [id, email, username, fullname, userType, userTypeId, profileThumbnail];

  @override
  bool get stringify => true;
}
