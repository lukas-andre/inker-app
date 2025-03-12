part of 'artist_location_bloc.dart';

@freezed
class ArtistLocationEvent with _$ArtistLocationEvent {
  const factory ArtistLocationEvent.loadLocations(int artistId) = _LoadLocations;
  const factory ArtistLocationEvent.createLocation(int artistId, ArtistLocation location) = _CreateLocation;
  const factory ArtistLocationEvent.updateLocation(int artistId, int locationId, ArtistLocation location) = _UpdateLocation;
  const factory ArtistLocationEvent.deleteLocation(int artistId, int locationId) = _DeleteLocation;
}