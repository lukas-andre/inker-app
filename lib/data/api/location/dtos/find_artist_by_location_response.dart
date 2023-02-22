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
    dynamic? shortDescription,
    dynamic? profileThumbnail,
    int? rating,
    List<ReviewElement>? reviews,
    Review? review,
    List<RecentWork>? recentWorks,
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
class RecentWork with _$RecentWork {
  const factory RecentWork({
    String? title,
    int? customerId,
    WorkEvidence? workEvidence,
    int? agendaId,
    int? eventId,
    int? artistId,
  }) = _RecentWork;

  factory RecentWork.fromJson(Map<String, dynamic> json) =>
      _$RecentWorkFromJson(json);
}

@freezed
class WorkEvidence with _$WorkEvidence {
  const factory WorkEvidence({
    int? count,
    List<MultimediaMetadata>? metadata,
  }) = _WorkEvidence;

  factory WorkEvidence.fromJson(Map<String, dynamic> json) =>
      _$WorkEvidenceFromJson(json);
}

@freezed
class MultimediaMetadata with _$MultimediaMetadata {
  const factory MultimediaMetadata({
    String? url,
    int? size,
    String? type,
    String? encoding,
    int? position,
    String? fieldname,
    String? originalname,
  }) = _MultimediaMetadata;

  factory MultimediaMetadata.fromJson(Map<String, dynamic> json) =>
      _$MultimediaMetadataFromJson(json);
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

@freezed
class ReviewElement with _$ReviewElement {
  const factory ReviewElement({
    DateTime? createdAt,
    int? artistId,
    int? eventId,
    int? value,
    dynamic? header,
    String? content,
    ReviewReactions? reviewReactions,
    int? createdBy,
    String? displayName,
    bool? isRated,
  }) = _ReviewElement;

  factory ReviewElement.fromJson(Map<String, dynamic> json) =>
      _$ReviewElementFromJson(json);
}

@freezed
class ReviewReactions with _$ReviewReactions {
  const factory ReviewReactions({
    int? likes,
    int? dislikes,
  }) = _ReviewReactions;

  factory ReviewReactions.fromJson(Map<String, dynamic> json) =>
      _$ReviewReactionsFromJson(json);
}
