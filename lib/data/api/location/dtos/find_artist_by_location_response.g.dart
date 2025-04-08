// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_artist_by_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FindArtistByLocationResponseImpl _$$FindArtistByLocationResponseImplFromJson(
        Map json) =>
    _$FindArtistByLocationResponseImpl(
      id: json['id'] as String?,
      artistId: json['artistId'] as String?,
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
