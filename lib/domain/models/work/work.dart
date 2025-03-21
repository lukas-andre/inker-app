import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/work/dtos/work_dto.dart';

part 'work.freezed.dart';
part 'work.g.dart';

@freezed
class Work with _$Work {
  const factory Work({
    required int id,
    required int artistId,
    required String title,
    String? description,
    required String imageUrl,
    String? thumbnailUrl,
    required int imageVersion,
    required int thumbnailVersion,
    @Default(false) bool isFeatured,
    @Default(0) int orderPosition,
    required WorkSource source,
    @Default(false) bool isHidden,
    @Default(0) int viewCount,
    @Default(0) int likeCount,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? deletedAt,
    List<Tag>? tags,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}

@freezed
class Tag with _$Tag {
  const factory Tag({
    required int id,
    required String name,
    String? createdBy,
    int? count,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}