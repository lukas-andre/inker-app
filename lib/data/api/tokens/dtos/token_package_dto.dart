import 'package:json_annotation/json_annotation.dart';

part 'token_package_dto.g.dart';

@JsonSerializable()
class TokenPackageDto {
  final String id;
  final String name;
  final int tokens;
  final double price;
  final String currency;
  final double pricePerToken;
  final double savings;
  final String description;
  final String? badge;

  const TokenPackageDto({
    required this.id,
    required this.name,
    required this.tokens,
    required this.price,
    required this.currency,
    required this.pricePerToken,
    required this.savings,
    required this.description,
    this.badge,
  });

  factory TokenPackageDto.fromJson(Map<String, dynamic> json) =>
      _$TokenPackageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TokenPackageDtoToJson(this);
}