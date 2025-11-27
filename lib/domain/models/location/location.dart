import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String address1,
    String? shortAddress1,
    String? address2,
    String? address3,
    required String addressType,
    String? state,
    required String city,
    required String country,
    required String formattedAddress,
    required double lat,
    required double lng,
    Viewport? viewport,
    required GeoPoint location,
    required String artistId,
    required String name,
    String? profileThumbnail,
    String? googlePlaceId,
    @Default(0) int locationOrder,
    @Default(true) bool isActive,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Viewport with _$Viewport {
  const factory Viewport({
    required LatLng northeast,
    required LatLng southwest,
  }) = _Viewport;

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);
}

@freezed
class LatLng with _$LatLng {
  const factory LatLng({
    required double lat,
    required double lng,
  }) = _LatLng;

  factory LatLng.fromJson(Map<String, dynamic> json) =>
      _$LatLngFromJson(json);
}

@freezed
class GeoPoint with _$GeoPoint {
  const factory GeoPoint({
    required String type,
    required List<double> coordinates,
  }) = _GeoPoint;

  factory GeoPoint.fromJson(Map<String, dynamic> json) =>
      _$GeoPointFromJson(json);
}