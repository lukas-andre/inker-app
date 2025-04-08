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
      isHidden: json['isHidden'] as bool? ?? false,
      tagIds:
          (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
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
  val['isHidden'] = instance.isHidden;
  writeNotNull('tagIds', instance.tagIds);
  return val;
}

_$UpdateStencilDtoImpl _$$UpdateStencilDtoImplFromJson(Map json) =>
    _$UpdateStencilDtoImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isFeatured: json['isFeatured'] as bool?,
      orderPosition: (json['orderPosition'] as num?)?.toInt(),
      isHidden: json['isHidden'] as bool?,
      tagIds:
          (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
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
  writeNotNull('isHidden', instance.isHidden);
  writeNotNull('tagIds', instance.tagIds);
  return val;
}
