// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_balance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenBalanceDto _$TokenBalanceDtoFromJson(Map json) => TokenBalanceDto(
      balance: (json['balance'] as num).toInt(),
      totalPurchased: (json['totalPurchased'] as num).toInt(),
      totalConsumed: (json['totalConsumed'] as num).toInt(),
      totalGranted: (json['totalGranted'] as num).toInt(),
      lastPurchaseAt: json['lastPurchaseAt'] == null
          ? null
          : DateTime.parse(json['lastPurchaseAt'] as String),
    );

Map<String, dynamic> _$TokenBalanceDtoToJson(TokenBalanceDto instance) {
  final val = <String, dynamic>{
    'balance': instance.balance,
    'totalPurchased': instance.totalPurchased,
    'totalConsumed': instance.totalConsumed,
    'totalGranted': instance.totalGranted,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lastPurchaseAt', instance.lastPurchaseAt?.toIso8601String());
  return val;
}
