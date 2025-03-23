// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkSearchQueryDtoImpl _$$WorkSearchQueryDtoImplFromJson(Map json) =>
    _$WorkSearchQueryDtoImpl(
      query: json['query'] as String?,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      artistId: (json['artistId'] as num?)?.toInt(),
      onlyFeatured: json['onlyFeatured'] as bool?,
      source: json['source'] as String?,
      includeHidden: json['includeHidden'] as bool? ?? false,
      sortBy: json['sortBy'] as String? ?? 'relevance',
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$WorkSearchQueryDtoImplToJson(
    _$WorkSearchQueryDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('query', instance.query);
  writeNotNull('tagIds', instance.tagIds);
  writeNotNull('artistId', instance.artistId);
  writeNotNull('onlyFeatured', instance.onlyFeatured);
  writeNotNull('source', instance.source);
  val['includeHidden'] = instance.includeHidden;
  val['sortBy'] = instance.sortBy;
  val['page'] = instance.page;
  val['limit'] = instance.limit;
  return val;
}

_$PaginatedWorkSearchResponseDtoImpl
    _$$PaginatedWorkSearchResponseDtoImplFromJson(Map json) =>
        _$PaginatedWorkSearchResponseDtoImpl(
          items: (json['items'] as List<dynamic>)
              .map((e) => WorkWithRelevanceDto.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList(),
          total: (json['total'] as num).toInt(),
          currentPage: (json['currentPage'] as num).toInt(),
          pageSize: (json['pageSize'] as num).toInt(),
          totalPages: (json['totalPages'] as num).toInt(),
        );

Map<String, dynamic> _$$PaginatedWorkSearchResponseDtoImplToJson(
        _$PaginatedWorkSearchResponseDtoImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
    };

_$WorkWithRelevanceDtoImpl _$$WorkWithRelevanceDtoImplFromJson(Map json) =>
    _$WorkWithRelevanceDtoImpl(
      work: Work.fromJson(Map<String, dynamic>.from(json['work'] as Map)),
      relevanceScore: (json['relevanceScore'] as num).toDouble(),
      scoreComponents: (json['scoreComponents'] as Map?)?.map(
        (k, e) => MapEntry(k as String, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$WorkWithRelevanceDtoImplToJson(
    _$WorkWithRelevanceDtoImpl instance) {
  final val = <String, dynamic>{
    'work': instance.work.toJson(),
    'relevanceScore': instance.relevanceScore,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scoreComponents', instance.scoreComponents);
  return val;
}

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
