import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/metrics/metrics.dart';
import 'package:inker_studio/domain/models/tag/tag.dart';
import 'dart:convert';
import 'package:inker_studio/domain/models/quotation/quotation.dart'; // For Money

part 'stencil.freezed.dart';
part 'stencil.g.dart';

enum StencilStatus {
  @JsonValue('AVAILABLE')
  available,
  @JsonValue('UNAVAILABLE')
  unavailable,
}

@freezed
class Stencil with _$Stencil {
  const factory Stencil({
    required String id,
    required String artistId,
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
    Artist? artist,
    @Default(0) int viewCount,
    @Default(0) int likeCount,
    @Default(false) bool isLikedByUser,
    Metrics? metrics,
    String? imageId,
    Money? price,
    StencilStatus? status,
    String? dimensions,
    // @Default([]) List<String> recommendedPlacements,
    int? estimatedTime,
    @Default(false) bool isCustomizable,
    @Default(false) bool isDownloadable,
    @Default(false) bool isAvailable,
    String? license,
    String? licenseUrl,
  }) = _Stencil;

  factory Stencil.fromJson(Map<String, dynamic> json) => _$StencilFromJson(json);
}

Stencil stencilFromJson(String str) => Stencil.fromJson(json.decode(str));
String stencilToJson(Stencil data) => json.encode(data.toJson());
