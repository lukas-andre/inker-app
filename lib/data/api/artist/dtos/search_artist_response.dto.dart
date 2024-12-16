import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';

part 'search_artist_response.dto.freezed.dart';
part 'search_artist_response.dto.g.dart';

@freezed
class SearchArtistResponseDto with _$SearchArtistResponseDto {
  const factory SearchArtistResponseDto({
    @Default([]) List<Artist> artists,
    @JsonKey(name: 'meta') required MetadataDto metadata,
  }) = _SearchArtistResponseDto;

  factory SearchArtistResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SearchArtistResponseDtoFromJson(json);
}

@freezed
class MetadataDto with _$MetadataDto {
  const factory MetadataDto({
    @Default(0) int total,
    @Default(1) int page,
    @Default(10) int limit,
    @Default(0) int totalPages,
  }) = _MetadataDto;

  factory MetadataDto.fromJson(Map<String, dynamic> json) =>
      _$MetadataDtoFromJson(json);
}
