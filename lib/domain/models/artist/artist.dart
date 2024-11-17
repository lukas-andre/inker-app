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
    String? shortDescription,
    String? profileThumbnail,
    int? profileThumbnailVersion,
    List<String>? tags,
    List<String>? genres,
    @Default(0.0) double rating,
    String? studioPhoto,
    int? studioPhotoVersion,
    DateTime? deletedAt,
    Contact? contact,
    @Default([]) List<Service> services,
    @Default(0) int followers,
    @Default(0) int follows,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String email,
    required String phone,
    required String phoneDialCode,
    required String phoneCountryIsoCode,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String name,
    required String description,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}

Artist artistFromJson(String str) => Artist.fromJson(json.decode(str));
String artistToJson(Artist data) => json.encode(data.toJson());
