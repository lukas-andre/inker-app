// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCustomerResponse _$CreateCustomerResponseFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerResponse(
      userId: json['userId'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      contactPhoneNumber: json['contactPhoneNumber'] as String?,
      contactEmail: json['contactEmail'] as String,
      shortDescription: json['shortDescription'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      follows: json['follows'] as String?,
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      rating: json['rating'] as int,
    );

Map<String, dynamic> _$CreateCustomerResponseToJson(
        CreateCustomerResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'contactPhoneNumber': instance.contactPhoneNumber,
      'contactEmail': instance.contactEmail,
      'shortDescription': instance.shortDescription,
      'profileThumbnail': instance.profileThumbnail,
      'follows': instance.follows,
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'rating': instance.rating,
    };
