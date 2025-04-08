import 'dart:convert';

import 'package:equatable/equatable.dart';

class CreateCustomerResponse extends Equatable {
  final String id;
  final String userId;
  final String firstName;
  final String? lastName;
  final String? contactPhoneNumber;
  final String contactEmail;
  final String? shortDescription;
  final String? profileThumbnail;
  final String? follows;
  final int rating;

  const CreateCustomerResponse({
    required this.id,
    required this.userId,
    required this.firstName,
    this.lastName,
    this.contactPhoneNumber,
    required this.contactEmail,
    this.shortDescription,
    this.profileThumbnail,
    this.follows,
    required this.rating,
  });

  CreateCustomerResponse copyWith({
    String? id,
    String? userId,
    String? firstName,
    String? lastName,
    String? contactPhoneNumber,
    String? contactEmail,
    String? shortDescription,
    String? profileThumbnail,
    String? follows,
    int? rating,
  }) {
    return CreateCustomerResponse(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      contactPhoneNumber: contactPhoneNumber ?? this.contactPhoneNumber,
      contactEmail: contactEmail ?? this.contactEmail,
      shortDescription: shortDescription ?? this.shortDescription,
      profileThumbnail: profileThumbnail ?? this.profileThumbnail,
      follows: follows ?? this.follows,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'firstName': firstName,
      'lastName': lastName,
      'contactPhoneNumber': contactPhoneNumber,
      'contactEmail': contactEmail,
      'shortDescription': shortDescription,
      'profileThumbnail': profileThumbnail,
      'follows': follows,
      'rating': rating,
    };
  }

  factory CreateCustomerResponse.fromMap(Map<String, dynamic> map) {
    return CreateCustomerResponse(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'],
      contactPhoneNumber: map['contactPhoneNumber'],
      contactEmail: map['contactEmail'] ?? '',
      shortDescription: map['shortDescription'],
      profileThumbnail: map['profileThumbnail'],
      follows: map['follows'],
      rating: map['rating']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateCustomerResponse.fromJson(String source) =>
      CreateCustomerResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CreateCustomerResponse(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, contactPhoneNumber: $contactPhoneNumber, contactEmail: $contactEmail, shortDescription: $shortDescription, profileThumbnail: $profileThumbnail, follows: $follows, rating: $rating)';
  }

  @override
  List<Object?> get props {
    return [
      id,
      userId,
      firstName,
      lastName,
      contactPhoneNumber,
      contactEmail,
      shortDescription,
      profileThumbnail,
      follows,
      rating,
    ];
  }
}
