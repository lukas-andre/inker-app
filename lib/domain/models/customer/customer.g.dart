// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerImpl _$$CustomerImplFromJson(Map json) => _$CustomerImpl(
      id: json['id'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      contactEmail: json['contactEmail'] as String?,
      contactPhoneNumber: json['contactPhoneNumber'] as String?,
      shortDescription: json['shortDescription'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      follows: (json['follows'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      tsv: json['tsv'] as String?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('userId', instance.userId);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('contactEmail', instance.contactEmail);
  writeNotNull('contactPhoneNumber', instance.contactPhoneNumber);
  writeNotNull('shortDescription', instance.shortDescription);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('follows', instance.follows);
  val['rating'] = instance.rating;
  writeNotNull('tsv', instance.tsv);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  return val;
}
