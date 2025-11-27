import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/tokens/dtos/token_transaction_dto.dart';

part 'token_transaction.freezed.dart';

@freezed
class TokenTransaction with _$TokenTransaction {
  const factory TokenTransaction({
    required String id,
    required TransactionType type,
    required int amount,
    required int balanceBefore,
    required int balanceAfter,
    required TransactionStatus status,
    Map<String, dynamic>? metadata,
    required DateTime createdAt,
  }) = _TokenTransaction;

  const TokenTransaction._();

  factory TokenTransaction.fromDto(TokenTransactionDto dto) {
    return TokenTransaction(
      id: dto.id,
      type: dto.type,
      amount: dto.amount,
      balanceBefore: dto.balanceBefore,
      balanceAfter: dto.balanceAfter,
      status: dto.status,
      metadata: dto.metadata,
      createdAt: dto.createdAt,
    );
  }

  // Helper getters
  bool get isCompleted => status == TransactionStatus.completed;
  bool get isPending => status == TransactionStatus.pending;
  bool get isFailed => status == TransactionStatus.failed;
  bool get isIncome => type == TransactionType.purchase || type == TransactionType.grant;
  bool get isExpense => type == TransactionType.consumption;
}