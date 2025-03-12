import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/location/dtos/artist_location_dto.dart';

part 'artist_location.freezed.dart';
part 'artist_location.g.dart';

@freezed
class ArtistLocation with _$ArtistLocation {
  const factory ArtistLocation({
    int? id,
    required int artistId,
    required String name,
    required String address1,
    String? shortAddress1,
    required String address2,
    String? address3,
    String? addressType,
    String? state,
    required String city,
    String? country,
    String? formattedAddress,
    required double lat,
    required double lng,
    Map<String, dynamic>? viewport,
    required int locationOrder,
    String? googlePlaceId,
    String? profileThumbnail,
    @Default(true) bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ArtistLocation;

  factory ArtistLocation.fromJson(Map<String, dynamic> json) =>
      _$ArtistLocationFromJson(json);
      
  factory ArtistLocation.fromDto(ArtistLocationDto dto) {
    return ArtistLocation(
      id: dto.id,
      artistId: dto.artistId,
      name: dto.name,
      address1: dto.address1,
      shortAddress1: dto.shortAddress1,
      address2: dto.address2,
      address3: dto.address3,
      addressType: dto.addressType,
      state: dto.state,
      city: dto.city,
      country: dto.country,
      formattedAddress: dto.formattedAddress,
      lat: dto.lat,
      lng: dto.lng,
      viewport: dto.viewport,
      locationOrder: dto.locationOrder,
      googlePlaceId: dto.googlePlaceId,
      profileThumbnail: dto.profileThumbnail,
      isActive: dto.isActive,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
    );
  }
}