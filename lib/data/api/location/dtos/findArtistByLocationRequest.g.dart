// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'findArtistByLocationRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindArtistByLocationRequest _$FindArtistByLocationRequestFromJson(Map json) =>
    FindArtistByLocationRequest(
      range: (json['range'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FindArtistByLocationRequestToJson(
    FindArtistByLocationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('range', instance.range);
  writeNotNull('lat', instance.lat);
  writeNotNull('lng', instance.lng);
  return val;
}
