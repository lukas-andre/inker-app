import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

Customer createCustomerFromJson(String str) =>
    Customer.fromJson(json.decode(str));

String createCustomerToJson(Customer data) => json.encode(data.toJson());

@JsonSerializable()
class Customer extends Equatable {
  const Customer({
    required this.id,
    required this.userId,
    required this.firstName,
    required this.contactEmail,
    required this.rating,
    this.lastName,
    this.contactPhoneNumber,
    this.shortDescription,
    this.profileThumbnail,
    this.follows,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final int userId;
  final String firstName;
  final String contactEmail;
  final int rating;
  final String? lastName;
  final String? contactPhoneNumber;
  final String? shortDescription;
  final String? profileThumbnail;
  final String? follows;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);

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
