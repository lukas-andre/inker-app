import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'session.g.dart';

Session sessionFromJson(String str) => Session.fromJson(json.decode(str));

String sessionToJson(Session data) => json.encode(data.toJson());

@JsonSerializable()
class Session extends Equatable {
  final User user;
  final String accessToken;
  final String expireIn;

  Session(this.user, this.accessToken, this.expireIn);

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  Map<String, dynamic> toJson() => _$SessionToJson(this);

  @override
  List<Object?> get props => [user, accessToken, expireIn];

  @override
  bool get stringify => true;
}
