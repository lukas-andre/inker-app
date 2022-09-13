import 'package:json_annotation/json_annotation.dart';

part 'findArtistByLocationResponse.g.dart';

@JsonSerializable()
class FindArtistByLocationResponse {
  FindArtistByLocationResponse({
    required this.id,
    required this.artistId,
    required this.name,
    required this.country,
    required this.address1,
    required this.address2,
    required this.address3,
    required this.lat,
    required this.lng,
    required this.addressType,
    required this.formattedAddress,
    required this.city,
    required this.googlePlaceId,
    required this.distanceUnit,
    required this.distance,
    required this.artist,
  });

  final int? id;
  final int? artistId;
  final String? name;
  final String? country;
  final String? address1;
  final String? address2;
  final String? address3;
  final double? lat;
  final double? lng;
  final String? addressType;
  final String? formattedAddress;
  final String? city;
  final String? googlePlaceId;
  final String? distanceUnit;
  final double? distance;
  final Artist? artist;

  factory FindArtistByLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$FindArtistByLocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FindArtistByLocationResponseToJson(this);
}

@JsonSerializable()
class Artist {
  Artist({
    required this.contact,
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.studioPhoto,
    required this.shortDescription,
    required this.profileThumbnail,
    required this.rating,
  });

  final Contact? contact;
  final int? id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? studioPhoto;
  final dynamic shortDescription;
  final String? profileThumbnail;
  final int? rating;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}

@JsonSerializable()
class Contact {
  Contact({
    required this.phone,
    required this.email,
    required this.country,
  });

  final String? phone;
  final String? email;
  final String? country;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  Map<String, dynamic> toJson() => _$ContactToJson(this);
}
