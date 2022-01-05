// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as int,
      userId: json['userId'] as int,
      firstName: json['firstName'] as String,
      contactEmail: json['contactEmail'] as String,
      rating: json['rating'] as int,
      lastName: json['lastName'] as String?,
      contactPhoneNumber: json['contactPhoneNumber'] as String?,
      shortDescription: json['shortDescription'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      follows: json['follows'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'firstName': instance.firstName,
      'contactEmail': instance.contactEmail,
      'rating': instance.rating,
      'lastName': instance.lastName,
      'contactPhoneNumber': instance.contactPhoneNumber,
      'shortDescription': instance.shortDescription,
      'profileThumbnail': instance.profileThumbnail,
      'follows': instance.follows,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
