// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_artist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateArtistDtoImpl _$$UpdateArtistDtoImplFromJson(Map json) =>
    _$UpdateArtistDtoImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      shortDescription: json['shortDescription'] as String?,
      contact: json['contact'] == null
          ? null
          : UpdateContactDto.fromJson(
              Map<String, dynamic>.from(json['contact'] as Map)),
      requiresBasicConsent: json['requiresBasicConsent'] as bool?,
    );

Map<String, dynamic> _$$UpdateArtistDtoImplToJson(
    _$UpdateArtistDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('shortDescription', instance.shortDescription);
  writeNotNull('contact', instance.contact?.toJson());
  writeNotNull('requiresBasicConsent', instance.requiresBasicConsent);
  return val;
}

_$UpdateContactDtoImpl _$$UpdateContactDtoImplFromJson(Map json) =>
    _$UpdateContactDtoImpl(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      phoneDialCode: json['phoneDialCode'] as String?,
      phoneCountryIsoCode: json['phoneCountryIsoCode'] as String?,
    );

Map<String, dynamic> _$$UpdateContactDtoImplToJson(
    _$UpdateContactDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('phoneDialCode', instance.phoneDialCode);
  writeNotNull('phoneCountryIsoCode', instance.phoneCountryIsoCode);
  return val;
}
