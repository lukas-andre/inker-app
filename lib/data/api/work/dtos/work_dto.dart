import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_dto.freezed.dart';
part 'work_dto.g.dart';

enum WorkSource {
  @JsonValue('APP')
  app,
  @JsonValue('EXTERNAL')
  external
}

@freezed
class CreateWorkDto with _$CreateWorkDto {
  const factory CreateWorkDto({
    required String title,
    String? description,
    String? imageUrl,
    String? thumbnailUrl,
    @Default(false) bool isFeatured,
    @Default(0) int orderPosition,
    @Default(false) bool isHidden,
    List<int>? tagIds,
    @Default(WorkSource.app) WorkSource source,
  }) = _CreateWorkDto;

  factory CreateWorkDto.fromJson(Map<String, dynamic> json) =>
      _$CreateWorkDtoFromJson(json);
}

@freezed
class UpdateWorkDto with _$UpdateWorkDto {
  const factory UpdateWorkDto({
    String? title,
    String? description,
    String? imageUrl,
    String? thumbnailUrl,
    bool? isFeatured,
    int? orderPosition,
    bool? isHidden,
    List<int>? tagIds,
    WorkSource? source,
  }) = _UpdateWorkDto;

  factory UpdateWorkDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateWorkDtoFromJson(json);
}

@freezed
class TagSuggestionResponseDto with _$TagSuggestionResponseDto {
  const factory TagSuggestionResponseDto({
    required int id,
    required String name,
    int? count,
  }) = _TagSuggestionResponseDto;

  factory TagSuggestionResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TagSuggestionResponseDtoFromJson(json);
}

@freezed
class TagSuggestionQueryDto with _$TagSuggestionQueryDto {
  const factory TagSuggestionQueryDto({
    required String prefix,
    @Default(10) int limit,
  }) = _TagSuggestionQueryDto;

  factory TagSuggestionQueryDto.fromJson(Map<String, dynamic> json) =>
      _$TagSuggestionQueryDtoFromJson(json);
}

@freezed
class TagDto with _$TagDto {
  const factory TagDto({
    required int id,
    required String name,
    String? createdBy,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TagDto;

  factory TagDto.fromJson(Map<String, dynamic> json) =>
      _$TagDtoFromJson(json);
}

@freezed
class CreateTagDto with _$CreateTagDto {
  const factory CreateTagDto({
    required String name,
    String? createdBy,
  }) = _CreateTagDto;

  factory CreateTagDto.fromJson(Map<String, dynamic> json) =>
      _$CreateTagDtoFromJson(json);
}