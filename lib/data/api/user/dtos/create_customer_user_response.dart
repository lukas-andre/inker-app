import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'create_customer_user_response.g.dart';

CreateCustomerUserResponse createCustomerUserResponseFromJson(String str) =>
    CreateCustomerUserResponse.fromJson(json.decode(str));
String createCustomerUserResponseToJson(CreateCustomerUserResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class CreateCustomerUserResponse {
  CreateCustomerUserResponse({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.id,
    required this.contactEmail,
    required this.contactPhoneNumber,
    required this.createdAt,
  });

  final int id;
  final int userId;
  final String firstName;
  final String lastName;
  final String contactEmail;
  final String contactPhoneNumber;
  final String createdAt;

  factory CreateCustomerUserResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCustomerUserResponseToJson(this);
}
