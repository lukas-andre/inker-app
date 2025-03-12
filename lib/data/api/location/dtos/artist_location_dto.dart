import 'package:json_annotation/json_annotation.dart';

part 'artist_location_dto.g.dart';

@JsonSerializable()
class ArtistLocationDto {
  final int? id;
  final int artistId;
  final String name;
  final String address1;
  final String? shortAddress1;
  final String address2;
  final String? address3;
  final String? addressType;
  final String? state;
  final String city;
  final String? country;
  final String? formattedAddress;
  final double lat;
  final double lng;
  final Map<String, dynamic>? viewport;
  final int locationOrder;
  final String? googlePlaceId;
  final String? profileThumbnail;
  final bool isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ArtistLocationDto({
    this.id,
    required this.artistId,
    required this.name,
    required this.address1,
    this.shortAddress1,
    required this.address2,
    this.address3,
    this.addressType,
    this.state,
    required this.city,
    this.country,
    this.formattedAddress,
    required this.lat,
    required this.lng,
    this.viewport,
    required this.locationOrder,
    this.googlePlaceId,
    this.profileThumbnail,
    this.isActive = true,
    this.createdAt,
    this.updatedAt,
  });

  factory ArtistLocationDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistLocationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistLocationDtoToJson(this);
}

@JsonSerializable()
class CreateArtistLocationRequest {
  final String name;
  final String address1;
  final String? shortAddress1;
  final String address2;
  final String? address3;
  final String? addressType;
  final String? state;
  final String city;
  final String? country;
  final String? formattedAddress;
  final double lat;
  final double lng;
  final Map<String, dynamic>? viewport;
  final int? locationOrder;
  final String? googlePlaceId;
  final String? profileThumbnail;

  CreateArtistLocationRequest({
    required this.name,
    required this.address1,
    this.shortAddress1,
    required this.address2,
    this.address3,
    this.addressType,
    this.state,
    required this.city,
    this.country,
    this.formattedAddress,
    required this.lat,
    required this.lng,
    this.viewport,
    this.locationOrder,
    this.googlePlaceId,
    this.profileThumbnail,
  });

  factory CreateArtistLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateArtistLocationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateArtistLocationRequestToJson(this);
}

@JsonSerializable()
class UpdateArtistLocationRequest {
  final String? name;
  final String? address1;
  final String? shortAddress1;
  final String? address2;
  final String? address3;
  final String? addressType;
  final String? state;
  final String? city;
  final String? country;
  final String? formattedAddress;
  final double? lat;
  final double? lng;
  final Map<String, dynamic>? viewport;
  final int? locationOrder;
  final String? googlePlaceId;
  final String? profileThumbnail;
  final bool? isActive;

  UpdateArtistLocationRequest({
    this.name,
    this.address1,
    this.shortAddress1,
    this.address2,
    this.address3,
    this.addressType,
    this.state,
    this.city,
    this.country,
    this.formattedAddress,
    this.lat,
    this.lng,
    this.viewport,
    this.locationOrder,
    this.googlePlaceId,
    this.profileThumbnail,
    this.isActive,
  });

  factory UpdateArtistLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateArtistLocationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateArtistLocationRequestToJson(this);
}