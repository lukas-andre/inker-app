// To parse this JSON data, do
//
//     final getReviewsResponse = getReviewsResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_reviews_response.freezed.dart';
part 'get_reviews_response.g.dart';

GetReviewsResponse getReviewsResponseFromJson(String str) =>
    GetReviewsResponse.fromJson(json.decode(str));

String getReviewsResponseToJson(GetReviewsResponse data) =>
    json.encode(data.toJson());

@freezed
class GetReviewsResponse with _$GetReviewsResponse {
  const factory GetReviewsResponse({
    List<ReviewItem>? items,
    Meta? meta,
  }) = _GetReviewsResponse;

  factory GetReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetReviewsResponseFromJson(json);
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

@freezed
class ReviewItem with _$ReviewItem {
  const factory ReviewItem({
    String? id,
    DateTime? createdAt,
    String? artistId,
    String? eventId,
    int? value,
    String? header,
    String? content,
    ReviewReactions? reviewReactions,
    String? createdBy,
    String? displayName,
    bool? isRated,
    CustomerReactionDetail? customerReactionDetail,
  }) = _ReviewItem;

  factory ReviewItem.fromJson(Map<String, dynamic> json) =>
      _$ReviewItemFromJson(json);
}

@freezed
class CustomerReactionDetail with _$CustomerReactionDetail {
  const factory CustomerReactionDetail({
    String? reviewReactionId,
    bool? liked,
    bool? disliked,
  }) = _CustomerReactionDetail;

  factory CustomerReactionDetail.fromJson(Map<String, dynamic> json) =>
      _$CustomerReactionDetailFromJson(json);
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
