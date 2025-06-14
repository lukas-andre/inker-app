// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert' show json;

import 'package:equatable/equatable.dart' show Equatable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;

part 'user.g.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

@JsonSerializable()
class User extends Equatable {
  const User({
    required this.id,
    this.uid,
    this.email,
    this.username,
    this.fullname,
    this.userType,
    this.userTypeId,
    this.profileThumbnail,
  });

  final String id;
  final String? uid;
  final String? email;
  final String? username;
  final String? fullname;
  final String? userType;
  final String? userTypeId;
  final dynamic profileThumbnail;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const empty = User(
    id: '',
  );

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props =>
      [id, email, username, fullname, userType, userTypeId, profileThumbnail];

  @override
  bool get stringify => true;
}
