// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenTransactionDto _$TokenTransactionDtoFromJson(Map json) =>
    TokenTransactionDto(
      id: json['id'] as String,
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      amount: (json['amount'] as num).toInt(),
      balanceBefore: (json['balanceBefore'] as num).toInt(),
      balanceAfter: (json['balanceAfter'] as num).toInt(),
      status: $enumDecode(_$TransactionStatusEnumMap, json['status']),
      metadata: (json['metadata'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$TokenTransactionDtoToJson(TokenTransactionDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': _$TransactionTypeEnumMap[instance.type]!,
    'amount': instance.amount,
    'balanceBefore': instance.balanceBefore,
    'balanceAfter': instance.balanceAfter,
    'status': _$TransactionStatusEnumMap[instance.status]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  val['createdAt'] = instance.createdAt.toIso8601String();
  return val;
}

const _$TransactionTypeEnumMap = {
  TransactionType.purchase: 'PURCHASE',
  TransactionType.consumption: 'CONSUMPTION',
  TransactionType.grant: 'GRANT',
  TransactionType.refund: 'REFUND',
};

const _$TransactionStatusEnumMap = {
  TransactionStatus.pending: 'PENDING',
  TransactionStatus.completed: 'COMPLETED',
  TransactionStatus.failed: 'FAILED',
  TransactionStatus.refunded: 'REFUNDED',
};
