import 'dart:convert';

import 'package:equatable/equatable.dart';

class Customer extends Equatable {
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
  final DateTime? createdAt;
  final DateTime? updatedAt;

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
    this.createdAt,
    this.updatedAt,
  });

  Customer copyWith({
    int? id,
    int? userId,
    String? firstName,
    String? contactEmail,
    int? rating,
    String? lastName,
    String? contactPhoneNumber,
    String? shortDescription,
    String? profileThumbnail,
    String? follows,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Customer(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      firstName: firstName ?? this.firstName,
      contactEmail: contactEmail ?? this.contactEmail,
      rating: rating ?? this.rating,
      lastName: lastName ?? this.lastName,
      contactPhoneNumber: contactPhoneNumber ?? this.contactPhoneNumber,
      shortDescription: shortDescription ?? this.shortDescription,
      profileThumbnail: profileThumbnail ?? this.profileThumbnail,
      follows: follows ?? this.follows,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  String toJson() => json.encode(toMap());

  factory Customer.fromJson(String source) =>
      Customer.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Customer(id: $id, userId: $userId, firstName: $firstName, contactEmail: $contactEmail, rating: $rating, lastName: $lastName, contactPhoneNumber: $contactPhoneNumber, shortDescription: $shortDescription, profileThumbnail: $profileThumbnail, follows: $follows, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  List<Object?> get props {
    return [
      id,
      userId,
      firstName,
      contactEmail,
      rating,
      lastName,
      contactPhoneNumber,
      shortDescription,
      profileThumbnail,
      follows,
      createdAt,
      updatedAt,
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'firstName': firstName,
      'contactEmail': contactEmail,
      'rating': rating,
      'lastName': lastName,
      'contactPhoneNumber': contactPhoneNumber,
      'shortDescription': shortDescription,
      'profileThumbnail': profileThumbnail,
      'follows': follows,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
    };
  }

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      id: map['id']?.toInt() ?? 0,
      userId: map['userId']?.toInt() ?? 0,
      firstName: map['firstName'] ?? '',
      contactEmail: map['contactEmail'] ?? '',
      rating: map['rating']?.toInt() ?? 0,
      lastName: map['lastName'],
      contactPhoneNumber: map['contactPhoneNumber'],
      shortDescription: map['shortDescription'],
      profileThumbnail: map['profileThumbnail'],
      follows: map['follows'],
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'])
          : null,
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'])
          : null,
    );
  }
}
