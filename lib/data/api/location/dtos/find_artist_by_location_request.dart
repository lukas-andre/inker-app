import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'find_artist_by_location_request.g.dart';

FindArtistByLocationRequest findArtistByLocationRequestFromJson(String str) =>
    FindArtistByLocationRequest.fromJson(json.decode(str));
String findArtistByLocationRequestToJson(FindArtistByLocationRequest data) =>
    json.encode(data.toJson());

@JsonSerializable()
class FindArtistByLocationRequest {
  FindArtistByLocationRequest({
    required this.range,
    required this.lat,
    required this.lng,
  });

  final double? range;
  final double? lat;
  final double? lng;

  factory FindArtistByLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$FindArtistByLocationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FindArtistByLocationRequestToJson(this);
}
