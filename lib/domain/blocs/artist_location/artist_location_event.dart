part of 'artist_location_bloc.dart';

@freezed
class ArtistLocationEvent with _$ArtistLocationEvent {
  const factory ArtistLocationEvent.loadLocations(String artistId) = _LoadLocations;
  const factory ArtistLocationEvent.createLocation(String artistId, ArtistLocation location) = _CreateLocation;
  const factory ArtistLocationEvent.updateLocation(String artistId, String locationId, ArtistLocation location) = _UpdateLocation;
  const factory ArtistLocationEvent.deleteLocation(String artistId, String locationId) = _DeleteLocation;
}