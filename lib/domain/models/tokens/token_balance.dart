import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/tokens/dtos/token_balance_dto.dart';

part 'token_balance.freezed.dart';

@freezed
class TokenBalance with _$TokenBalance {
  const factory TokenBalance({
    required int balance,
    required int totalPurchased,
    required int totalConsumed,
    required int totalGranted,
    DateTime? lastPurchaseAt,
  }) = _TokenBalance;

  const TokenBalance._();

  factory TokenBalance.fromDto(TokenBalanceDto dto) {
    return TokenBalance(
      balance: dto.balance,
      totalPurchased: dto.totalPurchased,
      totalConsumed: dto.totalConsumed,
      totalGranted: dto.totalGranted,
      lastPurchaseAt: dto.lastPurchaseAt,
    );
  }

  // Default empty balance
  factory TokenBalance.empty() => const TokenBalance(
    balance: 0,
    totalPurchased: 0,
    totalConsumed: 0,
    totalGranted: 0,
    lastPurchaseAt: null,
  );

  // Check if user has enough tokens
  bool hasEnoughTokens(int amount) => balance >= amount;
}