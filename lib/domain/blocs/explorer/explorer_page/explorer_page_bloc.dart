import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/data/api/location/dtos/findArtistByLocationRequest.dart';
import 'package:inker_studio/data/api/location/dtos/findArtistByLocationResponse.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/services/location/location_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/layout/marker_helper.dart';

part 'explorer_page_event.dart';
part 'explorer_page_state.dart';

class ExplorerPageBloc extends Bloc<ExplorerPageEvent, ExplorerPageState> {
  final MapBloc _mapBloc;
  final LocationService _locationService;

  ExplorerPageBloc(
      {required LocationService locationService, required MapBloc mapBloc})
      : _locationService = locationService,
        _mapBloc = mapBloc,
        super(const ExplorerPageState(
            view: ExplorerView.map, isLoading: false, firstLoad: true)) {
    on<ExplorerPageEventViewChanged>(_explorerPageEventViewChangedToState);
    on<ExplorerPageFetchArtists>(_explorerPageFetchArtistsToState);
  }

  Future<void> drawMarkers(
      List<FindArtistByLocationResponse> artistFounded) async {
    Map<Marker, FindArtistByLocationResponse> markersMap = {};
    for (int i = 0; i < artistFounded.length; i++) {
      final icon = await MarkerHelper.getArtistMarkerIcon(
          artistFounded[i].artist!, false);

      final markerId = MarkerId(artistFounded[i].artistId.toString());
      final marker = Marker(
          markerId: markerId,
          position: LatLng(
            artistFounded[i].lat!,
            artistFounded[i].lng!,
          ),
          consumeTapEvents: true,
          onTap: () {
            dev.log('Marker selected: $markerId', 'MapBloc');
            _mapBloc.add(OnMarkerSelectedEvent(
                selectedMarkerId: markerId, previousSelectedMarkerId: null));
          },
          icon: icon);

      markersMap[marker] = artistFounded[i];
    }

    _mapBloc.add(OnAddMarkersEvent(markersMap));
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
    if (state.isLoading) {
      return null;
    }
    emit(state.copyWith(isLoading: true));
    try {
      final response = await _locationService.getArtistByLocation(
          FindArtistByLocationRequest(
              range: 1,
              lat: event.location.latitude,
              lng: event.location.longitude));
      if (state.firstLoad) {
        emit(state.copyWith(firstLoad: false));
      }

      emit(state.copyWith(isLoading: false, artistFounded: response));
      await drawMarkers(response);
    } catch (e) {
      emit(state.copyWith(isLoading: false, firstLoad: false));
    }
  }
}
