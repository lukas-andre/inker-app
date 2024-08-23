// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuotationImpl _$$QuotationImplFromJson(Map json) => _$QuotationImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      customerId: (json['customerId'] as num).toInt(),
      artistId: (json['artistId'] as num).toInt(),
      description: json['description'] as String,
      referenceImages: json['referenceImages'] == null
          ? null
          : MultimediasMetadata.fromJson(
              Map<String, dynamic>.from(json['referenceImages'] as Map)),
      proposedDesigns: json['proposedDesigns'] == null
          ? null
          : MultimediasMetadata.fromJson(
              Map<String, dynamic>.from(json['proposedDesigns'] as Map)),
      status: $enumDecode(_$QuotationStatusEnumMap, json['status']),
      estimatedCost: (json['estimatedCost'] as num?)?.toDouble(),
      responseDate: json['responseDate'] == null
          ? null
          : DateTime.parse(json['responseDate'] as String),
      appointmentDate: json['appointmentDate'] == null
          ? null
          : DateTime.parse(json['appointmentDate'] as String),
      appointmentDuration: (json['appointmentDuration'] as num?)?.toInt(),
      rejectedReason: json['rejectedReason'] as String?,
      appealedReason:
          $enumDecodeNullable(_$AppealedReasonEnumMap, json['appealedReason']),
      appealedDate: json['appealedDate'] == null
          ? null
          : DateTime.parse(json['appealedDate'] as String),
      canceledReason:
          $enumDecodeNullable(_$CancelReasonEnumMap, json['canceledReason']),
      canceledDate: json['canceledDate'] == null
          ? null
          : DateTime.parse(json['canceledDate'] as String),
    );

Map<String, dynamic> _$$QuotationImplToJson(_$QuotationImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'customerId': instance.customerId,
    'artistId': instance.artistId,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('referenceImages', instance.referenceImages?.toJson());
  writeNotNull('proposedDesigns', instance.proposedDesigns?.toJson());
  val['status'] = _$QuotationStatusEnumMap[instance.status]!;
  writeNotNull('estimatedCost', instance.estimatedCost);
  writeNotNull('responseDate', instance.responseDate?.toIso8601String());
  writeNotNull('appointmentDate', instance.appointmentDate?.toIso8601String());
  writeNotNull('appointmentDuration', instance.appointmentDuration);
  writeNotNull('rejectedReason', instance.rejectedReason);
  writeNotNull(
      'appealedReason', _$AppealedReasonEnumMap[instance.appealedReason]);
  writeNotNull('appealedDate', instance.appealedDate?.toIso8601String());
  writeNotNull(
      'canceledReason', _$CancelReasonEnumMap[instance.canceledReason]);
  writeNotNull('canceledDate', instance.canceledDate?.toIso8601String());
  return val;
}

const _$QuotationStatusEnumMap = {
  QuotationStatus.pending: 'pending',
  QuotationStatus.quoted: 'quoted',
  QuotationStatus.accepted: 'accepted',
  QuotationStatus.rejected: 'rejected',
  QuotationStatus.appealed: 'appealed',
  QuotationStatus.canceled: 'canceled',
};

const _$AppealedReasonEnumMap = {
  AppealedReason.dateChange: 'dateChange',
};

const _$CancelReasonEnumMap = {
  CancelReason.customer: 'customer',
  CancelReason.artist: 'artist',
  CancelReason.notAttended: 'not_attended',
};

_$MultimediasMetadataImpl _$$MultimediasMetadataImplFromJson(Map json) =>
    _$MultimediasMetadataImpl(
      metadata: (json['metadata'] as List<dynamic>)
          .map((e) =>
              MultimediaMetadata.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$MultimediasMetadataImplToJson(
        _$MultimediasMetadataImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.map((e) => e.toJson()).toList(),
    };

_$MultimediaMetadataImpl _$$MultimediaMetadataImplFromJson(Map json) =>
    _$MultimediaMetadataImpl(
      url: json['url'] as String,
      size: (json['size'] as num).toInt(),
      type: json['type'] as String,
      encoding: json['encoding'] as String,
      position: (json['position'] as num).toInt(),
      fieldname: json['fieldname'] as String,
      originalname: json['originalname'] as String,
    );

Map<String, dynamic> _$$MultimediaMetadataImplToJson(
        _$MultimediaMetadataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'size': instance.size,
      'type': instance.type,
      'encoding': instance.encoding,
      'position': instance.position,
      'fieldname': instance.fieldname,
      'originalname': instance.originalname,
    };
