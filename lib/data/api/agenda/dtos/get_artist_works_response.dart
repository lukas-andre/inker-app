// To parse this JSON data, do
//
//     final getArtistWorksResponse = getArtistWorksResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/work/work.dart' show Work;
import 'dart:convert';

import 'package:inker_studio/domain/models/work_evidence/work_evidence.dart';

part 'get_artist_works_response.freezed.dart';
part 'get_artist_works_response.g.dart';

GetArtistWorksResponse getArtistWorksResponseFromJson(String str) =>
    GetArtistWorksResponse.fromJson(json.decode(str));

String getArtistWorksResponseToJson(GetArtistWorksResponse data) =>
    json.encode(data.toJson());

@freezed
class GetArtistWorksResponse with _$GetArtistWorksResponse {
  const factory GetArtistWorksResponse({
    List<WorkItem>? items,
    Meta? meta,
  }) = _GetArtistWorksResponse;

  factory GetArtistWorksResponse.fromJson(Map<String, dynamic> json) =>
      _$GetArtistWorksResponseFromJson(json);
}

@freezed
class WorkItem with _$WorkItem {
  const factory WorkItem({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? customerId,
    String? title,
    DateTime? start,
    DateTime? end,
    String? color,
    String? info,
    bool? notification,
    bool? done,
    WorkEvidence? workEvidence,
    dynamic deletedAt,
    Review? review,
  }) = _WorkItem;

  factory WorkItem.fromJson(Map<String, dynamic> json) =>
      _$WorkItemFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? artistId,
    String? eventId,
    int? value,
    String? header,
    String? content,
    ReviewReactions? reviewReactions,
    String? createdBy,
    String? displayName,
    bool? isRated,
    CustomerReviewDetail? customerReviewDetail,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class CustomerReviewDetail with _$CustomerReviewDetail {
  const factory CustomerReviewDetail({
    int? reviewReactionId,
    bool? liked,
    bool? disliked,
  }) = _CustomerReviewDetail;

  factory CustomerReviewDetail.fromJson(Map<String, dynamic> json) =>
      _$CustomerReviewDetailFromJson(json);
}

@freezed
class ReviewReactions with _$ReviewReactions {
  const factory ReviewReactions({
    int? likes,
    int? dislikes,
    int? offs,
  }) = _ReviewReactions;

  factory ReviewReactions.fromJson(Map<String, dynamic> json) =>
      _$ReviewReactionsFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    int? totalItems,
    int? itemCount,
    int? itemsPerPage,
    int? totalPages,
    int? currentPage,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
