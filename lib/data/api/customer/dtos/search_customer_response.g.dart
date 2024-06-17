// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerDTOImpl _$$CustomerDTOImplFromJson(Map json) => _$CustomerDTOImpl(
      id: (json['id'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      userId: (json['userId'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      contactEmail: json['contactEmail'] as String,
      contactPhoneNumber: json['contactPhoneNumber'] as String,
      shortDescription: json['shortDescription'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      follows: (json['follows'] as num?)?.toInt(),
      rating: (json['rating'] as num).toInt(),
      tsv: json['tsv'] as String?,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$$CustomerDTOImplToJson(_$CustomerDTOImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt,
    'updatedAt': instance.updatedAt,
    'userId': instance.userId,
    'firstName': instance.firstName,
    'lastName': instance.lastName,
    'contactEmail': instance.contactEmail,
    'contactPhoneNumber': instance.contactPhoneNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shortDescription', instance.shortDescription);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('follows', instance.follows);
  val['rating'] = instance.rating;
  writeNotNull('tsv', instance.tsv);
  writeNotNull('deletedAt', instance.deletedAt);
  return val;
}

_$SearchCustomerResponseImpl _$$SearchCustomerResponseImplFromJson(Map json) =>
    _$SearchCustomerResponseImpl(
      customers: (json['customers'] as List<dynamic>)
          .map((e) => CustomerDTO.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$SearchCustomerResponseImplToJson(
        _$SearchCustomerResponseImpl instance) =>
    <String, dynamic>{
      'customers': instance.customers.map((e) => e.toJson()).toList(),
    };
