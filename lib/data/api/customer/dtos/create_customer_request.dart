import 'dart:convert' show json;

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;

part 'create_customer_request.g.dart';

CreateCustomerRequest createCustomerRequestFromJson(String str) =>
    CreateCustomerRequest.fromJson(json.decode(str));

String createCustomerRequestToJson(CreateCustomerRequest data) =>
    json.encode(data.toJson());

@JsonSerializable(includeIfNull: false)
class CreateCustomerRequest extends Equatable {
  final String password;
  final String userType;
  final String username;
  final String email;
  final String? phoneNumber;
  final String firstName;
  final String? lastName;
  final String socialMediaType;

  const CreateCustomerRequest(
      {required this.password,
      required this.userType,
      required this.username,
      required this.email,
      this.phoneNumber,
      required this.firstName,
      this.lastName,
      required this.socialMediaType});

  factory CreateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCustomerRequestToJson(this);

  @override
  List<Object?> get props => [
        username,
        password,
        userType,
        email,
        phoneNumber,
        firstName,
        lastName,
        socialMediaType
      ];

  @override
  bool get stringify => true;
}
