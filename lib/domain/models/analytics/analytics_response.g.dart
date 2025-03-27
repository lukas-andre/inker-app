// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentMetricsImpl _$$ContentMetricsImplFromJson(Map json) =>
    _$ContentMetricsImpl(
      contentId: (json['contentId'] as num).toInt(),
      contentType: json['contentType'] as String,
      viewCount: (json['viewCount'] as num).toInt(),
      uniqueViewCount: (json['uniqueViewCount'] as num).toInt(),
      likeCount: (json['likeCount'] as num).toInt(),
      userHasLiked: json['userHasLiked'] as bool?,
      viewDuration: json['viewDuration'] == null
          ? null
          : ViewDuration.fromJson(
              Map<String, dynamic>.from(json['viewDuration'] as Map)),
      engagementRate: (json['engagementRate'] as num?)?.toDouble(),
      conversions: json['conversions'] == null
          ? null
          : ConversionMetrics.fromJson(
              Map<String, dynamic>.from(json['conversions'] as Map)),
      impressions: json['impressions'] == null
          ? null
          : ImpressionMetrics.fromJson(
              Map<String, dynamic>.from(json['impressions'] as Map)),
      viewSources: json['viewSources'] == null
          ? null
          : ViewSourceMetrics.fromJson(
              Map<String, dynamic>.from(json['viewSources'] as Map)),
    );

Map<String, dynamic> _$$ContentMetricsImplToJson(
    _$ContentMetricsImpl instance) {
  final val = <String, dynamic>{
    'contentId': instance.contentId,
    'contentType': instance.contentType,
    'viewCount': instance.viewCount,
    'uniqueViewCount': instance.uniqueViewCount,
    'likeCount': instance.likeCount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userHasLiked', instance.userHasLiked);
  writeNotNull('viewDuration', instance.viewDuration?.toJson());
  writeNotNull('engagementRate', instance.engagementRate);
  writeNotNull('conversions', instance.conversions?.toJson());
  writeNotNull('impressions', instance.impressions?.toJson());
  writeNotNull('viewSources', instance.viewSources?.toJson());
  return val;
}

_$ArtistMetricsImpl _$$ArtistMetricsImplFromJson(Map json) =>
    _$ArtistMetricsImpl(
      artistId: (json['artistId'] as num).toInt(),
      viewCount: (json['viewCount'] as num).toInt(),
      uniqueViewCount: (json['uniqueViewCount'] as num).toInt(),
      followers: json['followers'] == null
          ? null
          : FollowerMetrics.fromJson(
              Map<String, dynamic>.from(json['followers'] as Map)),
    );

Map<String, dynamic> _$$ArtistMetricsImplToJson(_$ArtistMetricsImpl instance) {
  final val = <String, dynamic>{
    'artistId': instance.artistId,
    'viewCount': instance.viewCount,
    'uniqueViewCount': instance.uniqueViewCount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('followers', instance.followers?.toJson());
  return val;
}

_$ViewDurationImpl _$$ViewDurationImplFromJson(Map json) => _$ViewDurationImpl(
      totalSeconds: (json['totalSeconds'] as num).toInt(),
      averageSeconds: (json['averageSeconds'] as num).toDouble(),
    );

Map<String, dynamic> _$$ViewDurationImplToJson(_$ViewDurationImpl instance) =>
    <String, dynamic>{
      'totalSeconds': instance.totalSeconds,
      'averageSeconds': instance.averageSeconds,
    };

_$ConversionMetricsImpl _$$ConversionMetricsImplFromJson(Map json) =>
    _$ConversionMetricsImpl(
      count: (json['count'] as num).toInt(),
      conversionRate: (json['conversionRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$ConversionMetricsImplToJson(
        _$ConversionMetricsImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'conversionRate': instance.conversionRate,
    };

_$ImpressionMetricsImpl _$$ImpressionMetricsImplFromJson(Map json) =>
    _$ImpressionMetricsImpl(
      count: (json['count'] as num).toInt(),
      ctr: (json['ctr'] as num).toDouble(),
    );

Map<String, dynamic> _$$ImpressionMetricsImplToJson(
        _$ImpressionMetricsImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'ctr': instance.ctr,
    };

_$ViewSourceMetricsImpl _$$ViewSourceMetricsImplFromJson(Map json) =>
    _$ViewSourceMetricsImpl(
      search: (json['search'] as num?)?.toInt(),
      feed: (json['feed'] as num?)?.toInt(),
      profile: (json['profile'] as num?)?.toInt(),
      related: (json['related'] as num?)?.toInt(),
      direct: (json['direct'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ViewSourceMetricsImplToJson(
    _$ViewSourceMetricsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  writeNotNull('feed', instance.feed);
  writeNotNull('profile', instance.profile);
  writeNotNull('related', instance.related);
  writeNotNull('direct', instance.direct);
  return val;
}

_$FollowerMetricsImpl _$$FollowerMetricsImplFromJson(Map json) =>
    _$FollowerMetricsImpl(
      count: (json['count'] as num).toInt(),
      fromContentViews: (json['fromContentViews'] as num?)?.toInt(),
      conversionRate: (json['conversionRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FollowerMetricsImplToJson(
    _$FollowerMetricsImpl instance) {
  final val = <String, dynamic>{
    'count': instance.count,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fromContentViews', instance.fromContentViews);
  writeNotNull('conversionRate', instance.conversionRate);
  return val;
}
