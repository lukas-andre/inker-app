import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_request.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/domain/blocs/artist/artists_list/artists_list_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/domain/services/location/location_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/layout/marker_helper.dart';

part 'explorer_page_event.dart';
part 'explorer_page_state.dart';

class ExplorerPageBloc extends Bloc<ExplorerPageEvent, ExplorerPageState> {
  final MapBloc _mapBloc;
  final ArtistsListBloc _artistsListBloc;
  final LocationService _locationService;
  final LocalSessionService _localSessionService;
  final LocationBloc _locationBloc;

  ExplorerPageBloc({
    required MapBloc mapBloc,
    required LocationService locationService,
    required LocalSessionService localSessionService,
    required ArtistsListBloc artistsListBloc,
    required LocationBloc locationBloc,
  })  : _locationService = locationService,
        _localSessionService = localSessionService,
        _mapBloc = mapBloc,
        _artistsListBloc = artistsListBloc,
        _locationBloc = locationBloc,
        super(const ExplorerPageState(
            view: ExplorerView.list, isLoading: false, firstLoad: true)) {
    on<ExplorerPageEventViewChanged>(_explorerPageEventViewChangedToState);
    on<ExplorerPageFetchArtists>(_explorerPageFetchArtistsToState);
    on<ExplorerPageUpdateRange>(_onUpdateRange);
  }
 void _onUpdateRange(
  ExplorerPageUpdateRange event,
  Emitter<ExplorerPageState> emit,
) {
  emit(state.copyWith(range: event.range));
  
  // Actualizar círculo en el mapa
  final location = _locationBloc.state.lastKnownLocation;
  if (location != null) {
    _mapBloc.add(UpdateSearchRadiusEvent(
      radiusInKm: event.range,
      center: location,
    ));
  }
}


  Future<void> drawMarkers(
      List<FindArtistByLocationResponse> artistFounded) async {
    Map<Marker, FindArtistByLocationResponse> markersMap = {};
    for (int i = 0; i < artistFounded.length; i++) {
      final icon = await MarkerHelper.getArtistMarkerIcon(
          artistFounded[i].artist!, false);

      final markerId = MarkerId(artistFounded[i].artistId.toString());
      final position = LatLng(artistFounded[i].lat!, artistFounded[i].lng!);
      final marker = Marker(
          markerId: markerId,
          position: position,
          consumeTapEvents: false,
          onTap: () {
            dev.log('Marker selected: $markerId', 'MapBloc');
            _mapBloc.add(MarkerSelectedEvent(
                selectedMarkerId: markerId, previousSelectedMarkerId: null));
            _mapBloc.moveCamera(position);
          },
          icon: icon);

      markersMap[marker] = artistFounded[i];
    }

    _mapBloc.add(AddMarkersEvent(markersMap));
  }

  void _explorerPageEventViewChangedToState(
      ExplorerPageEventViewChanged event, Emitter<ExplorerPageState> emit) {
    if (state.view == event.view) {
      return;
    }
    emit(state.copyWith(view: event.view));
  }

  Future<FutureOr<void>> _explorerPageFetchArtistsToState(
      ExplorerPageFetchArtists event, Emitter<ExplorerPageState> emit) async {
    print('[ExplorerPageBloc] _explorerPageFetchArtistsToState: received event with location=${event.location}');
    print('[ExplorerPageBloc] _explorerPageFetchArtistsToState: current state isLoading=${state.isLoading}, firstLoad=${state.firstLoad}');
    
    if (state.isLoading) {
      print('[ExplorerPageBloc] _explorerPageFetchArtistsToState: already loading, returning');
      return null;
    }
    emit(state.copyWith(isLoading: true));
    try {
      final token = await _localSessionService.getActiveSessionToken() ?? '';
      print('[ExplorerPageBloc] _explorerPageFetchArtistsToState: token obtained, making API call');
      final response = await _locationService.getArtistByLocation(
          token,
          FindArtistByLocationRequest(
              range: state.range,
              lat: event.location.latitude,
              lng: event.location.longitude));
      print('[ExplorerPageBloc] _explorerPageFetchArtistsToState: API response received, artists count=${response.length}');
      
      if (state.firstLoad) {
        emit(state.copyWith(firstLoad: false));
      }

      emit(state.copyWith(isLoading: false, artistFounded: response));

      _artistsListBloc.add(ArtistsListEvent.addArtists(
          artists: response
              .map((e) => e.artist!
                  .copyWith(distance: e.distance, distanceUnit: e.distanceUnit))
              .toList()));

      await drawMarkers(response);
    } catch (e) {
      print('[ExplorerPageBloc] _explorerPageFetchArtistsToState: ERROR=$e');
      emit(state.copyWith(isLoading: false, firstLoad: false));
    }
  }
}
