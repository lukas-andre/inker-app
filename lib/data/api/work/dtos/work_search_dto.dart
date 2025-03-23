import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/work/work.dart';

part 'work_search_dto.g.dart';
part 'work_search_dto.freezed.dart';

@freezed
class WorkSearchQueryDto with _$WorkSearchQueryDto {
  const factory WorkSearchQueryDto({
    String? query,
    List<int>? tagIds,
    int? artistId,
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
    required List<WorkWithRelevanceDto> items,
    required int total,
    required int currentPage,
    required int pageSize,
    required int totalPages,
  }) = _PaginatedWorkSearchResponseDto;

  factory PaginatedWorkSearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PaginatedWorkSearchResponseDtoFromJson(json);
}

@freezed
class WorkWithRelevanceDto with _$WorkWithRelevanceDto {
  const factory WorkWithRelevanceDto({
    required Work work,
    required double relevanceScore,
    Map<String, double>? scoreComponents,
  }) = _WorkWithRelevanceDto;

  factory WorkWithRelevanceDto.fromJson(Map<String, dynamic> json) =>
      _$WorkWithRelevanceDtoFromJson(json);
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
