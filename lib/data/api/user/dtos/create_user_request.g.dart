// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserRequest _$CreateUserRequestFromJson(Map json) => CreateUserRequest(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      phoneNumberDetails: PhoneNumberDetails.fromJson(
          Map<String, dynamic>.from(json['phoneNumberDetails'] as Map)),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userType: $enumDecode(_$UserTypeEnumEnumMap, json['userType']),
      artistInfo: json['artistInfo'] == null
          ? null
          : ArtistInfo.fromJson(
              Map<String, dynamic>.from(json['artistInfo'] as Map)),
    );

Map<String, dynamic> _$CreateUserRequestToJson(CreateUserRequest instance) {
  final val = <String, dynamic>{
    'username': instance.username,
    'email': instance.email,
    'password': instance.password,
    'phoneNumberDetails': instance.phoneNumberDetails.toJson(),
    'firstName': instance.firstName,
    'lastName': instance.lastName,
    'userType': _$UserTypeEnumEnumMap[instance.userType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('artistInfo', instance.artistInfo?.toJson());
  return val;
}

const _$UserTypeEnumEnumMap = {
  UserTypeEnum.customer: 'CUSTOMER',
  UserTypeEnum.artist: 'ARTIST',
};

ArtistInfo _$ArtistInfoFromJson(Map json) => ArtistInfo(
      address:
          Address.fromJson(Map<String, dynamic>.from(json['address'] as Map)),
      agendaWorkingDays: (json['agendaWorkingDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      agendaIsPublic: json['agendaIsPublic'] as bool,
      agendaIsOpen: json['agendaIsOpen'] as bool,
    );

Map<String, dynamic> _$ArtistInfoToJson(ArtistInfo instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'agendaWorkingDays': instance.agendaWorkingDays,
      'agendaIsPublic': instance.agendaIsPublic,
      'agendaIsOpen': instance.agendaIsOpen,
    };

Address _$AddressFromJson(Map json) => Address(
      address1: json['address1'] as String,
      address2: json['address2'] as String,
      address3: json['address3'] as String?,
      addressType: $enumDecode(_$AddressTypeEnumMap, json['addressType']),
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      formattedAddress: json['formattedAddress'] as String,
      googlePlaceId: json['googlePlaceId'] as String,
      geometry:
          Geometry.fromJson(Map<String, dynamic>.from(json['geometry'] as Map)),
    );

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{
    'address1': instance.address1,
    'address2': instance.address2,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address3', instance.address3);
  val['addressType'] = _$AddressTypeEnumMap[instance.addressType]!;
  val['city'] = instance.city;
  val['state'] = instance.state;
  val['country'] = instance.country;
  val['formattedAddress'] = instance.formattedAddress;
  val['googlePlaceId'] = instance.googlePlaceId;
  val['geometry'] = instance.geometry.toJson();
  return val;
}

const _$AddressTypeEnumMap = {
  AddressType.home: 'HOME',
  AddressType.apartment: 'DEPARTMENT',
  AddressType.office: 'OFFICE',
  AddressType.studio: 'STUDIO',
  AddressType.other: 'OTHER',
  AddressType.none: 'none',
};

Geometry _$GeometryFromJson(Map json) => Geometry(
      location:
          Location.fromJson(Map<String, dynamic>.from(json['location'] as Map)),
      viewport: json['viewport'] == null
          ? null
          : Viewport.fromJson(
              Map<String, dynamic>.from(json['viewport'] as Map)),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) {
  final val = <String, dynamic>{
    'location': instance.location.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('viewport', instance.viewport?.toJson());
  return val;
}

Location _$LocationFromJson(Map json) => Location(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lat', instance.lat);
  writeNotNull('lng', instance.lng);
  return val;
}

Viewport _$ViewportFromJson(Map json) => Viewport(
      northeast: Location.fromJson(
          Map<String, dynamic>.from(json['northeast'] as Map)),
      southwest: Location.fromJson(
          Map<String, dynamic>.from(json['southwest'] as Map)),
    );

Map<String, dynamic> _$ViewportToJson(Viewport instance) => <String, dynamic>{
      'northeast': instance.northeast.toJson(),
      'southwest': instance.southwest.toJson(),
    };

PhoneNumberDetails _$PhoneNumberDetailsFromJson(Map json) => PhoneNumberDetails(
      countryCode: json['countryCode'] as String?,
      number: json['number'] as String?,
      dialCode: json['dialCode'] as String?,
    );

Map<String, dynamic> _$PhoneNumberDetailsToJson(PhoneNumberDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('countryCode', instance.countryCode);
  writeNotNull('number', instance.number);
  writeNotNull('dialCode', instance.dialCode);
  return val;
}
