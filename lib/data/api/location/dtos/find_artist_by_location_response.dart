// To parse this JSON data, do
//
//     final findArtistByLocationResponse = findArtistByLocationResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:inker_studio/domain/models/artist/artist.dart';

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



