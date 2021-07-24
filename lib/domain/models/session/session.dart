import 'dart:convert' show json;

import 'package:equatable/equatable.dart' show Equatable;
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
import 'package:inker_studio/domain/models/user/user.dart';

part 'session.g.dart';

Session sessionFromJson(String str) => Session.fromJson(json.decode(str));

String sessionToJson(Session data) => json.encode(data.toJson());

// TODO: AGREGAR CREATED_AT Y UPDATED_AT A ESTO
@JsonSerializable()
class Session extends Equatable {
  static const empty = Session(null, '', '', null);

  final User? user;
  final String accessToken;
  final String expireIn;
  final DateTime? createdAt;

  const Session(this.user, this.accessToken, this.expireIn, this.createdAt);

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  Map<String, dynamic> toJson() => _$SessionToJson(this);

  @override
  List<Object?> get props => [user, accessToken, expireIn];

  @override
  bool get stringify => true;
}
