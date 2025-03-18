import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'stencil.freezed.dart';
part 'stencil.g.dart';

@freezed
class Stencil with _$Stencil {
  const factory Stencil({
    required int id,
    required int artistId,
    required String title,
    String? description,
    required String imageUrl,
    required int imageVersion,
    String? thumbnailUrl,
    int? thumbnailVersion,
    @Default(false) bool isFeatured,
    @Default(0) int orderPosition,
    @Default(false) bool isHidden,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? deletedAt,
    List<Tag>? tags,
    @Default(0) int viewCount,
    @Default(0) int likeCount,
    @Default(false) bool isLikedByUser,
  }) = _Stencil;

  factory Stencil.fromJson(Map<String, dynamic> json) => _$StencilFromJson(json);
}

@freezed
class Tag with _$Tag {
  const factory Tag({
    required int id,
    required String name,
    @Default(0) int count,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

Stencil stencilFromJson(String str) => Stencil.fromJson(json.decode(str));
String stencilToJson(Stencil data) => json.encode(data.toJson());