// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleResponseImpl _$$ScheduleResponseImplFromJson(Map json) =>
    _$ScheduleResponseImpl(
      events: (json['events'] as List<dynamic>)
          .map((e) =>
              ScheduleEvent.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      quotations: (json['quotations'] as List<dynamic>)
          .map((e) =>
              ScheduleQuotation.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      availability: (json['availability'] as List<dynamic>)
          .map((e) =>
              AvailabilityDay.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      suggestedSlots: (json['suggestedSlots'] as List<dynamic>)
          .map((e) =>
              SuggestedSlot.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      workingHours: WorkingHours.fromJson(
          Map<String, dynamic>.from(json['workingHours'] as Map)),
      summary: ScheduleSummary.fromJson(
          Map<String, dynamic>.from(json['summary'] as Map)),
    );

Map<String, dynamic> _$$ScheduleResponseImplToJson(
        _$ScheduleResponseImpl instance) =>
    <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
      'quotations': instance.quotations.map((e) => e.toJson()).toList(),
      'availability': instance.availability.map((e) => e.toJson()).toList(),
      'suggestedSlots': instance.suggestedSlots.map((e) => e.toJson()).toList(),
      'workingHours': instance.workingHours.toJson(),
      'summary': instance.summary.toJson(),
    };

_$ScheduleEventImpl _$$ScheduleEventImplFromJson(Map json) =>
    _$ScheduleEventImpl(
      id: json['id'] as String,
      category: json['category'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      status: json['status'] as String,
      customerId: json['customerId'] as String,
      customerName: json['customerName'] as String,
      customerAvatar: json['customerAvatar'] as String?,
      quotationId: json['quotationId'] as String?,
      isBlocking: json['isBlocking'] as bool,
      canModify: json['canModify'] as bool,
      canCancel: json['canCancel'] as bool,
      canReschedule: json['canReschedule'] as bool,
      conflictsWith: (json['conflictsWith'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      workEvidence: (json['workEvidence'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      notes: json['notes'] as String?,
      reminderSent: (json['reminderSent'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e as bool),
      ),
    );

Map<String, dynamic> _$$ScheduleEventImplToJson(_$ScheduleEventImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'category': instance.category,
    'type': instance.type,
    'title': instance.title,
    'description': instance.description,
    'startDate': instance.startDate.toIso8601String(),
    'endDate': instance.endDate.toIso8601String(),
    'status': instance.status,
    'customerId': instance.customerId,
    'customerName': instance.customerName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customerAvatar', instance.customerAvatar);
  writeNotNull('quotationId', instance.quotationId);
  val['isBlocking'] = instance.isBlocking;
  val['canModify'] = instance.canModify;
  val['canCancel'] = instance.canCancel;
  val['canReschedule'] = instance.canReschedule;
  writeNotNull('conflictsWith', instance.conflictsWith);
  writeNotNull('workEvidence', instance.workEvidence);
  writeNotNull('notes', instance.notes);
  writeNotNull('reminderSent', instance.reminderSent);
  return val;
}

_$ScheduleQuotationImpl _$$ScheduleQuotationImplFromJson(Map json) =>
    _$ScheduleQuotationImpl(
      id: json['id'] as String,
      category: json['category'] as String,
      type: json['type'] as String,
      quotationType: json['quotationType'] as String,
      status: json['status'] as String,
      customerId: json['customerId'] as String,
      customerName: json['customerName'] as String,
      customerAvatar: json['customerAvatar'] as String?,
      description: json['description'] as String,
      estimatedCost: json['estimatedCost'] == null
          ? null
          : EstimatedCost.fromJson(
              Map<String, dynamic>.from(json['estimatedCost'] as Map)),
      proposedDate: json['proposedDate'] == null
          ? null
          : DateTime.parse(json['proposedDate'] as String),
      proposedDuration: (json['proposedDuration'] as num?)?.toInt(),
      referenceImages: (json['referenceImages'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      hasConflict: json['hasConflict'] as bool,
      conflictingEventIds: (json['conflictingEventIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      actionRequired: json['actionRequired'] as bool,
      actionDeadline: json['actionDeadline'] == null
          ? null
          : DateTime.parse(json['actionDeadline'] as String),
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => SchedulerQuotationOffer.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      canRespond: json['canRespond'] as bool,
      canSubmitOffer: json['canSubmitOffer'] as bool,
    );

Map<String, dynamic> _$$ScheduleQuotationImplToJson(
    _$ScheduleQuotationImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'category': instance.category,
    'type': instance.type,
    'quotationType': instance.quotationType,
    'status': instance.status,
    'customerId': instance.customerId,
    'customerName': instance.customerName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customerAvatar', instance.customerAvatar);
  val['description'] = instance.description;
  writeNotNull('estimatedCost', instance.estimatedCost?.toJson());
  writeNotNull('proposedDate', instance.proposedDate?.toIso8601String());
  writeNotNull('proposedDuration', instance.proposedDuration);
  writeNotNull('referenceImages', instance.referenceImages);
  val['hasConflict'] = instance.hasConflict;
  writeNotNull('conflictingEventIds', instance.conflictingEventIds);
  val['actionRequired'] = instance.actionRequired;
  writeNotNull('actionDeadline', instance.actionDeadline?.toIso8601String());
  writeNotNull('offers', instance.offers?.map((e) => e.toJson()).toList());
  val['canRespond'] = instance.canRespond;
  val['canSubmitOffer'] = instance.canSubmitOffer;
  return val;
}

_$EstimatedCostImpl _$$EstimatedCostImplFromJson(Map json) =>
    _$EstimatedCostImpl(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$EstimatedCostImplToJson(_$EstimatedCostImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

_$AvailabilityDayImpl _$$AvailabilityDayImplFromJson(Map json) =>
    _$AvailabilityDayImpl(
      date: json['date'] as String,
      slots: (json['slots'] as List<dynamic>)
          .map((e) =>
              AvailabilitySlot.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$AvailabilityDayImplToJson(
        _$AvailabilityDayImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'slots': instance.slots.map((e) => e.toJson()).toList(),
    };

_$AvailabilitySlotImpl _$$AvailabilitySlotImplFromJson(Map json) =>
    _$AvailabilitySlotImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      density: _densityFromJson(json['density']),
    );

Map<String, dynamic> _$$AvailabilitySlotImplToJson(
        _$AvailabilitySlotImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'density': instance.density,
    };

_$SuggestedSlotImpl _$$SuggestedSlotImplFromJson(Map json) =>
    _$SuggestedSlotImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      density: _densityFromJson(json['density']),
    );

Map<String, dynamic> _$$SuggestedSlotImplToJson(_$SuggestedSlotImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'density': instance.density,
    };

_$WorkingHoursImpl _$$WorkingHoursImplFromJson(Map json) => _$WorkingHoursImpl(
      start: json['start'] as String,
      end: json['end'] as String,
      workingDays: (json['workingDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$WorkingHoursImplToJson(_$WorkingHoursImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'workingDays': instance.workingDays,
    };

_$ScheduleSummaryImpl _$$ScheduleSummaryImplFromJson(Map json) =>
    _$ScheduleSummaryImpl(
      totalConfirmedEvents: (json['totalConfirmedEvents'] as num).toInt(),
      totalTentativeEvents: (json['totalTentativeEvents'] as num).toInt(),
      totalActionableQuotations:
          (json['totalActionableQuotations'] as num).toInt(),
      totalOpportunities: (json['totalOpportunities'] as num).toInt(),
      nextAvailableSlot: json['nextAvailableSlot'] == null
          ? null
          : NextAvailableSlot.fromJson(
              Map<String, dynamic>.from(json['nextAvailableSlot'] as Map)),
      upcomingDeadlines: (json['upcomingDeadlines'] as List<dynamic>)
          .map((e) =>
              UpcomingDeadline.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleSummaryImplToJson(
    _$ScheduleSummaryImpl instance) {
  final val = <String, dynamic>{
    'totalConfirmedEvents': instance.totalConfirmedEvents,
    'totalTentativeEvents': instance.totalTentativeEvents,
    'totalActionableQuotations': instance.totalActionableQuotations,
    'totalOpportunities': instance.totalOpportunities,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nextAvailableSlot', instance.nextAvailableSlot?.toJson());
  val['upcomingDeadlines'] =
      instance.upcomingDeadlines.map((e) => e.toJson()).toList();
  return val;
}

_$NextAvailableSlotImpl _$$NextAvailableSlotImplFromJson(Map json) =>
    _$NextAvailableSlotImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      density: _densityFromJsonNullable(json['density']),
    );

Map<String, dynamic> _$$NextAvailableSlotImplToJson(
    _$NextAvailableSlotImpl instance) {
  final val = <String, dynamic>{
    'startTime': instance.startTime.toIso8601String(),
    'endTime': instance.endTime.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('density', instance.density);
  return val;
}

_$UpcomingDeadlineImpl _$$UpcomingDeadlineImplFromJson(Map json) =>
    _$UpcomingDeadlineImpl(
      quotationId: json['quotationId'] as String,
      deadline: DateTime.parse(json['deadline'] as String),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$UpcomingDeadlineImplToJson(
        _$UpcomingDeadlineImpl instance) =>
    <String, dynamic>{
      'quotationId': instance.quotationId,
      'deadline': instance.deadline.toIso8601String(),
      'type': instance.type,
    };

_$SchedulerQuotationOfferImpl _$$SchedulerQuotationOfferImplFromJson(
        Map json) =>
    _$SchedulerQuotationOfferImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      quotationId: json['quotationId'] as String,
      artistId: json['artistId'] as String,
      estimatedCost: json['estimatedCost'] == null
          ? null
          : EstimatedCost.fromJson(
              Map<String, dynamic>.from(json['estimatedCost'] as Map)),
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      estimatedDate: json['estimatedDate'] == null
          ? null
          : DateTime.parse(json['estimatedDate'] as String),
      estimatedDuration: (json['estimatedDuration'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as String,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Map<String, dynamic>.from(e as Map))
          .toList(),
    );

Map<String, dynamic> _$$SchedulerQuotationOfferImplToJson(
    _$SchedulerQuotationOfferImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'quotationId': instance.quotationId,
    'artistId': instance.artistId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('estimatedCost', instance.estimatedCost?.toJson());
  val['start'] = instance.start.toIso8601String();
  val['end'] = instance.end.toIso8601String();
  writeNotNull('estimatedDate', instance.estimatedDate?.toIso8601String());
  writeNotNull('estimatedDuration', instance.estimatedDuration);
  writeNotNull('message', instance.message);
  val['status'] = instance.status;
  writeNotNull('messages', instance.messages);
  return val;
}
