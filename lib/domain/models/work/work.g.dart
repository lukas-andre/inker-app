// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkImpl _$$WorkImplFromJson(Map json) => _$WorkImpl(
      id: (json['id'] as num).toInt(),
      artistId: (json['artistId'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      imageVersion: (json['imageVersion'] as num).toInt(),
      thumbnailVersion: (json['thumbnailVersion'] as num).toInt(),
      isFeatured: json['isFeatured'] as bool? ?? false,
      orderPosition: (json['orderPosition'] as num?)?.toInt() ?? 0,
      source: $enumDecode(_$WorkSourceEnumMap, json['source']),
      isHidden: json['isHidden'] as bool? ?? false,
      viewCount: (json['viewCount'] as num?)?.toInt() ?? 0,
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$WorkImplToJson(_$WorkImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'artistId': instance.artistId,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['imageUrl'] = instance.imageUrl;
  writeNotNull('thumbnailUrl', instance.thumbnailUrl);
  val['imageVersion'] = instance.imageVersion;
  val['thumbnailVersion'] = instance.thumbnailVersion;
  val['isFeatured'] = instance.isFeatured;
  val['orderPosition'] = instance.orderPosition;
  val['source'] = _$WorkSourceEnumMap[instance.source]!;
  val['isHidden'] = instance.isHidden;
  val['viewCount'] = instance.viewCount;
  val['likeCount'] = instance.likeCount;
  val['createdAt'] = instance.createdAt.toIso8601String();
  val['updatedAt'] = instance.updatedAt.toIso8601String();
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('tags', instance.tags?.map((e) => e.toJson()).toList());
  return val;
}

const _$WorkSourceEnumMap = {
  WorkSource.app: 'APP',
  WorkSource.external: 'EXTERNAL',
};

_$TagImpl _$$TagImplFromJson(Map json) => _$TagImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      createdBy: json['createdBy'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('count', instance.count);
  return val;
}
