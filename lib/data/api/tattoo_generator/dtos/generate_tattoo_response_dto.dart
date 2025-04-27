import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_tattoo_response_dto.freezed.dart';
part 'generate_tattoo_response_dto.g.dart';

@freezed
class GenerateTattooResponseDto with _$GenerateTattooResponseDto {
  const factory GenerateTattooResponseDto({
    required List<GeneratedImageDto> images,
    required double totalCost,
    @Default(false) bool fromCache,
  }) = _GenerateTattooResponseDto;

  factory GenerateTattooResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GenerateTattooResponseDtoFromJson(json);
}

@freezed
class GeneratedImageDto with _$GeneratedImageDto {
  const factory GeneratedImageDto({
    required String imageUrl,
    required String imageId,
    required double cost,
  }) = _GeneratedImageDto;

  factory GeneratedImageDto.fromJson(Map<String, dynamic> json) =>
      _$GeneratedImageDtoFromJson(json);
}
