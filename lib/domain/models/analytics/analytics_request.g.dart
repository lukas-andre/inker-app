// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordInteractionRequestImpl _$$RecordInteractionRequestImplFromJson(
        Map json) =>
    _$RecordInteractionRequestImpl(
      contentId: (json['contentId'] as num).toInt(),
      contentType: $enumDecode(_$ContentTypeEnumMap, json['contentType']),
      interactionType:
          $enumDecode(_$InteractionTypeEnumMap, json['interactionType']),
      viewSource: $enumDecodeNullable(_$ViewSourceEnumMap, json['viewSource']),
      viewDurationSeconds: (json['viewDurationSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RecordInteractionRequestImplToJson(
    _$RecordInteractionRequestImpl instance) {
  final val = <String, dynamic>{
    'contentId': instance.contentId,
    'contentType': _$ContentTypeEnumMap[instance.contentType]!,
    'interactionType': _$InteractionTypeEnumMap[instance.interactionType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('viewSource', _$ViewSourceEnumMap[instance.viewSource]);
  writeNotNull('viewDurationSeconds', instance.viewDurationSeconds);
  return val;
}

const _$ContentTypeEnumMap = {
  ContentType.stencil: 'stencil',
  ContentType.work: 'work',
  ContentType.artistProfile: 'artistProfile',
};

const _$InteractionTypeEnumMap = {
  InteractionType.view: 'view',
  InteractionType.like: 'like',
  InteractionType.impression: 'impression',
  InteractionType.conversion: 'conversion',
  InteractionType.follow: 'follow',
};

const _$ViewSourceEnumMap = {
  ViewSource.search: 'search',
  ViewSource.feed: 'feed',
  ViewSource.profile: 'profile',
  ViewSource.related: 'related',
  ViewSource.direct: 'direct',
};

_$RecordArtistViewRequestImpl _$$RecordArtistViewRequestImplFromJson(
        Map json) =>
    _$RecordArtistViewRequestImpl(
      artistId: (json['artistId'] as num).toInt(),
    );

Map<String, dynamic> _$$RecordArtistViewRequestImplToJson(
        _$RecordArtistViewRequestImpl instance) =>
    <String, dynamic>{
      'artistId': instance.artistId,
    };

_$RecordArtistFollowRequestImpl _$$RecordArtistFollowRequestImplFromJson(
        Map json) =>
    _$RecordArtistFollowRequestImpl(
      artistId: (json['artistId'] as num).toInt(),
      fromContentView: json['fromContentView'] as bool? ?? false,
    );

Map<String, dynamic> _$$RecordArtistFollowRequestImplToJson(
        _$RecordArtistFollowRequestImpl instance) =>
    <String, dynamic>{
      'artistId': instance.artistId,
      'fromContentView': instance.fromContentView,
    };

_$BatchMetricsRequestImpl _$$BatchMetricsRequestImplFromJson(Map json) =>
    _$BatchMetricsRequestImpl(
      contentIds: (json['contentIds'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      contentType: $enumDecode(_$ContentTypeEnumMap, json['contentType']),
    );

Map<String, dynamic> _$$BatchMetricsRequestImplToJson(
        _$BatchMetricsRequestImpl instance) =>
    <String, dynamic>{
      'contentIds': instance.contentIds,
      'contentType': _$ContentTypeEnumMap[instance.contentType]!,
    };
