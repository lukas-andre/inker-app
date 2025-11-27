import 'package:freezed_annotation/freezed_annotation.dart';

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
    @Default(false) bool isHidden,
    List<String>? tagIds,
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
    bool? isHidden,
    List<String>? tagIds,
  }) = _UpdateStencilDto;

  factory UpdateStencilDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateStencilDtoFromJson(json);
}

