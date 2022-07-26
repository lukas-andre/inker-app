import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'create_artist_user_response.g.dart';

CreateArtistUserResponse createArtistUserResponseFromJson(String str) =>
    CreateArtistUserResponse.fromJson(json.decode(str));
String createArtistUserResponseToJson(CreateArtistUserResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class CreateArtistUserResponse {
  CreateArtistUserResponse({
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

  factory CreateArtistUserResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateArtistUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateArtistUserResponseToJson(this);
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
