// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventMessageImpl _$$EventMessageImplFromJson(Map json) => _$EventMessageImpl(
      id: json['id'] as String,
      eventId: json['eventId'] as String,
      senderId: json['senderId'] as String,
      senderType: $enumDecode(_$QuotationRoleEnumMap, json['senderType']),
      message: json['message'] as String,
      imageUrl: json['imageUrl'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$EventMessageImplToJson(_$EventMessageImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'eventId': instance.eventId,
    'senderId': instance.senderId,
    'senderType': _$QuotationRoleEnumMap[instance.senderType]!,
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageUrl', instance.imageUrl);
  val['createdAt'] = instance.createdAt.toIso8601String();
  return val;
}

const _$QuotationRoleEnumMap = {
  QuotationRole.customer: 'customer',
  QuotationRole.artist: 'artist',
  QuotationRole.system: 'system',
};
