import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_customer_response.freezed.dart';
part 'search_customer_response.g.dart';

List<CustomerDTO> getCustomerDTOsFromJson(String str) => List<CustomerDTO>.from(
    json.decode(str).map((x) => CustomerDTO.fromJson(x)));

String getCustomersToJson(List<CustomerDTO> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CustomerDTO with _$CustomerDTO {
  const factory CustomerDTO({
    required int id,
    required String createdAt,
    required String updatedAt,
    required int userId,
    required String firstName,
    required String lastName,
    required String contactEmail,
    required String contactPhoneNumber,
    String? shortDescription,
    String? profileThumbnail,
    int? follows,
    required int rating,
    String? tsv,
    String? deletedAt,
  }) = _CustomerDTO;

  factory CustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerDTOFromJson(json);
}

@freezed
class SearchCustomerResponse with _$SearchCustomerResponse {
  const factory SearchCustomerResponse({
    required List<CustomerDTO> customers,
  }) = _SearchCustomerResponse;

  factory SearchCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchCustomerResponseFromJson(json);
}
