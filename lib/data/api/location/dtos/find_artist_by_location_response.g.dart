// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_artist_by_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FindArtistByLocationResponse _$$_FindArtistByLocationResponseFromJson(
        Map json) =>
    _$_FindArtistByLocationResponse(
      id: json['id'] as int?,
      artistId: json['artistId'] as int?,
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

Map<String, dynamic> _$$_FindArtistByLocationResponseToJson(
    _$_FindArtistByLocationResponse instance) {
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

_$_Artist _$$_ArtistFromJson(Map json) => _$_Artist(
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(Map<String, dynamic>.from(json['contact'] as Map)),
      id: json['id'] as int?,
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      studioPhoto: json['studioPhoto'],
      shortDescription: json['shortDescription'] as String?,
      profileThumbnail: json['profileThumbnail'],
      rating: json['rating'] as int?,
      review: json['review'] == null
          ? null
          : Review.fromJson(Map<String, dynamic>.from(json['review'] as Map)),
      followers: json['followers'] as int?,
      isFollowedByUser: json['isFollowedByUser'] as bool?,
      distanceUnit: json['distanceUnit'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ArtistToJson(_$_Artist instance) {
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

_$_Contact _$$_ContactFromJson(Map json) => _$_Contact(
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) {
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

_$_Review _$$_ReviewFromJson(Map json) => _$_Review(
      artistId: json['artistId'] as int?,
      value: (json['value'] as num?)?.toDouble(),
      detail: (json['detail'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e as int),
      ),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) {
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
