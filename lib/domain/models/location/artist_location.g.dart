// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistLocationImpl _$$ArtistLocationImplFromJson(Map json) =>
    _$ArtistLocationImpl(
      id: (json['id'] as num?)?.toInt(),
      artistId: (json['artistId'] as num).toInt(),
      name: json['name'] as String,
      address1: json['address1'] as String,
      shortAddress1: json['shortAddress1'] as String?,
      address2: json['address2'] as String,
      address3: json['address3'] as String?,
      addressType:
          $enumDecodeNullable(_$AddressTypeEnumMap, json['addressType']),
      state: json['state'] as String?,
      city: json['city'] as String,
      country: json['country'] as String?,
      formattedAddress: json['formattedAddress'] as String?,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      viewport: (json['viewport'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      locationOrder: (json['locationOrder'] as num).toInt(),
      googlePlaceId: json['googlePlaceId'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ArtistLocationImplToJson(
    _$ArtistLocationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['artistId'] = instance.artistId;
  val['name'] = instance.name;
  val['address1'] = instance.address1;
  writeNotNull('shortAddress1', instance.shortAddress1);
  val['address2'] = instance.address2;
  writeNotNull('address3', instance.address3);
  writeNotNull('addressType', _$AddressTypeEnumMap[instance.addressType]);
  writeNotNull('state', instance.state);
  val['city'] = instance.city;
  writeNotNull('country', instance.country);
  writeNotNull('formattedAddress', instance.formattedAddress);
  val['lat'] = instance.lat;
  val['lng'] = instance.lng;
  writeNotNull('viewport', instance.viewport);
  val['locationOrder'] = instance.locationOrder;
  writeNotNull('googlePlaceId', instance.googlePlaceId);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  val['isActive'] = instance.isActive;
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}

const _$AddressTypeEnumMap = {
  AddressType.HOME: 'HOME',
  AddressType.DEPARTMENT: 'DEPARTMENT',
  AddressType.STUDIO: 'STUDIO',
  AddressType.OFFICE: 'OFFICE',
};
