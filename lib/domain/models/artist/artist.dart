import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  const factory Artist({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int userId,
    required String username,
    required String firstName,
    required String lastName,
    required String shortDescription,
    String? profileThumbnail,
    List<String>? tags,
    List<String>? genres,
    @Default(0.0) double rating,
    String? studioPhoto,
    DateTime? deletedAt,
    @Default(0) int followers,
    @Default(0) int follows,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

Artist artistFromJson(String str) => Artist.fromJson(json.decode(str));
String artistToJson(Artist data) => json.encode(data.toJson());
