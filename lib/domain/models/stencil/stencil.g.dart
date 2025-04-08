// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stencil.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StencilImpl _$$StencilImplFromJson(Map json) => _$StencilImpl(
      id: json['id'] as String,
      artistId: json['artistId'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String,
      imageVersion: (json['imageVersion'] as num).toInt(),
      thumbnailUrl: json['thumbnailUrl'] as String?,
      thumbnailVersion: (json['thumbnailVersion'] as num?)?.toInt(),
      isFeatured: json['isFeatured'] as bool? ?? false,
      orderPosition: (json['orderPosition'] as num?)?.toInt() ?? 0,
      isHidden: json['isHidden'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      artist: json['artist'] == null
          ? null
          : Artist.fromJson(Map<String, dynamic>.from(json['artist'] as Map)),
      viewCount: (json['viewCount'] as num?)?.toInt() ?? 0,
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      isLikedByUser: json['isLikedByUser'] as bool? ?? false,
      metrics: json['metrics'] == null
          ? null
          : Metrics.fromJson(Map<String, dynamic>.from(json['metrics'] as Map)),
    );

Map<String, dynamic> _$$StencilImplToJson(_$StencilImpl instance) {
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
  val['imageVersion'] = instance.imageVersion;
  writeNotNull('thumbnailUrl', instance.thumbnailUrl);
  writeNotNull('thumbnailVersion', instance.thumbnailVersion);
  val['isFeatured'] = instance.isFeatured;
  val['orderPosition'] = instance.orderPosition;
  val['isHidden'] = instance.isHidden;
  val['createdAt'] = instance.createdAt.toIso8601String();
  val['updatedAt'] = instance.updatedAt.toIso8601String();
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('tags', instance.tags?.map((e) => e.toJson()).toList());
  writeNotNull('artist', instance.artist?.toJson());
  val['viewCount'] = instance.viewCount;
  val['likeCount'] = instance.likeCount;
  val['isLikedByUser'] = instance.isLikedByUser;
  writeNotNull('metrics', instance.metrics?.toJson());
  return val;
}
