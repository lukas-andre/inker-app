import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_artist_dto.freezed.dart';
part 'update_artist_dto.g.dart';

@freezed
class UpdateArtistDto with _$UpdateArtistDto {
  const factory UpdateArtistDto({
    String? firstName,
    String? lastName,
    String? shortDescription,
    UpdateContactDto? contact,
    bool? requiresBasicConsent,
  }) = _UpdateArtistDto;

  factory UpdateArtistDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateArtistDtoFromJson(json);
}

@freezed
class UpdateContactDto with _$UpdateContactDto {
  const factory UpdateContactDto({
    String? email,
    String? phone,
    String? phoneDialCode,
    String? phoneCountryIsoCode,
  }) = _UpdateContactDto;

  factory UpdateContactDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateContactDtoFromJson(json);
}
