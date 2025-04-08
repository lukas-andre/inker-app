import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_query_params.freezed.dart';
part 'work_query_params.g.dart';

@freezed
class WorkQueryParams with _$WorkQueryParams {
  const factory WorkQueryParams({
    @Default(1) int page,
    @Default(10) int limit,
    bool? featured,
    @Default(false) bool includeHidden,
    List<String>? tagIds,
    String? searchText,
    String? source,
  }) = _WorkQueryParams;

  factory WorkQueryParams.fromJson(Map<String, dynamic> json) =>
      _$WorkQueryParamsFromJson(json);
}

@freezed
class PaginatedWorkResponse with _$PaginatedWorkResponse {
  const factory PaginatedWorkResponse({
    required List<dynamic> items,
    required int total,
    required int page,
    required int limit,
    required int pages,
  }) = _PaginatedWorkResponse;

  factory PaginatedWorkResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginatedWorkResponseFromJson(json);
}