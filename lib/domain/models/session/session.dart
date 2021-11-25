import 'dart:convert' show json;

import 'package:equatable/equatable.dart' show Equatable;
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;

part 'session.g.dart';

Session sessionFromJson(String str) => Session.fromJson(json.decode(str));

String sessionToJson(Session data) => json.encode(data.toJson());

@JsonSerializable()
class Session extends Equatable {
  static const empty = Session(User.empty, '', '', '', null, null);

  final User? user;
  final String sessionType;
  final String accessToken;
  final String expireIn;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Session(this.user, this.sessionType, this.accessToken, this.expireIn,
      [this.createdAt, this.updatedAt]);

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  Map<String, dynamic> toJson() => _$SessionToJson(this);

  @override
  List<Object?> get props =>
      [user, sessionType, accessToken, expireIn, createdAt, updatedAt];

  @override
  bool get stringify => true;
}
