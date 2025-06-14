import 'dart:convert' show json;
import 'dart:convert';

import 'package:equatable/equatable.dart' show Equatable;
import 'package:equatable/equatable.dart';
import 'package:inker_studio/features/auth/models/user/user.dart';

class Session extends Equatable {
  static const empty = Session(
      user: User.empty,
      accessToken: '',
      expireIn: '',
      sessionType: '',
      createdAt: null,
      updatedAt: null);

  final User? user;
  final String sessionType;
  final String accessToken;
  final String expireIn;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Session({
    this.user,
    required this.sessionType,
    required this.accessToken,
    required this.expireIn,
    this.createdAt,
    this.updatedAt,
  });

  Session copyWith({
    User? user,
    String? sessionType,
    String? accessToken,
    String? expireIn,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Session(
      user: user ?? this.user,
      sessionType: sessionType ?? this.sessionType,
      accessToken: accessToken ?? this.accessToken,
      expireIn: expireIn ?? this.expireIn,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user': user?.toJson(),
      'sessionType': sessionType,
      'accessToken': accessToken,
      'expireIn': expireIn,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
    };
  }

  factory Session.fromMap(Map<String, dynamic> map) {
    return Session(
      user: map['user'] != null ? User.fromJson(map['user']) : null,
      sessionType: map['sessionType'] ?? '',
      accessToken: map['accessToken'] ?? '',
      expireIn: map['expireIn'] ?? '',
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'])
          : null,
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Session.fromJson(String source) =>
      Session.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Session(user: $user, sessionType: $sessionType, accessToken: $accessToken, expireIn: $expireIn, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  List<Object?> get props {
    return [
      user,
      sessionType,
      accessToken,
      expireIn,
      createdAt,
      updatedAt,
    ];
  }
}
