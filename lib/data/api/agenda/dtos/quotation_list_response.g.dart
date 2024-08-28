// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotation_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuotationListResponseImpl _$$QuotationListResponseImplFromJson(Map json) =>
    _$QuotationListResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => Quotation.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$QuotationListResponseImplToJson(
        _$QuotationListResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };
