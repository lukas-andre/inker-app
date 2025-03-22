// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenda_event_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgendaEventDetailResponseImpl _$$AgendaEventDetailResponseImplFromJson(
        Map json) =>
    _$AgendaEventDetailResponseImpl(
      event: AgendaEventDetailEvent.fromJson(
          Map<String, dynamic>.from(json['event'] as Map)),
      location: AgendaEventDetailLocation.fromJson(
          Map<String, dynamic>.from(json['location'] as Map)),
    );

Map<String, dynamic> _$$AgendaEventDetailResponseImplToJson(
        _$AgendaEventDetailResponseImpl instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
      'location': instance.location.toJson(),
    };

_$AgendaEventDetailEventImpl _$$AgendaEventDetailEventImplFromJson(Map json) =>
    _$AgendaEventDetailEventImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      customerId: (json['customerId'] as num).toInt(),
      title: json['title'] as String,
      start: DateTime.parse(json['startDate'] as String),
      end: DateTime.parse(json['endDate'] as String),
      color: json['color'] as String,
      info: json['info'] as String?,
      notification: json['notification'] as bool,
      done: json['done'] as bool,
      workEvidence: json['workEvidence'] == null
          ? null
          : AgendaEventDetailWorkEvidence.fromJson(
              Map<String, dynamic>.from(json['workEvidence'] as Map)),
      cancelationReason: json['cancelationReason'] as String?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      quotationId: (json['quotationId'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      preparationTimeMinutes: (json['preparationTimeMinutes'] as num?)?.toInt(),
      cleanupTimeMinutes: (json['cleanupTimeMinutes'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AgendaEventDetailEventImplToJson(
    _$AgendaEventDetailEventImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'customerId': instance.customerId,
    'title': instance.title,
    'startDate': instance.start.toIso8601String(),
    'endDate': instance.end.toIso8601String(),
    'color': instance.color,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('info', instance.info);
  val['notification'] = instance.notification;
  val['done'] = instance.done;
  writeNotNull('workEvidence', instance.workEvidence?.toJson());
  writeNotNull('cancelationReason', instance.cancelationReason);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('quotationId', instance.quotationId);
  writeNotNull('notes', instance.notes);
  writeNotNull('preparationTimeMinutes', instance.preparationTimeMinutes);
  writeNotNull('cleanupTimeMinutes', instance.cleanupTimeMinutes);
  return val;
}

_$AgendaEventDetailWorkEvidenceImpl
    _$$AgendaEventDetailWorkEvidenceImplFromJson(Map json) =>
        _$AgendaEventDetailWorkEvidenceImpl(
          count: (json['count'] as num).toInt(),
          metadata: (json['metadata'] as List<dynamic>)
              .map((e) => AgendaEventDetailMetadata.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList(),
        );

Map<String, dynamic> _$$AgendaEventDetailWorkEvidenceImplToJson(
        _$AgendaEventDetailWorkEvidenceImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'metadata': instance.metadata.map((e) => e.toJson()).toList(),
    };

_$AgendaEventDetailMetadataImpl _$$AgendaEventDetailMetadataImplFromJson(
        Map json) =>
    _$AgendaEventDetailMetadataImpl(
      url: json['url'] as String,
      size: (json['size'] as num).toInt(),
      type: json['type'] as String,
      encoding: json['encoding'] as String,
      position: (json['position'] as num).toInt(),
      fieldname: json['fieldname'] as String,
      originalname: json['originalname'] as String,
    );

Map<String, dynamic> _$$AgendaEventDetailMetadataImplToJson(
        _$AgendaEventDetailMetadataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'size': instance.size,
      'type': instance.type,
      'encoding': instance.encoding,
      'position': instance.position,
      'fieldname': instance.fieldname,
      'originalname': instance.originalname,
    };

_$AgendaEventDetailLocationImpl _$$AgendaEventDetailLocationImplFromJson(
        Map json) =>
    _$AgendaEventDetailLocationImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      address1: json['address1'] as String,
      shortAddress1: json['shortAddress1'] as String,
      address2: json['address2'] as String,
      address3: json['address3'] as String?,
      addressType: json['addressType'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      formattedAddress: json['formattedAddress'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      viewport: AgendaEventDetailViewport.fromJson(
          Map<String, dynamic>.from(json['viewport'] as Map)),
      location: AgendaEventDetailLocationCoordinates.fromJson(
          Map<String, dynamic>.from(json['location'] as Map)),
      artistId: (json['artistId'] as num?)?.toInt(),
      name: json['name'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      googlePlaceId: json['googlePlaceId'] as String?,
    );

Map<String, dynamic> _$$AgendaEventDetailLocationImplToJson(
    _$AgendaEventDetailLocationImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'createdAt': instance.createdAt.toIso8601String(),
    'updatedAt': instance.updatedAt.toIso8601String(),
    'address1': instance.address1,
    'shortAddress1': instance.shortAddress1,
    'address2': instance.address2,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address3', instance.address3);
  val['addressType'] = instance.addressType;
  val['state'] = instance.state;
  val['city'] = instance.city;
  val['country'] = instance.country;
  val['formattedAddress'] = instance.formattedAddress;
  val['lat'] = instance.lat;
  val['lng'] = instance.lng;
  val['viewport'] = instance.viewport.toJson();
  val['location'] = instance.location.toJson();
  writeNotNull('artistId', instance.artistId);
  writeNotNull('name', instance.name);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('googlePlaceId', instance.googlePlaceId);
  return val;
}

_$AgendaEventDetailViewportImpl _$$AgendaEventDetailViewportImplFromJson(
        Map json) =>
    _$AgendaEventDetailViewportImpl(
      northeast: AgendaEventDetailCoordinates.fromJson(
          Map<String, dynamic>.from(json['northeast'] as Map)),
      southwest: AgendaEventDetailCoordinates.fromJson(
          Map<String, dynamic>.from(json['southwest'] as Map)),
    );

Map<String, dynamic> _$$AgendaEventDetailViewportImplToJson(
        _$AgendaEventDetailViewportImpl instance) =>
    <String, dynamic>{
      'northeast': instance.northeast.toJson(),
      'southwest': instance.southwest.toJson(),
    };

_$AgendaEventDetailCoordinatesImpl _$$AgendaEventDetailCoordinatesImplFromJson(
        Map json) =>
    _$AgendaEventDetailCoordinatesImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$AgendaEventDetailCoordinatesImplToJson(
        _$AgendaEventDetailCoordinatesImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$AgendaEventDetailLocationCoordinatesImpl
    _$$AgendaEventDetailLocationCoordinatesImplFromJson(Map json) =>
        _$AgendaEventDetailLocationCoordinatesImpl(
          type: json['type'] as String,
          coordinates: (json['coordinates'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
        );

Map<String, dynamic> _$$AgendaEventDetailLocationCoordinatesImplToJson(
        _$AgendaEventDetailLocationCoordinatesImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
