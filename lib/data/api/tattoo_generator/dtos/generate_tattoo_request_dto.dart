import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';

part 'generate_tattoo_request_dto.freezed.dart';
part 'generate_tattoo_request_dto.g.dart';

@freezed
class GenerateTattooRequestDto with _$GenerateTattooRequestDto {
  const factory GenerateTattooRequestDto({
    required String userInput,
    required TattooStyle style,
  }) = _GenerateTattooRequestDto;

  factory GenerateTattooRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GenerateTattooRequestDtoFromJson(json);
}
