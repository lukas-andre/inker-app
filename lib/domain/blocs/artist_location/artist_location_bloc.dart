import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/location/dtos/artist_location_dto.dart';
import 'package:inker_studio/domain/models/location/artist_location.dart';
import 'package:inker_studio/domain/services/location/location_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

part 'artist_location_event.dart';
part 'artist_location_state.dart';
part 'artist_location_bloc.freezed.dart';

class ArtistLocationBloc extends Bloc<ArtistLocationEvent, ArtistLocationState> {
  final LocationService _locationService;
  final LocalSessionService _sessionService;

  ArtistLocationBloc(this._locationService, this._sessionService)
      : super(const ArtistLocationState.initial()) {
    on<ArtistLocationEvent>((event, emit) async {
      await event.when(
        loadLocations: (artistId) => _loadLocations(artistId, emit),
        createLocation: (artistId, location) => _createLocation(artistId, location, emit),
        updateLocation: (artistId, locationId, location) => 
            _updateLocation(artistId, locationId, location, emit),
        deleteLocation: (artistId, locationId) => _deleteLocation(artistId, locationId, emit),
      );
    });
  }

  Future<void> _loadLocations(String artistId, Emitter<ArtistLocationState> emit) async {
    emit(const ArtistLocationState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistLocationState.error('No active session token'));
        return;
      }
      final locationDtos = await _locationService.getArtistLocations(token, artistId);
      
      final locations = locationDtos
          .map((dto) => ArtistLocation.fromDto(dto))
          .toList();
      
      emit(ArtistLocationState.loaded(locations));
    } catch (e) {
      emit(ArtistLocationState.error(e.toString()));
    }
  }

  Future<void> _createLocation(
      String artistId, ArtistLocation location, Emitter<ArtistLocationState> emit) async {
    // First get the current state to preserve existing locations
    final currentState = state;
    emit(const ArtistLocationState.loading());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistLocationState.error('No active session token'));
        return;
      }
      
      final request = CreateArtistLocationRequest(
        artistId: artistId,
        name: location.name,
        address1: location.address1,
        shortAddress1: location.shortAddress1,
        address2: location.address2,
        address3: location.address3,
        addressType: location.addressType!,
        state: location.state,
        city: location.city,
        country: location.country,
        formattedAddress: location.formattedAddress,
        lat: location.lat,
        lng: location.lng,
        viewport: location.viewport,
        locationOrder: location.locationOrder,
        googlePlaceId: location.googlePlaceId,
        profileThumbnail: location.profileThumbnail,
      );
      
      final locationDto = await _locationService.createArtistLocation(
          token, artistId, request);
      
      final newLocation = ArtistLocation.fromDto(locationDto);
      
      // Merge the new location with existing locations if any
      if (currentState is _Loaded) {
        final updatedLocations = List<ArtistLocation>.from(currentState.locations)
          ..add(newLocation);
        emit(ArtistLocationState.loaded(updatedLocations));
      } else {
        emit(ArtistLocationState.loaded([newLocation]));
      }
    } catch (e) {
      emit(ArtistLocationState.error(e.toString()));
    }
  }

  Future<void> _updateLocation(String artistId, String locationId,
      ArtistLocation location, Emitter<ArtistLocationState> emit) async {
    final currentState = state;
    if (currentState is! _Loaded) {
      emit(const ArtistLocationState.error('Cannot update: locations not loaded'));
      return;
    }
    
    emit(const ArtistLocationState.loading());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistLocationState.error('No active session token'));
        return;
      }
      
      final request = UpdateArtistLocationRequest(
        name: location.name,
        address1: location.address1,
        shortAddress1: location.shortAddress1,
        address2: location.address2,
        address3: location.address3,
        addressType: location.addressType,
        state: location.state,
        city: location.city,
        country: location.country,
        formattedAddress: location.formattedAddress,
        lat: location.lat,
        lng: location.lng,
        viewport: location.viewport,
        locationOrder: location.locationOrder,
        googlePlaceId: location.googlePlaceId,
        profileThumbnail: location.profileThumbnail,
        isActive: location.isActive,
        artistId: artistId, // Include the artistId
      );
      
      final locationDto = await _locationService.updateArtistLocation(
          token, artistId, locationId, request);
      
      final updatedLocation = ArtistLocation.fromDto(locationDto);
      
      // Replace the updated location in the list
      final locations = currentState.locations.map((loc) {
        return loc.id == locationId ? updatedLocation : loc;
      }).toList();
      
      emit(ArtistLocationState.loaded(locations));
    } catch (e) {
      emit(ArtistLocationState.error(e.toString()));
    }
  }

  Future<void> _deleteLocation(
      String artistId, String locationId, Emitter<ArtistLocationState> emit) async {
    final currentState = state;
    if (currentState is! _Loaded) {
      emit(const ArtistLocationState.error('Cannot delete: locations not loaded'));
      return;
    }
    
    emit(const ArtistLocationState.loading());
    
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        emit(const ArtistLocationState.error('No active session token'));
        return;
      }
      final success = await _locationService.deleteArtistLocation(
          token, artistId, locationId);
      
      if (success) {
        // Remove the deleted location from the list
        final locations = currentState.locations
            .where((loc) => loc.id != locationId)
            .toList();
        
        emit(ArtistLocationState.loaded(locations));
      } else {
        emit(const ArtistLocationState.error('Failed to delete location'));
      }
    } catch (e) {
      emit(ArtistLocationState.error(e.toString()));
    }
  }
}