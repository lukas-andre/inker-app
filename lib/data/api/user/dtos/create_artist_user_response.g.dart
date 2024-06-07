// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_artist_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateArtistUserResponse _$CreateArtistUserResponseFromJson(Map json) =>
    CreateArtistUserResponse(
      userId: (json['userId'] as num).toInt(),
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      shortDescription: json['shortDescription'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      tags: json['tags'],
      genres: json['genres'],
      rating: (json['rating'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      contact:
          Contact.fromJson(Map<String, dynamic>.from(json['contact'] as Map)),
    );

Map<String, dynamic> _$CreateArtistUserResponseToJson(
    CreateArtistUserResponse instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'userId': instance.userId,
    'username': instance.username,
    'firstName': instance.firstName,
    'lastName': instance.lastName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shortDescription', instance.shortDescription);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('tags', instance.tags);
  writeNotNull('genres', instance.genres);
  val['contact'] = instance.contact.toJson();
  val['rating'] = instance.rating;
  return val;
}

Contact _$ContactFromJson(Map json) => Contact(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      phoneDialCode: json['phoneDialCode'] as String?,
      phoneCountryIsoCode: json['phoneCountryIsoCode'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ContactToJson(Contact instance) {
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
  writeNotNull('id', instance.id);
  return val;
}
