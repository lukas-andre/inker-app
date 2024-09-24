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
      profileThumbnailVersion:
          (json['profileThumbnailVersion'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      studioPhoto: json['studioPhoto'] as String?,
      studioPhotoVersion: (json['studioPhotoVersion'] as num?)?.toInt(),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(Map<String, dynamic>.from(json['contact'] as Map)),
      services: (json['services'] as List<dynamic>?)
              ?.map(
                  (e) => Service.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
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
  writeNotNull('profileThumbnailVersion', instance.profileThumbnailVersion);
  writeNotNull('tags', instance.tags);
  writeNotNull('genres', instance.genres);
  val['rating'] = instance.rating;
  writeNotNull('studioPhoto', instance.studioPhoto);
  writeNotNull('studioPhotoVersion', instance.studioPhotoVersion);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('contact', instance.contact?.toJson());
  val['services'] = instance.services.map((e) => e.toJson()).toList();
  val['followers'] = instance.followers;
  val['follows'] = instance.follows;
  return val;
}

_$ContactImpl _$$ContactImplFromJson(Map json) => _$ContactImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      email: json['email'] as String,
      phone: json['phone'] as String,
      phoneDialCode: json['phoneDialCode'] as String,
      phoneCountryIsoCode: json['phoneCountryIsoCode'] as String,
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'email': instance.email,
      'phone': instance.phone,
      'phoneDialCode': instance.phoneDialCode,
      'phoneCountryIsoCode': instance.phoneCountryIsoCode,
    };

_$ServiceImpl _$$ServiceImplFromJson(Map json) => _$ServiceImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'name': instance.name,
      'description': instance.description,
    };
