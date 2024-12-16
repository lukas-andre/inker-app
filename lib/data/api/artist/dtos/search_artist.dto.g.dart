// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_artist.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchArtistDtoImpl _$$SearchArtistDtoImplFromJson(Map json) =>
    _$SearchArtistDtoImpl(
      query: json['query'] as String?,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      minRating: (json['minRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SearchArtistDtoImplToJson(
    _$SearchArtistDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('query', instance.query);
  val['page'] = instance.page;
  val['limit'] = instance.limit;
  writeNotNull('minRating', instance.minRating);
  return val;
}
