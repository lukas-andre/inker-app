// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_artist_by_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FindArtistByLocationResponseImpl _$$FindArtistByLocationResponseImplFromJson(
        Map json) =>
    _$FindArtistByLocationResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      artistId: (json['artistId'] as num?)?.toInt(),
      name: json['name'] as String?,
      country: json['country'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      address3: json['address3'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      addressType: json['addressType'] as String?,
      formattedAddress: json['formattedAddress'] as String?,
      city: json['city'] as String?,
      googlePlaceId: json['googlePlaceId'] as String?,
      distanceUnit: json['distanceUnit'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      artist: json['artist'] == null
          ? null
          : Artist.fromJson(Map<String, dynamic>.from(json['artist'] as Map)),
    );

Map<String, dynamic> _$$FindArtistByLocationResponseImplToJson(
    _$FindArtistByLocationResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('artistId', instance.artistId);
  writeNotNull('name', instance.name);
  writeNotNull('country', instance.country);
  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('address3', instance.address3);
  writeNotNull('lat', instance.lat);
  writeNotNull('lng', instance.lng);
  writeNotNull('addressType', instance.addressType);
  writeNotNull('formattedAddress', instance.formattedAddress);
  writeNotNull('city', instance.city);
  writeNotNull('googlePlaceId', instance.googlePlaceId);
  writeNotNull('distanceUnit', instance.distanceUnit);
  writeNotNull('distance', instance.distance);
  writeNotNull('artist', instance.artist?.toJson());
  return val;
}

_$ArtistImpl _$$ArtistImplFromJson(Map json) => _$ArtistImpl(
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(Map<String, dynamic>.from(json['contact'] as Map)),
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      studioPhoto: json['studioPhoto'],
      shortDescription: json['shortDescription'] as String?,
      profileThumbnail: json['profileThumbnail'],
      rating: (json['rating'] as num?)?.toInt(),
      review: json['review'] == null
          ? null
          : Review.fromJson(Map<String, dynamic>.from(json['review'] as Map)),
      followers: (json['followers'] as num?)?.toInt(),
      isFollowedByUser: json['isFollowedByUser'] as bool?,
      distanceUnit: json['distanceUnit'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contact', instance.contact?.toJson());
  writeNotNull('id', instance.id);
  writeNotNull('username', instance.username);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('studioPhoto', instance.studioPhoto);
  writeNotNull('shortDescription', instance.shortDescription);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('rating', instance.rating);
  writeNotNull('review', instance.review?.toJson());
  writeNotNull('followers', instance.followers);
  writeNotNull('isFollowedByUser', instance.isFollowedByUser);
  writeNotNull('distanceUnit', instance.distanceUnit);
  writeNotNull('distance', instance.distance);
  return val;
}

_$ContactImpl _$$ContactImplFromJson(Map json) => _$ContactImpl(
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone', instance.phone);
  writeNotNull('email', instance.email);
  writeNotNull('country', instance.country);
  return val;
}

_$ReviewImpl _$$ReviewImplFromJson(Map json) => _$ReviewImpl(
      artistId: (json['artistId'] as num?)?.toInt(),
      value: (json['value'] as num?)?.toDouble(),
      detail: (json['detail'] as Map?)?.map(
        (k, e) => MapEntry(k as String, (e as num).toInt()),
      ),
      count: (json['count'] as num?)?.toInt(),
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
  return val;
}
