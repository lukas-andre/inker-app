import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/tokens/dtos/token_package_dto.dart';

part 'token_package.freezed.dart';

@freezed
class TokenPackage with _$TokenPackage {
  const factory TokenPackage({
    required String id,
    required String name,
    required int tokens,
    required double price,
    required String currency,
    required double pricePerToken,
    required double savings,
    required String description,
    String? badge,
  }) = _TokenPackage;

  const TokenPackage._();

  factory TokenPackage.fromDto(TokenPackageDto dto) {
    return TokenPackage(
      id: dto.id,
      name: dto.name,
      tokens: dto.tokens,
      price: dto.price,
      currency: dto.currency,
      pricePerToken: dto.pricePerToken,
      savings: dto.savings,
      description: dto.description,
      badge: dto.badge,
    );
  }

  // Check if this is a good deal
  bool get isBestValue => badge?.toLowerCase().contains('best') ?? false;
}