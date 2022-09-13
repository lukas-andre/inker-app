import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/data/api/location/dtos/findArtistByLocationRequest.dart';
import 'package:inker_studio/data/api/location/dtos/findArtistByLocationResponse.dart';
import 'package:inker_studio/domain/services/location/location_service.dart';

part 'explorer_plage_event.dart';
part 'explorer_plage_state.dart';

class ExplorerPageBloc extends Bloc<ExplorerPageEvent, ExplorerPageState> {
  final LocationService _locationService;

  ExplorerPageBloc({required LocationService locationService})
      : _locationService = locationService,
        super(const ExplorerPageState(
            view: ExplorerView.list, isLoading: false, firstLoad: true)) {
    on<ExplorerPageEventViewChanged>(_explorerPageEventViewChangedToState);
    on<ExplorerPageFetchArtists>(_explorerPageFetchArtistsToState);
  }

  Set<Marker> get markers => state.artistFounded
      .map((artist) => Marker(
            markerId: MarkerId(artist.artistId.toString()),
            position: LatLng(
              artist.lat!,
              artist.lng!,
            ),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueViolet),
          ))
      .toSet();

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
    } catch (e) {
      emit(state.copyWith(isLoading: false, firstLoad: false));
    }
  }
}
