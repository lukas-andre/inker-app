// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDetailResponseImpl _$$EventDetailResponseImplFromJson(Map json) =>
    _$EventDetailResponseImpl(
      event: Event.fromJson(Map<String, dynamic>.from(json['event'] as Map)),
      artist: Artist.fromJson(Map<String, dynamic>.from(json['artist'] as Map)),
      location:
          Location.fromJson(Map<String, dynamic>.from(json['location'] as Map)),
      quotation: Quotation.fromJson(
          Map<String, dynamic>.from(json['quotation'] as Map)),
      actions: EventActions.fromJson(
          Map<String, dynamic>.from(json['actions'] as Map)),
    );

Map<String, dynamic> _$$EventDetailResponseImplToJson(
        _$EventDetailResponseImpl instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
      'artist': instance.artist.toJson(),
      'location': instance.location.toJson(),
      'quotation': instance.quotation.toJson(),
      'actions': instance.actions.toJson(),
    };
