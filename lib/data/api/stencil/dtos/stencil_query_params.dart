import 'package:freezed_annotation/freezed_annotation.dart';

part 'stencil_query_params.freezed.dart';
part 'stencil_query_params.g.dart';

@freezed
class StencilQueryParams with _$StencilQueryParams {
  const factory StencilQueryParams({
    @Default(1) int page,
    @Default(10) int limit,
    bool? featured,
    @Default(false) bool includeHidden,
    List<int>? tagIds,
    String? searchText,
  }) = _StencilQueryParams;

  factory StencilQueryParams.fromJson(Map<String, dynamic> json) =>
      _$StencilQueryParamsFromJson(json);
}

@freezed
class PaginatedStencilResponse with _$PaginatedStencilResponse {
  const factory PaginatedStencilResponse({
    required List<dynamic> items,
    required int total,
    required int page,
    required int limit,
    required int pages,
  }) = _PaginatedStencilResponse;

  factory PaginatedStencilResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginatedStencilResponseFromJson(json);
}