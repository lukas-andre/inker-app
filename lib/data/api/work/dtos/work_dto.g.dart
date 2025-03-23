// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateWorkDtoImpl _$$CreateWorkDtoImplFromJson(Map json) =>
    _$CreateWorkDtoImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isFeatured: json['isFeatured'] as bool? ?? false,
      orderPosition: (json['orderPosition'] as num?)?.toInt() ?? 0,
      isHidden: json['isHidden'] as bool? ?? false,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      source: $enumDecodeNullable(_$WorkSourceEnumMap, json['source']) ??
          WorkSource.app,
    );

Map<String, dynamic> _$$CreateWorkDtoImplToJson(_$CreateWorkDtoImpl instance) {
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
  val['isHidden'] = instance.isHidden;
  writeNotNull('tagIds', instance.tagIds);
  val['source'] = _$WorkSourceEnumMap[instance.source]!;
  return val;
}

const _$WorkSourceEnumMap = {
  WorkSource.app: 'APP',
  WorkSource.external: 'EXTERNAL',
};

_$UpdateWorkDtoImpl _$$UpdateWorkDtoImplFromJson(Map json) =>
    _$UpdateWorkDtoImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isFeatured: json['isFeatured'] as bool?,
      orderPosition: (json['orderPosition'] as num?)?.toInt(),
      isHidden: json['isHidden'] as bool?,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      source: $enumDecodeNullable(_$WorkSourceEnumMap, json['source']),
    );

Map<String, dynamic> _$$UpdateWorkDtoImplToJson(_$UpdateWorkDtoImpl instance) {
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
  writeNotNull('isHidden', instance.isHidden);
  writeNotNull('tagIds', instance.tagIds);
  writeNotNull('source', _$WorkSourceEnumMap[instance.source]);
  return val;
}
