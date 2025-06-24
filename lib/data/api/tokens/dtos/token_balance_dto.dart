import 'package:json_annotation/json_annotation.dart';

part 'token_balance_dto.g.dart';

@JsonSerializable()
class TokenBalanceDto {
  final int balance;
  final int totalPurchased;
  final int totalConsumed;
  final int totalGranted;
  final DateTime? lastPurchaseAt;

  const TokenBalanceDto({
    required this.balance,
    required this.totalPurchased,
    required this.totalConsumed,
    required this.totalGranted,
    this.lastPurchaseAt,
  });

  factory TokenBalanceDto.fromJson(Map<String, dynamic> json) =>
      _$TokenBalanceDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TokenBalanceDtoToJson(this);
  
  // Default empty balance if API fails
  factory TokenBalanceDto.empty() => const TokenBalanceDto(
    balance: 0,
    totalPurchased: 0,
    totalConsumed: 0,
    totalGranted: 0,
    lastPurchaseAt: null,
  );
}