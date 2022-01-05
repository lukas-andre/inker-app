// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCustomerRequest _$CreateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerRequest(
      password: json['password'] as String,
      userType: json['userType'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      socialMediaType: json['socialMediaType'] as String,
    );

Map<String, dynamic> _$CreateCustomerRequestToJson(
    CreateCustomerRequest instance) {
  final val = <String, dynamic>{
    'password': instance.password,
    'userType': instance.userType,
    'username': instance.username,
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phoneNumber', instance.phoneNumber);
  val['firstName'] = instance.firstName;
  writeNotNull('lastName', instance.lastName);
  val['socialMediaType'] = instance.socialMediaType;
  return val;
}
