// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map json) => Customer(
      id: json['id'] as String,
      userId: json['userId'] as String,
      firstName: json['firstName'] as String,
      contactEmail: json['contactEmail'] as String,
      rating: (json['rating'] as num).toInt(),
      lastName: json['lastName'] as String?,
      contactPhoneNumber: json['contactPhoneNumber'] as String?,
      shortDescription: json['shortDescription'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      follows: json['follows'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      tsv: json['tsv'] as String?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'userId': instance.userId,
    'firstName': instance.firstName,
    'contactEmail': instance.contactEmail,
    'rating': instance.rating,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lastName', instance.lastName);
  writeNotNull('contactPhoneNumber', instance.contactPhoneNumber);
  writeNotNull('shortDescription', instance.shortDescription);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('follows', instance.follows);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('tsv', instance.tsv);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  return val;
}
