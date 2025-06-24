// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_package_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenPackageDto _$TokenPackageDtoFromJson(Map json) => TokenPackageDto(
      id: json['id'] as String,
      name: json['name'] as String,
      tokens: (json['tokens'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      pricePerToken: (json['pricePerToken'] as num).toDouble(),
      savings: (json['savings'] as num).toDouble(),
      description: json['description'] as String,
      badge: json['badge'] as String?,
    );

Map<String, dynamic> _$TokenPackageDtoToJson(TokenPackageDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'tokens': instance.tokens,
    'price': instance.price,
    'currency': instance.currency,
    'pricePerToken': instance.pricePerToken,
    'savings': instance.savings,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('badge', instance.badge);
  return val;
}
