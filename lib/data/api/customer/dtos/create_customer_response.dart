import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_customer_response.g.dart';

CreateCustomerResponse createCustomerResponseFromJson(String str) =>
    CreateCustomerResponse.fromJson(json.decode(str));

String createCustomerResponseToJson(CreateCustomerResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class CreateCustomerResponse extends Equatable {
  const CreateCustomerResponse({
    required this.userId,
    required this.firstName,
    this.lastName,
    this.contactPhoneNumber,
    required this.contactEmail,
    this.shortDescription,
    this.profileThumbnail,
    this.follows,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.rating,
  });

  final int userId;
  final String firstName;
  final String? lastName;
  final String? contactPhoneNumber;
  final String contactEmail;
  final String? shortDescription;
  final String? profileThumbnail;
  final String? follows;
  final int id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int rating;

  factory CreateCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCustomerResponseToJson(this);

  @override
  List<Object?> get props => [
        id,
        userId,
        firstName,
        lastName,
        contactPhoneNumber,
        contactEmail,
        shortDescription,
        profileThumbnail,
        follows,
        createdAt,
        updatedAt,
        rating
      ];

  @override
  bool get stringify => true;
}
