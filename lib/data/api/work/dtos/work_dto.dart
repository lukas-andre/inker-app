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
    List<String>? tagIds,
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
    List<String>? tagIds,
    WorkSource? source,
  }) = _UpdateWorkDto;

  factory UpdateWorkDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateWorkDtoFromJson(json);
}