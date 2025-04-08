// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationImpl _$$LocationImplFromJson(Map json) => _$LocationImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      address1: json['address1'] as String,
      shortAddress1: json['shortAddress1'] as String,
      address2: json['address2'] as String,
      address3: json['address3'] as String?,
      addressType: json['addressType'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      formattedAddress: json['formattedAddress'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      viewport:
          Viewport.fromJson(Map<String, dynamic>.from(json['viewport'] as Map)),
      location:
          GeoPoint.fromJson(Map<String, dynamic>.from(json['location'] as Map)),
      artistId: json['artistId'] as String,
      name: json['name'] as String,
      profileThumbnail: json['profileThumbnail'] as String?,
      googlePlaceId: json['googlePlaceId'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'address1': instance.address1,
    'shortAddress1': instance.shortAddress1,
    'address2': instance.address2,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address3', instance.address3);
  val['addressType'] = instance.addressType;
  val['state'] = instance.state;
  val['city'] = instance.city;
  val['country'] = instance.country;
  val['formattedAddress'] = instance.formattedAddress;
  val['lat'] = instance.lat;
  val['lng'] = instance.lng;
  val['viewport'] = instance.viewport.toJson();
  val['location'] = instance.location.toJson();
  val['artistId'] = instance.artistId;
  val['name'] = instance.name;
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('googlePlaceId', instance.googlePlaceId);
  return val;
}

_$ViewportImpl _$$ViewportImplFromJson(Map json) => _$ViewportImpl(
      northeast:
          LatLng.fromJson(Map<String, dynamic>.from(json['northeast'] as Map)),
      southwest:
          LatLng.fromJson(Map<String, dynamic>.from(json['southwest'] as Map)),
    );

Map<String, dynamic> _$$ViewportImplToJson(_$ViewportImpl instance) =>
    <String, dynamic>{
      'northeast': instance.northeast.toJson(),
      'southwest': instance.southwest.toJson(),
    };

_$LatLngImpl _$$LatLngImplFromJson(Map json) => _$LatLngImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$LatLngImplToJson(_$LatLngImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$GeoPointImpl _$$GeoPointImplFromJson(Map json) => _$GeoPointImpl(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$GeoPointImplToJson(_$GeoPointImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
