// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistLocationDto _$ArtistLocationDtoFromJson(Map json) => ArtistLocationDto(
      id: json['id'] as String?,
      artistId: json['artistId'] as String,
      name: json['name'] as String,
      address1: json['address1'] as String,
      shortAddress1: json['shortAddress1'] as String?,
      address2: json['address2'] as String,
      address3: json['address3'] as String?,
      addressType: ArtistLocationDto._addressTypeFromJson(
          json['addressType'] as String?),
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

Map<String, dynamic> _$ArtistLocationDtoToJson(ArtistLocationDto instance) {
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
  val['addressType'] =
      ArtistLocationDto._addressTypeToJson(instance.addressType);
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

CreateArtistLocationRequest _$CreateArtistLocationRequestFromJson(Map json) =>
    CreateArtistLocationRequest(
      artistId: json['artistId'] as String,
      name: json['name'] as String,
      address1: json['address1'] as String,
      shortAddress1: json['shortAddress1'] as String?,
      address2: json['address2'] as String,
      address3: json['address3'] as String?,
      addressType: CreateArtistLocationRequest._addressTypeFromJson(
          json['addressType'] as String?),
      state: json['state'] as String?,
      city: json['city'] as String,
      country: json['country'] as String?,
      formattedAddress: json['formattedAddress'] as String?,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      viewport: (json['viewport'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      locationOrder: (json['locationOrder'] as num?)?.toInt(),
      googlePlaceId: json['googlePlaceId'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
    );

Map<String, dynamic> _$CreateArtistLocationRequestToJson(
    CreateArtistLocationRequest instance) {
  final val = <String, dynamic>{
    'artistId': instance.artistId,
    'name': instance.name,
    'address1': instance.address1,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shortAddress1', instance.shortAddress1);
  val['address2'] = instance.address2;
  writeNotNull('address3', instance.address3);
  val['addressType'] =
      CreateArtistLocationRequest._addressTypeToJson(instance.addressType);
  writeNotNull('state', instance.state);
  val['city'] = instance.city;
  writeNotNull('country', instance.country);
  writeNotNull('formattedAddress', instance.formattedAddress);
  val['lat'] = instance.lat;
  val['lng'] = instance.lng;
  writeNotNull('viewport', instance.viewport);
  writeNotNull('locationOrder', instance.locationOrder);
  writeNotNull('googlePlaceId', instance.googlePlaceId);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  return val;
}

UpdateArtistLocationRequest _$UpdateArtistLocationRequestFromJson(Map json) =>
    UpdateArtistLocationRequest(
      name: json['name'] as String?,
      address1: json['address1'] as String?,
      shortAddress1: json['shortAddress1'] as String?,
      address2: json['address2'] as String?,
      address3: json['address3'] as String?,
      addressType: UpdateArtistLocationRequest._addressTypeFromJsonNullable(
          json['addressType'] as String?),
      state: json['state'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      formattedAddress: json['formattedAddress'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      viewport: (json['viewport'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      locationOrder: (json['locationOrder'] as num?)?.toInt(),
      googlePlaceId: json['googlePlaceId'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      isActive: json['isActive'] as bool?,
      artistId: json['artistId'] as String,
    );

Map<String, dynamic> _$UpdateArtistLocationRequestToJson(
    UpdateArtistLocationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('address1', instance.address1);
  writeNotNull('shortAddress1', instance.shortAddress1);
  writeNotNull('address2', instance.address2);
  writeNotNull('address3', instance.address3);
  writeNotNull(
      'addressType',
      UpdateArtistLocationRequest._addressTypeToJsonNullable(
          instance.addressType));
  writeNotNull('state', instance.state);
  writeNotNull('city', instance.city);
  writeNotNull('country', instance.country);
  writeNotNull('formattedAddress', instance.formattedAddress);
  writeNotNull('lat', instance.lat);
  writeNotNull('lng', instance.lng);
  writeNotNull('viewport', instance.viewport);
  writeNotNull('locationOrder', instance.locationOrder);
  writeNotNull('googlePlaceId', instance.googlePlaceId);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('isActive', instance.isActive);
  val['artistId'] = instance.artistId;
  return val;
}
