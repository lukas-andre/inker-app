// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stencil_search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StencilSearchQueryDtoImpl _$$StencilSearchQueryDtoImplFromJson(Map json) =>
    _$StencilSearchQueryDtoImpl(
      query: json['query'] as String?,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      artistId: (json['artistId'] as num?)?.toInt(),
      status: json['status'] as String?,
      includeHidden: json['includeHidden'] as bool? ?? false,
      sortBy: json['sortBy'] as String? ?? 'relevance',
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$StencilSearchQueryDtoImplToJson(
    _$StencilSearchQueryDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('query', instance.query);
  writeNotNull('tagIds', instance.tagIds);
  writeNotNull('artistId', instance.artistId);
  writeNotNull('status', instance.status);
  val['includeHidden'] = instance.includeHidden;
  val['sortBy'] = instance.sortBy;
  val['page'] = instance.page;
  val['limit'] = instance.limit;
  return val;
}

_$PaginatedStencilSearchResponseDtoImpl
    _$$PaginatedStencilSearchResponseDtoImplFromJson(Map json) =>
        _$PaginatedStencilSearchResponseDtoImpl(
          items: (json['items'] as List<dynamic>)
              .map((e) => Stencil.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
          currentPage: (json['page'] as num).toInt(),
          limit: (json['limit'] as num).toInt(),
          total: (json['total'] as num).toInt(),
          totalPages: (json['pages'] as num).toInt(),
        );

Map<String, dynamic> _$$PaginatedStencilSearchResponseDtoImplToJson(
        _$PaginatedStencilSearchResponseDtoImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'page': instance.currentPage,
      'limit': instance.limit,
      'total': instance.total,
      'pages': instance.totalPages,
    };

_$SearchRankingInfoDtoImpl _$$SearchRankingInfoDtoImplFromJson(Map json) =>
    _$SearchRankingInfoDtoImpl(
      factor: json['factor'] as String,
      description: json['description'] as String,
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$$SearchRankingInfoDtoImplToJson(
        _$SearchRankingInfoDtoImpl instance) =>
    <String, dynamic>{
      'factor': instance.factor,
      'description': instance.description,
      'weight': instance.weight,
    };
