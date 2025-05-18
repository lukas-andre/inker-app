import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required String id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? firstName,
    String? lastName,
    String? contactEmail,
    String? contactPhoneNumber,
    String? shortDescription,
    String? profileThumbnail,
    int? follows,
    @Default(0.0) double rating,
    String? tsv, 
    DateTime? deletedAt,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}