import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';

part 'stencil_search_dto.g.dart';
part 'stencil_search_dto.freezed.dart';

@freezed
class StencilSearchQueryDto with _$StencilSearchQueryDto {
  const factory StencilSearchQueryDto({
    String? query,
    List<String>? tagIds,
    String? artistId,
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
    required List<Stencil> items,
    @JsonKey(name: 'page') required int currentPage,
    required int limit,
    required int total,
    @JsonKey(name: 'pages') required int totalPages,
  }) = _PaginatedStencilSearchResponseDto;

  factory PaginatedStencilSearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PaginatedStencilSearchResponseDtoFromJson(json);
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