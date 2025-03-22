// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistImpl _$$ArtistImplFromJson(Map json) => _$ArtistImpl(
      id: (json['id'] as num).toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: (json['userId'] as num?)?.toInt(),
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      shortDescription: json['shortDescription'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      profileThumbnailVersion:
          (json['profileThumbnailVersion'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rating: json['rating'] as String?,
      studioPhoto: json['studioPhoto'] as String?,
      studioPhotoVersion: (json['studioPhotoVersion'] as num?)?.toInt(),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(Map<String, dynamic>.from(json['contact'] as Map)),
      followers: (json['followers'] as num?)?.toInt() ?? 0,
      follows: (json['follows'] as num?)?.toInt() ?? 0,
      isFollowedByUser: json['isFollowedByUser'] as bool?,
      distanceUnit: json['distanceUnit'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      review: json['review'] == null
          ? null
          : Review.fromJson(Map<String, dynamic>.from(json['review'] as Map)),
      worksCount: (json['worksCount'] as num?)?.toInt(),
      stencilsCount: (json['stencilsCount'] as num?)?.toInt(),
      visibleWorksCount: (json['visibleWorksCount'] as num?)?.toInt(),
      visibleStencilsCount: (json['visibleStencilsCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('userId', instance.userId);
  writeNotNull('username', instance.username);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('shortDescription', instance.shortDescription);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('profileThumbnailVersion', instance.profileThumbnailVersion);
  writeNotNull('tags', instance.tags);
  writeNotNull('genres', instance.genres);
  writeNotNull('rating', instance.rating);
  writeNotNull('studioPhoto', instance.studioPhoto);
  writeNotNull('studioPhotoVersion', instance.studioPhotoVersion);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('contact', instance.contact?.toJson());
  val['followers'] = instance.followers;
  val['follows'] = instance.follows;
  writeNotNull('isFollowedByUser', instance.isFollowedByUser);
  writeNotNull('distanceUnit', instance.distanceUnit);
  writeNotNull('distance', instance.distance);
  writeNotNull('review', instance.review?.toJson());
  writeNotNull('worksCount', instance.worksCount);
  writeNotNull('stencilsCount', instance.stencilsCount);
  writeNotNull('visibleWorksCount', instance.visibleWorksCount);
  writeNotNull('visibleStencilsCount', instance.visibleStencilsCount);
  return val;
}

_$ContactImpl _$$ContactImplFromJson(Map json) => _$ContactImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      email: json['email'] as String,
      phone: json['phone'] as String,
      phoneDialCode: json['phoneDialCode'] as String?,
      phoneCountryIsoCode: json['phoneCountryIsoCode'] as String?,
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  val['email'] = instance.email;
  val['phone'] = instance.phone;
  writeNotNull('phoneDialCode', instance.phoneDialCode);
  writeNotNull('phoneCountryIsoCode', instance.phoneCountryIsoCode);
  return val;
}

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

_$ReviewImpl _$$ReviewImplFromJson(Map json) => _$ReviewImpl(
      artistId: (json['artistId'] as num?)?.toInt(),
      value: (json['value'] as num?)?.toDouble(),
      detail: (json['detail'] as Map?)?.map(
        (k, e) => MapEntry(k as String, (e as num).toInt()),
      ),
      count: (json['count'] as num?)?.toInt(),
      avgRating: (json['avgRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('artistId', instance.artistId);
  writeNotNull('value', instance.value);
  writeNotNull('detail', instance.detail);
  writeNotNull('count', instance.count);
  writeNotNull('avgRating', instance.avgRating);
  return val;
}
