import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  const factory Artist({
    required int id,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? userId,
    String? username,
    String? firstName,
    String? lastName,
    String? shortDescription,
    String? profileThumbnail,
    int? profileThumbnailVersion,
    List<String>? tags,
    List<String>? genres,
    String? rating,
    String? studioPhoto,
    int? studioPhotoVersion,
    DateTime? deletedAt,
    Contact? contact,
    @Default(0) int followers,
    @Default(0) int follows,
    bool? isFollowedByUser,
    String? distanceUnit,
    double? distance,
    Review? review,
    int? worksCount,
    int? stencilsCount,
    int? visibleWorksCount,
    int? visibleStencilsCount,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
     int? id,
     DateTime? createdAt,
     DateTime? updatedAt,
    required String email,
    required String phone,
    String? phoneDialCode,
    String? phoneCountryIsoCode,
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

@freezed
class Review with _$Review {
  const factory Review({
    int? artistId,
    double? value,
    Map<String, int>? detail,
    int? count,
    double? avgRating,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
