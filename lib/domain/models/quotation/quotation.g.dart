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
      estimatedCost: json['estimatedCost'] == null
          ? null
          : Money.fromJson(
              Map<String, dynamic>.from(json['estimatedCost'] as Map)),
      responseDate: json['responseDate'] == null
          ? null
          : DateTime.parse(json['responseDate'] as String),
      appointmentDate: json['appointmentDate'] == null
          ? null
          : DateTime.parse(json['appointmentDate'] as String),
      appointmentDuration: (json['appointmentDuration'] as num?)?.toInt(),
      rejectBy:
          $enumDecodeNullable(_$QuotationRejectByEnumMap, json['rejectBy']),
      customerRejectReason: $enumDecodeNullable(
          _$QuotationCustomerRejectReasonEnumMap, json['customerRejectReason']),
      artistRejectReason: $enumDecodeNullable(
          _$QuotationArtistRejectReasonEnumMap, json['artistRejectReason']),
      rejectReasonDetails: json['rejectReasonDetails'] as String?,
      rejectedDate: json['rejectedDate'] == null
          ? null
          : DateTime.parse(json['rejectedDate'] as String),
      appealedReason: $enumDecodeNullable(
          _$QuotationCustomerAppealReasonEnumMap, json['appealedReason']),
      appealedDate: json['appealedDate'] == null
          ? null
          : DateTime.parse(json['appealedDate'] as String),
      canceledBy:
          $enumDecodeNullable(_$QuotationCancelByEnumMap, json['canceledBy']),
      customerCancelReason: $enumDecodeNullable(
          _$QuotationCustomerCancelReasonEnumMap, json['customerCancelReason']),
      systemCancelReason: $enumDecodeNullable(
          _$QuotationSystemCancelReasonEnumMap, json['systemCancelReason']),
      cancelReasonDetails: json['cancelReasonDetails'] as String?,
      canceledDate: json['canceledDate'] == null
          ? null
          : DateTime.parse(json['canceledDate'] as String),
      lastUpdatedBy: (json['lastUpdatedBy'] as num?)?.toInt(),
      lastUpdatedByUserType: $enumDecodeNullable(
          _$QuotationUserTypeEnumMap, json['lastUpdatedByUserType']),
      history: (json['history'] as List<dynamic>?)
          ?.map((e) =>
              QuotationHistory.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(
              Map<String, dynamic>.from(json['customer'] as Map)),
      artist: json['artist'] == null
          ? null
          : Artist.fromJson(Map<String, dynamic>.from(json['artist'] as Map)),
      location: json['location'] == null
          ? null
          : Location.fromJson(
              Map<String, dynamic>.from(json['location'] as Map)),
      readByArtist: json['readByArtist'] as bool? ?? false,
      readByCustomer: json['readByCustomer'] as bool? ?? false,
      artistReadAt: json['artistReadAt'] == null
          ? null
          : DateTime.parse(json['artistReadAt'] as String),
      customerReadAt: json['customerReadAt'] == null
          ? null
          : DateTime.parse(json['customerReadAt'] as String),
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
  writeNotNull('estimatedCost', instance.estimatedCost?.toJson());
  writeNotNull('responseDate', instance.responseDate?.toIso8601String());
  writeNotNull('appointmentDate', instance.appointmentDate?.toIso8601String());
  writeNotNull('appointmentDuration', instance.appointmentDuration);
  writeNotNull('rejectBy', _$QuotationRejectByEnumMap[instance.rejectBy]);
  writeNotNull('customerRejectReason',
      _$QuotationCustomerRejectReasonEnumMap[instance.customerRejectReason]);
  writeNotNull('artistRejectReason',
      _$QuotationArtistRejectReasonEnumMap[instance.artistRejectReason]);
  writeNotNull('rejectReasonDetails', instance.rejectReasonDetails);
  writeNotNull('rejectedDate', instance.rejectedDate?.toIso8601String());
  writeNotNull('appealedReason',
      _$QuotationCustomerAppealReasonEnumMap[instance.appealedReason]);
  writeNotNull('appealedDate', instance.appealedDate?.toIso8601String());
  writeNotNull('canceledBy', _$QuotationCancelByEnumMap[instance.canceledBy]);
  writeNotNull('customerCancelReason',
      _$QuotationCustomerCancelReasonEnumMap[instance.customerCancelReason]);
  writeNotNull('systemCancelReason',
      _$QuotationSystemCancelReasonEnumMap[instance.systemCancelReason]);
  writeNotNull('cancelReasonDetails', instance.cancelReasonDetails);
  writeNotNull('canceledDate', instance.canceledDate?.toIso8601String());
  writeNotNull('lastUpdatedBy', instance.lastUpdatedBy);
  writeNotNull('lastUpdatedByUserType',
      _$QuotationUserTypeEnumMap[instance.lastUpdatedByUserType]);
  writeNotNull('history', instance.history?.map((e) => e.toJson()).toList());
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('artist', instance.artist?.toJson());
  writeNotNull('location', instance.location?.toJson());
  val['readByArtist'] = instance.readByArtist;
  val['readByCustomer'] = instance.readByCustomer;
  writeNotNull('artistReadAt', instance.artistReadAt?.toIso8601String());
  writeNotNull('customerReadAt', instance.customerReadAt?.toIso8601String());
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

const _$QuotationRejectByEnumMap = {
  QuotationRejectBy.customer: 'customer',
  QuotationRejectBy.artist: 'artist',
  QuotationRejectBy.system: 'system',
};

const _$QuotationCustomerRejectReasonEnumMap = {
  QuotationCustomerRejectReason.tooExpensive: 'too_expensive',
  QuotationCustomerRejectReason.notWhatIWanted: 'not_what_i_wanted',
  QuotationCustomerRejectReason.changedMyMind: 'changed_my_mind',
  QuotationCustomerRejectReason.foundAnotherArtist: 'found_another_artist',
  QuotationCustomerRejectReason.other: 'other',
};

const _$QuotationArtistRejectReasonEnumMap = {
  QuotationArtistRejectReason.schedulingConflict: 'scheduling_conflict',
  QuotationArtistRejectReason.artisticDisagreement: 'artistic_disagreement',
  QuotationArtistRejectReason.insufficientDetails: 'insufficient_details',
  QuotationArtistRejectReason.beyondExpertise: 'beyond_expertise',
  QuotationArtistRejectReason.other: 'other',
};

const _$QuotationCustomerAppealReasonEnumMap = {
  QuotationCustomerAppealReason.dateChange: 'date_change',
  QuotationCustomerAppealReason.priceChange: 'price_change',
  QuotationCustomerAppealReason.designChange: 'design_change',
  QuotationCustomerAppealReason.other: 'other',
};

const _$QuotationCancelByEnumMap = {
  QuotationCancelBy.customer: 'customer',
  QuotationCancelBy.system: 'system',
};

const _$QuotationCustomerCancelReasonEnumMap = {
  QuotationCustomerCancelReason.changeOfMind: 'change_of_mind',
  QuotationCustomerCancelReason.foundAnotherArtist: 'found_another_artist',
  QuotationCustomerCancelReason.financialReasons: 'financial_reasons',
  QuotationCustomerCancelReason.personalReasons: 'personal_reasons',
  QuotationCustomerCancelReason.other: 'other',
};

const _$QuotationSystemCancelReasonEnumMap = {
  QuotationSystemCancelReason.notAttended: 'not_attended',
  QuotationSystemCancelReason.systemTimeout: 'system_timeout',
};

const _$QuotationUserTypeEnumMap = {
  QuotationUserType.customer: 'customer',
  QuotationUserType.artist: 'artist',
  QuotationUserType.admin: 'admin',
  QuotationUserType.system: 'system',
};

_$QuotationHistoryImpl _$$QuotationHistoryImplFromJson(Map json) =>
    _$QuotationHistoryImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      quotation: json['quotation'] == null
          ? null
          : Quotation.fromJson(
              Map<String, dynamic>.from(json['quotation'] as Map)),
      previousStatus:
          $enumDecode(_$QuotationStatusEnumMap, json['previousStatus']),
      newStatus: $enumDecode(_$QuotationStatusEnumMap, json['newStatus']),
      changedAt: DateTime.parse(json['changedAt'] as String),
      changedBy: (json['changedBy'] as num).toInt(),
      changedByUserType:
          $enumDecode(_$QuotationRoleEnumMap, json['changedByUserType']),
      previousEstimatedCost: json['previousEstimatedCost'] == null
          ? null
          : Money.fromJson(
              Map<String, dynamic>.from(json['previousEstimatedCost'] as Map)),
      newEstimatedCost: json['newEstimatedCost'] == null
          ? null
          : Money.fromJson(
              Map<String, dynamic>.from(json['newEstimatedCost'] as Map)),
      previousAppointmentDate: json['previousAppointmentDate'] == null
          ? null
          : DateTime.parse(json['previousAppointmentDate'] as String),
      newAppointmentDate: json['newAppointmentDate'] == null
          ? null
          : DateTime.parse(json['newAppointmentDate'] as String),
      previousAppointmentDuration:
          (json['previousAppointmentDuration'] as num?)?.toInt(),
      newAppointmentDuration: (json['newAppointmentDuration'] as num?)?.toInt(),
      appealedReason: $enumDecodeNullable(
          _$QuotationCustomerAppealReasonEnumMap, json['appealedReason']),
      rejectionReason: json['rejectionReason'] as String?,
      cancellationReason: json['cancellationReason'] as String?,
      additionalDetails: json['additionalDetails'] as String?,
      lastUpdatedBy: (json['lastUpdatedBy'] as num?)?.toInt(),
      lastUpdatedByUserType: $enumDecodeNullable(
          _$QuotationUserTypeEnumMap, json['lastUpdatedByUserType']),
    );

Map<String, dynamic> _$$QuotationHistoryImplToJson(
    _$QuotationHistoryImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quotation', instance.quotation?.toJson());
  val['previousStatus'] = _$QuotationStatusEnumMap[instance.previousStatus]!;
  val['newStatus'] = _$QuotationStatusEnumMap[instance.newStatus]!;
  val['changedAt'] = instance.changedAt.toIso8601String();
  val['changedBy'] = instance.changedBy;
  val['changedByUserType'] =
      _$QuotationRoleEnumMap[instance.changedByUserType]!;
  writeNotNull(
      'previousEstimatedCost', instance.previousEstimatedCost?.toJson());
  writeNotNull('newEstimatedCost', instance.newEstimatedCost?.toJson());
  writeNotNull('previousAppointmentDate',
      instance.previousAppointmentDate?.toIso8601String());
  writeNotNull(
      'newAppointmentDate', instance.newAppointmentDate?.toIso8601String());
  writeNotNull(
      'previousAppointmentDuration', instance.previousAppointmentDuration);
  writeNotNull('newAppointmentDuration', instance.newAppointmentDuration);
  writeNotNull('appealedReason',
      _$QuotationCustomerAppealReasonEnumMap[instance.appealedReason]);
  writeNotNull('rejectionReason', instance.rejectionReason);
  writeNotNull('cancellationReason', instance.cancellationReason);
  writeNotNull('additionalDetails', instance.additionalDetails);
  writeNotNull('lastUpdatedBy', instance.lastUpdatedBy);
  writeNotNull('lastUpdatedByUserType',
      _$QuotationUserTypeEnumMap[instance.lastUpdatedByUserType]);
  return val;
}

const _$QuotationRoleEnumMap = {
  QuotationRole.customer: 'customer',
  QuotationRole.artist: 'artist',
  QuotationRole.system: 'system',
};

_$MoneyImpl _$$MoneyImplFromJson(Map json) => _$MoneyImpl(
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String? ?? 'USD',
      scale: (json['scale'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$MoneyImplToJson(_$MoneyImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'scale': instance.scale,
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
