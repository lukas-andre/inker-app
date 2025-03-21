// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_query_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkQueryParamsImpl _$$WorkQueryParamsImplFromJson(Map json) =>
    _$WorkQueryParamsImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      featured: json['featured'] as bool?,
      includeHidden: json['includeHidden'] as bool? ?? false,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      searchText: json['searchText'] as String?,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$$WorkQueryParamsImplToJson(
    _$WorkQueryParamsImpl instance) {
  final val = <String, dynamic>{
    'page': instance.page,
    'limit': instance.limit,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('featured', instance.featured);
  val['includeHidden'] = instance.includeHidden;
  writeNotNull('tagIds', instance.tagIds);
  writeNotNull('searchText', instance.searchText);
  writeNotNull('source', instance.source);
  return val;
}

_$PaginatedWorkResponseImpl _$$PaginatedWorkResponseImplFromJson(Map json) =>
    _$PaginatedWorkResponseImpl(
      items: json['items'] as List<dynamic>,
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginatedWorkResponseImplToJson(
        _$PaginatedWorkResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'pages': instance.pages,
    };
