// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCustomerUserResponse _$CreateCustomerUserResponseFromJson(Map json) =>
    CreateCustomerUserResponse(
      userId: json['userId'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      id: json['id'] as int,
      contactEmail: json['contactEmail'] as String,
      contactPhoneNumber: json['contactPhoneNumber'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$CreateCustomerUserResponseToJson(
        CreateCustomerUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'contactEmail': instance.contactEmail,
      'contactPhoneNumber': instance.contactPhoneNumber,
      'createdAt': instance.createdAt,
    };
