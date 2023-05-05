// To parse this JSON data, do
//
//     final findArtistByLocationResponse = findArtistByLocationResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'find_artist_by_location_response.freezed.dart';
part 'find_artist_by_location_response.g.dart';

List<FindArtistByLocationResponse> findArtistByLocationResponseFromJson(
        String str) =>
    List<FindArtistByLocationResponse>.from(
        json.decode(str).map((x) => FindArtistByLocationResponse.fromJson(x)));

String findArtistByLocationResponseToJson(
        List<FindArtistByLocationResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class FindArtistByLocationResponse with _$FindArtistByLocationResponse {
  const factory FindArtistByLocationResponse({
    int? id,
    int? artistId,
    String? name,
    String? country,
    String? address1,
    String? address2,
    String? address3,
    double? lat,
    double? lng,
    String? addressType,
    String? formattedAddress,
    String? city,
    String? googlePlaceId,
    String? distanceUnit,
    double? distance,
    Artist? artist,
  }) = _FindArtistByLocationResponse;

  factory FindArtistByLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$FindArtistByLocationResponseFromJson(json);
}

@freezed
class Artist with _$Artist {
  const factory Artist({
    Contact? contact,
    int? id,
    String? username,
    String? firstName,
    String? lastName,
    dynamic? studioPhoto,
    String? shortDescription,
    dynamic? profileThumbnail,
    int? rating,
    Review? review,
    int? followers,
    bool? isFollowedByUser,
    String? distanceUnit,
    double? distance,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    String? phone,
    String? email,
    String? country,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    int? artistId,
    double? value,
    Map<String, int>? detail,
    int? count,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
