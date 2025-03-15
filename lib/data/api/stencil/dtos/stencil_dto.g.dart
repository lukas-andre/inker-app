// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stencil_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStencilDtoImpl _$$CreateStencilDtoImplFromJson(Map json) =>
    _$CreateStencilDtoImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isFeatured: json['isFeatured'] as bool? ?? false,
      orderPosition: (json['orderPosition'] as num?)?.toInt() ?? 0,
      source: $enumDecode(_$StencilSourceEnumMap, json['source']),
      isHidden: json['isHidden'] as bool? ?? false,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$CreateStencilDtoImplToJson(
    _$CreateStencilDtoImpl instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('thumbnailUrl', instance.thumbnailUrl);
  val['isFeatured'] = instance.isFeatured;
  val['orderPosition'] = instance.orderPosition;
  val['source'] = _$StencilSourceEnumMap[instance.source]!;
  val['isHidden'] = instance.isHidden;
  writeNotNull('tagIds', instance.tagIds);
  return val;
}

const _$StencilSourceEnumMap = {
  StencilSource.app: 'APP',
  StencilSource.external: 'EXTERNAL',
};

_$UpdateStencilDtoImpl _$$UpdateStencilDtoImplFromJson(Map json) =>
    _$UpdateStencilDtoImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isFeatured: json['isFeatured'] as bool?,
      orderPosition: (json['orderPosition'] as num?)?.toInt(),
      source: $enumDecodeNullable(_$StencilSourceEnumMap, json['source']),
      isHidden: json['isHidden'] as bool?,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$UpdateStencilDtoImplToJson(
    _$UpdateStencilDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('thumbnailUrl', instance.thumbnailUrl);
  writeNotNull('isFeatured', instance.isFeatured);
  writeNotNull('orderPosition', instance.orderPosition);
  writeNotNull('source', _$StencilSourceEnumMap[instance.source]);
  writeNotNull('isHidden', instance.isHidden);
  writeNotNull('tagIds', instance.tagIds);
  return val;
}

_$TagSuggestionResponseDtoImpl _$$TagSuggestionResponseDtoImplFromJson(
        Map json) =>
    _$TagSuggestionResponseDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$TagSuggestionResponseDtoImplToJson(
        _$TagSuggestionResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'count': instance.count,
    };
