// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_artist_response.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchArtistResponseDtoImpl _$$SearchArtistResponseDtoImplFromJson(
        Map json) =>
    _$SearchArtistResponseDtoImpl(
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) => Artist.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      metadata:
          MetadataDto.fromJson(Map<String, dynamic>.from(json['meta'] as Map)),
    );

Map<String, dynamic> _$$SearchArtistResponseDtoImplToJson(
        _$SearchArtistResponseDtoImpl instance) =>
    <String, dynamic>{
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'meta': instance.metadata.toJson(),
    };

_$MetadataDtoImpl _$$MetadataDtoImplFromJson(Map json) => _$MetadataDtoImpl(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MetadataDtoImplToJson(_$MetadataDtoImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };
