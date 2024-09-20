// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistImpl _$$ArtistImplFromJson(Map json) => _$ArtistImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userId: (json['userId'] as num).toInt(),
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      shortDescription: json['shortDescription'] as String,
      profileThumbnail: json['profileThumbnail'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      studioPhoto: json['studioPhoto'] as String?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      followers: (json['followers'] as num?)?.toInt() ?? 0,
      follows: (json['follows'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'userId': instance.userId,
    'username': instance.username,
    'firstName': instance.firstName,
    'lastName': instance.lastName,
    'shortDescription': instance.shortDescription,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('tags', instance.tags);
  writeNotNull('genres', instance.genres);
  val['rating'] = instance.rating;
  writeNotNull('studioPhoto', instance.studioPhoto);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  val['followers'] = instance.followers;
  val['follows'] = instance.follows;
  return val;
}
