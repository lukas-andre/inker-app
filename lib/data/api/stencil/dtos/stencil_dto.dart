import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';

part 'stencil_dto.freezed.dart';
part 'stencil_dto.g.dart';

@freezed
class CreateStencilDto with _$CreateStencilDto {
  const factory CreateStencilDto({
    required String title,
    String? description,
    String? imageUrl,
    String? thumbnailUrl,
    @Default(false) bool isFeatured,
    @Default(0) int orderPosition,
    required StencilSource source,
    @Default(false) bool isHidden,
    List<int>? tagIds,
  }) = _CreateStencilDto;

  factory CreateStencilDto.fromJson(Map<String, dynamic> json) =>
      _$CreateStencilDtoFromJson(json);
}

@freezed
class UpdateStencilDto with _$UpdateStencilDto {
  const factory UpdateStencilDto({
    String? title,
    String? description,
    String? imageUrl,
    String? thumbnailUrl,
    bool? isFeatured,
    int? orderPosition,
    StencilSource? source,
    bool? isHidden,
    List<int>? tagIds,
  }) = _UpdateStencilDto;

  factory UpdateStencilDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateStencilDtoFromJson(json);
}

@freezed
class TagSuggestionResponseDto with _$TagSuggestionResponseDto {
  const factory TagSuggestionResponseDto({
    required int id,
    required String name,
    required int count,
  }) = _TagSuggestionResponseDto;

  factory TagSuggestionResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TagSuggestionResponseDtoFromJson(json);
}