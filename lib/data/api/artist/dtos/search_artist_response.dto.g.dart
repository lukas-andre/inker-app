// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_artist_response.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchArtistResponseDtoImpl _$$SearchArtistResponseDtoImplFromJson(
        Map json) =>
    _$SearchArtistResponseDtoImpl(
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      metadata: MetadataDto.fromJson(
          Map<String, dynamic>.from(json['metadata'] as Map)),
    );

Map<String, dynamic> _$$SearchArtistResponseDtoImplToJson(
        _$SearchArtistResponseDtoImpl instance) =>
    <String, dynamic>{
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'metadata': instance.metadata.toJson(),
    };

_$MetadataDtoImpl _$$MetadataDtoImplFromJson(Map json) => _$MetadataDtoImpl(
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$$MetadataDtoImplToJson(_$MetadataDtoImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };
