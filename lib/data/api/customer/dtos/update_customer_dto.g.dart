// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$UpdateCustomerDtoToJson(UpdateCustomerDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('contactEmail', instance.contactEmail);
  writeNotNull('contactPhoneNumber', instance.contactPhoneNumber);
  writeNotNull('shortDescription', instance.shortDescription);
  return val;
}
