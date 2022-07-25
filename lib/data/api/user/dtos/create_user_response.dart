import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'create_user_response.g.dart';

CreateUserResponse createUserResponseFromJson(String str) =>
    CreateUserResponse.fromJson(json.decode(str));
String createUserResponseToJson(CreateUserResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class CreateUserResponse {
  CreateUserResponse({
    required this.userId,
    required this.username,
    required this.firstName,
    required this.lastName,
    this.shortDescription,
    this.profileThumbnail,
    this.tags,
    this.genres,
    required this.rating,
    required this.id,
    required this.contact,
  });

  final int id;
  final int userId;
  final String username;
  final String firstName;
  final String lastName;
  final String? shortDescription;
  final String? profileThumbnail;
  final dynamic tags;
  final dynamic genres;
  final Contact contact;
  final int rating;

  factory CreateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateUserResponseToJson(this);
}

@JsonSerializable()
class Contact {
  Contact({
    required this.email,
    required this.phone,
    required this.phoneDialCode,
    required this.phoneCountryIsoCode,
    required this.id,
  });

  final String? email;
  final String? phone;
  final String? phoneDialCode;
  final String? phoneCountryIsoCode;
  final int? id;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  Map<String, dynamic> toJson() => _$ContactToJson(this);
}
