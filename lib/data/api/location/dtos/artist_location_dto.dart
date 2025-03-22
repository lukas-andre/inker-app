import 'package:json_annotation/json_annotation.dart';

part 'artist_location_dto.g.dart';

enum AddressType {
  HOME,
  DEPARTMENT,
  STUDIO,
  OFFICE,
}

// Extension for converting enum to string
extension AddressTypeExtension on AddressType {
  String get value {
    switch (this) {
      case AddressType.HOME:
        return 'HOME';
      case AddressType.DEPARTMENT:
        return 'DEPARTMENT';
      case AddressType.STUDIO:
        return 'STUDIO';
      case AddressType.OFFICE:
        return 'OFFICE';
    }
  }
}

// Extension for converting string to enum
extension StringToAddressTypeExtension on String {
  AddressType toAddressType() {
    switch (toUpperCase()) {
      case 'HOME':
        return AddressType.HOME;
      case 'DEPARTMENT':
        return AddressType.DEPARTMENT;
      case 'STUDIO':
        return AddressType.STUDIO;
      case 'OFFICE':
        return AddressType.OFFICE;
      default:
        return AddressType.STUDIO; // Default for safety
    }
  }
}

@JsonSerializable()
class ArtistLocationDto {
  final int? id;
  final int artistId;
  final String name;
  final String address1;
  final String? shortAddress1;
  final String address2;
  final String? address3;
  
  @JsonKey(
    toJson: _addressTypeToJson,
    fromJson: _addressTypeFromJson,
  )
  final AddressType addressType;
  
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
    required this.addressType,
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
  
  // Helper methods for JSON serialization
  static String _addressTypeToJson(AddressType addressType) => addressType.value;
  static AddressType _addressTypeFromJson(String? addressType) => 
      addressType != null ? addressType.toAddressType() : AddressType.STUDIO;
}

@JsonSerializable()
class CreateArtistLocationRequest {
  final int artistId;
  final String name;
  final String address1;
  final String? shortAddress1;
  final String address2;
  final String? address3;
  
  @JsonKey(
    toJson: _addressTypeToJson,
    fromJson: _addressTypeFromJson,
  )
  final AddressType addressType;
  
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
    required this.artistId,
    required this.name,
    required this.address1,
    this.shortAddress1,
    required this.address2,
    this.address3,
    required this.addressType,
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
  
  // Helper methods for JSON serialization
  static String _addressTypeToJson(AddressType addressType) => addressType.value;
  static AddressType _addressTypeFromJson(String? addressType) => 
      addressType != null ? addressType.toAddressType() : AddressType.STUDIO;
}

@JsonSerializable()
class UpdateArtistLocationRequest {
  final String? name;
  final String? address1;
  final String? shortAddress1;
  final String? address2;
  final String? address3;
  
  @JsonKey(
    toJson: _addressTypeToJsonNullable,
    fromJson: _addressTypeFromJsonNullable,
  )
  final AddressType? addressType;
  
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
  
  // Always include artistId
  final int artistId;

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
    required this.artistId,
  });

  factory UpdateArtistLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateArtistLocationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateArtistLocationRequestToJson(this);
  
  // Helper methods for JSON serialization
  static String? _addressTypeToJsonNullable(AddressType? addressType) => 
      addressType?.value;
  
  static AddressType? _addressTypeFromJsonNullable(String? addressType) => 
      addressType?.toAddressType();
}