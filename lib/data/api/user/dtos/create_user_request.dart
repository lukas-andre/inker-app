import 'dart:convert';

import 'package:form_inputs/form_inputs.dart';
import 'package:inker_studio/features/auth_shared/models/user_type.dart' show UserTypeEnum;
import 'package:json_annotation/json_annotation.dart';

part 'create_user_request.g.dart';

CreateUserRequest createUserRequestFromJson(String str) =>
    CreateUserRequest.fromJson(json.decode(str));
String createUserRequestToJson(CreateUserRequest data) =>
    json.encode(data.toJson());

@JsonSerializable()
class CreateUserRequest {
  CreateUserRequest({
    required this.username,
    required this.email,
    required this.password,
    required this.phoneNumberDetails,
    required this.firstName,
    required this.lastName,
    required this.userType,
    this.artistInfo,
  });

  final String username;
  final String email;
  final String password;
  final PhoneNumberDetails phoneNumberDetails;
  final String firstName;
  final String lastName;
  final UserTypeEnum userType;
  final ArtistInfo? artistInfo;

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateUserRequestToJson(this);
}

@JsonSerializable()
class ArtistInfo {
  ArtistInfo({
    required this.address,
    required this.agendaWorkingDays,
    required this.agendaIsPublic,
    required this.agendaIsOpen,
  });

  final Address address;
  final List<String> agendaWorkingDays;
  final bool agendaIsPublic;
  final bool agendaIsOpen;

  factory ArtistInfo.fromJson(Map<String, dynamic> json) =>
      _$ArtistInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistInfoToJson(this);
}

@JsonSerializable()
class Address {
  Address({
    required this.address1,
    required this.shortAddress1,
    required this.address2,
    this.address3,
    required this.addressType,
    required this.city,
    required this.state,
    required this.country,
    required this.formattedAddress,
    required this.googlePlaceId,
    required this.geometry,
  });

  final String address1;
  final String shortAddress1;
  final String address2;
  final String? address3;
  final AddressType addressType;
  final String city;
  final String state;
  final String country;
  final String formattedAddress;
  final String googlePlaceId;
  final Geometry geometry;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Geometry {
  Geometry({
    required this.location,
    this.viewport,
  });

  final Location location;
  final Viewport? viewport;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}

@JsonSerializable()
class Location {
  Location({
    required this.lat,
    required this.lng,
  });

  final double? lat;
  final double? lng;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Viewport {
  Viewport({
    required this.northeast,
    required this.southwest,
  });

  final Location northeast;
  final Location southwest;

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);

  Map<String, dynamic> toJson() => _$ViewportToJson(this);
}

@JsonSerializable()
class PhoneNumberDetails {
  PhoneNumberDetails({
    required this.countryCode,
    required this.number,
    required this.dialCode,
  });

  final String? countryCode;
  final String? number;
  final String? dialCode;

  factory PhoneNumberDetails.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneNumberDetailsToJson(this);
}
