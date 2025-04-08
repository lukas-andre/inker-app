import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer extends Equatable {
  final String id;
  final String userId;
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
  final String? tsv;
  final DateTime? deletedAt;

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
    this.tsv,
    this.deletedAt,
  });

  @override
  List<Object?> get props => [
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
        tsv,
        deletedAt,
      ];

  // Factory constructor que usa el método generado _$CustomerFromJson
  factory Customer.fromJson(Map<String, dynamic> json) => 
      _$CustomerFromJson(json);

  // Método que usa el método generado _$CustomerToJson
  Map<String, dynamic> toJson() => _$CustomerToJson(this);

  Customer copyWith({
    String? id,
    String? userId,
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
    String? tsv,
    DateTime? deletedAt,
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
      tsv: tsv ?? this.tsv,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  @override
  String toString() {
    return 'Customer(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, contactEmail: $contactEmail, contactPhoneNumber: $contactPhoneNumber, shortDescription: $shortDescription, profileThumbnail: $profileThumbnail, follows: $follows, rating: $rating, createdAt: $createdAt, updatedAt: $updatedAt, tsv: $tsv, deletedAt: $deletedAt)';
  }
}