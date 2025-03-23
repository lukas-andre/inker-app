import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';

part 'stencil_search_dto.g.dart';
part 'stencil_search_dto.freezed.dart';

@freezed
class StencilSearchQueryDto with _$StencilSearchQueryDto {
  const factory StencilSearchQueryDto({
    String? query,
    List<int>? tagIds,
    int? artistId,
    @JsonKey(name: 'status') String? status,
    @Default(false) bool includeHidden,
    @Default('relevance') String sortBy,
    @Default(1) int page,
    @Default(10) int limit,
  }) = _StencilSearchQueryDto;

  factory StencilSearchQueryDto.fromJson(Map<String, dynamic> json) =>
      _$StencilSearchQueryDtoFromJson(json);
}

@freezed
class PaginatedStencilSearchResponseDto with _$PaginatedStencilSearchResponseDto {
  const factory PaginatedStencilSearchResponseDto({
    required List<StencilWithRelevanceDto> items,
    required int total,
    required int currentPage,
    required int pageSize,
    required int totalPages,
  }) = _PaginatedStencilSearchResponseDto;

  factory PaginatedStencilSearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PaginatedStencilSearchResponseDtoFromJson(json);
}

@freezed
class StencilWithRelevanceDto with _$StencilWithRelevanceDto {
  const factory StencilWithRelevanceDto({
    required Stencil stencil,
    required double relevanceScore,
    Map<String, double>? scoreComponents,
  }) = _StencilWithRelevanceDto;

  factory StencilWithRelevanceDto.fromJson(Map<String, dynamic> json) =>
      _$StencilWithRelevanceDtoFromJson(json);
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