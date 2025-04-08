import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/work/work.dart';

part 'work_search_dto.g.dart';
part 'work_search_dto.freezed.dart';

@freezed
class WorkSearchQueryDto with _$WorkSearchQueryDto {
  const factory WorkSearchQueryDto({
    String? query,
    List<String>? tagIds,
    String? artistId,
    bool? onlyFeatured,
    String? source,
    @Default(false) bool includeHidden,
    @Default('relevance') String sortBy,
    @Default(1) int page,
    @Default(10) int limit,
  }) = _WorkSearchQueryDto;

  factory WorkSearchQueryDto.fromJson(Map<String, dynamic> json) =>
      _$WorkSearchQueryDtoFromJson(json);
}

@freezed
class PaginatedWorkSearchResponseDto with _$PaginatedWorkSearchResponseDto {
  const factory PaginatedWorkSearchResponseDto({
    required List<Work> items,
    @JsonKey(name: 'page') required int currentPage,
    required int limit,
    required int total,
    @JsonKey(name: 'pages') required int totalPages,
  }) = _PaginatedWorkSearchResponseDto;

  factory PaginatedWorkSearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PaginatedWorkSearchResponseDtoFromJson(json);
}

@freezed
class SearchRankingInfoDto with _$SearchRankingInfoDto {
  const factory SearchRankingInfoDto({
    required String factor,
    required String description,
    required double weight,
  }) = _SearchRankingInfoDto;

  factory SearchRankingInfoDto.fromJson(Map<String, dynamic> json) =>
      _$SearchRankingInfoDtoFromJson(json);
}
