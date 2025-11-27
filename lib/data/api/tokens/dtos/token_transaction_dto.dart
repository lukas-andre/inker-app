import 'package:json_annotation/json_annotation.dart';

part 'token_transaction_dto.g.dart';

enum TransactionType {
  @JsonValue('PURCHASE')
  purchase,
  @JsonValue('CONSUMPTION')
  consumption,
  @JsonValue('GRANT')
  grant,
  @JsonValue('REFUND')
  refund,
}

enum TransactionStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('FAILED')
  failed,
  @JsonValue('REFUNDED')
  refunded,
}

@JsonSerializable()
class TokenTransactionDto {
  final String id;
  final TransactionType type;
  final int amount;
  final int balanceBefore;
  final int balanceAfter;
  final TransactionStatus status;
  final Map<String, dynamic>? metadata;
  final DateTime createdAt;

  const TokenTransactionDto({
    required this.id,
    required this.type,
    required this.amount,
    required this.balanceBefore,
    required this.balanceAfter,
    required this.status,
    this.metadata,
    required this.createdAt,
  });

  factory TokenTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TokenTransactionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TokenTransactionDtoToJson(this);
}