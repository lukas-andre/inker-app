import 'package:json_annotation/json_annotation.dart';

part 'update_customer_dto.g.dart';

@JsonSerializable(createFactory: false)
class UpdateCustomerDto {
  final String? firstName;
  final String? lastName;
  final String? contactEmail;
  final String? contactPhoneNumber;
  final String? shortDescription;

  UpdateCustomerDto({
    this.firstName,
    this.lastName,
    this.contactEmail,
    this.contactPhoneNumber,
    this.shortDescription,
  });

  Map<String, dynamic> toJson() => _$UpdateCustomerDtoToJson(this);
}