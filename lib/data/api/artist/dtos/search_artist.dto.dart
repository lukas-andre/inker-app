import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_artist.dto.freezed.dart';
part 'search_artist.dto.g.dart';

@freezed
class SearchArtistDto with _$SearchArtistDto {
  const factory SearchArtistDto({
    String? query,
    @Default(1) int page,
    @Default(10) int limit,
    int? minRating,
  }) = _SearchArtistDto;

  factory SearchArtistDto.fromJson(Map<String, dynamic> json) =>
      _$SearchArtistDtoFromJson(json);
}
