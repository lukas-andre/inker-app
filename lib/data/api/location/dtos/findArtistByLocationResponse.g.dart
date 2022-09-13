// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'findArtistByLocationResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindArtistByLocationResponse _$FindArtistByLocationResponseFromJson(Map json) =>
    FindArtistByLocationResponse(
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

Map<String, dynamic> _$FindArtistByLocationResponseToJson(
    FindArtistByLocationResponse instance) {
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

Artist _$ArtistFromJson(Map json) => Artist(
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(Map<String, dynamic>.from(json['contact'] as Map)),
      id: json['id'] as int?,
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      studioPhoto: json['studioPhoto'] as String?,
      shortDescription: json['shortDescription'],
      profileThumbnail: json['profileThumbnail'] as String?,
      rating: json['rating'] as int?,
    );

Map<String, dynamic> _$ArtistToJson(Artist instance) {
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
  return val;
}

Contact _$ContactFromJson(Map json) => Contact(
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$ContactToJson(Contact instance) {
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
