// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tattoo_design_cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TattooDesignCacheImpl _$$TattooDesignCacheImplFromJson(Map json) =>
    _$TattooDesignCacheImpl(
      id: json['id'] as String,
      userQuery: json['userQuery'] as String,
      style: json['style'] as String?,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      prompt: json['prompt'] as String?,
      metadata: (json['metadata'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      usageCount: (json['usageCount'] as num?)?.toInt() ?? 1,
      isFavorite: json['isFavorite'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TattooDesignCacheImplToJson(
    _$TattooDesignCacheImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'userQuery': instance.userQuery,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('style', instance.style);
  val['imageUrls'] = instance.imageUrls;
  writeNotNull('prompt', instance.prompt);
  writeNotNull('metadata', instance.metadata);
  val['usageCount'] = instance.usageCount;
  val['isFavorite'] = instance.isFavorite;
  val['createdAt'] = instance.createdAt.toIso8601String();
  val['updatedAt'] = instance.updatedAt.toIso8601String();
  return val;
}
