import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_dto.freezed.dart';
part 'tag_dto.g.dart';

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