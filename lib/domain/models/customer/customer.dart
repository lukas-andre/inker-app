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
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.contactPhoneNumber,
    required this.contactEmail,
    required this.shortDescription,
    required this.profileThumbnail,
    required this.follows,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.rating,
  });

  final int userId;
  final String firstName;
  final String lastName;
  final String contactPhoneNumber;
  final String contactEmail;
  final String? shortDescription;
  final String? profileThumbnail;
  final String? follows;
  final int id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int rating;

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
