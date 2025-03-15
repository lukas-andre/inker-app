// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stencil_query_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StencilQueryParamsImpl _$$StencilQueryParamsImplFromJson(Map json) =>
    _$StencilQueryParamsImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      featured: json['featured'] as bool?,
      source: $enumDecodeNullable(_$StencilSourceEnumMap, json['source']),
      includeHidden: json['includeHidden'] as bool? ?? false,
    );

Map<String, dynamic> _$$StencilQueryParamsImplToJson(
    _$StencilQueryParamsImpl instance) {
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
  writeNotNull('source', _$StencilSourceEnumMap[instance.source]);
  val['includeHidden'] = instance.includeHidden;
  return val;
}

const _$StencilSourceEnumMap = {
  StencilSource.app: 'APP',
  StencilSource.external: 'EXTERNAL',
};

_$PaginatedStencilResponseImpl _$$PaginatedStencilResponseImplFromJson(
        Map json) =>
    _$PaginatedStencilResponseImpl(
      items: json['items'] as List<dynamic>,
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginatedStencilResponseImplToJson(
        _$PaginatedStencilResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'pages': instance.pages,
    };
