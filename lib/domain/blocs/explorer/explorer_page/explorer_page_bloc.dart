import 'dart:async';
import 'dart:ui' as ui show Image;
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/data/api/location/dtos/findArtistByLocationRequest.dart';
import 'package:inker_studio/data/api/location/dtos/findArtistByLocationResponse.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/services/location/location_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/layout/widgets_to_marker.dart';

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

  Future<ui.Image> getImage(String path) async {
    var completer = Completer<ImageInfo>();
    var img = NetworkImage(path);
    img
        .resolve(const ImageConfiguration())
        .addListener(ImageStreamListener((info, _) {
      completer.complete(info);
    }));
    ImageInfo imageInfo = await completer.future;
    return imageInfo.image;
  }

  Future<void> drawMarkers(
      List<FindArtistByLocationResponse> artistFounded) async {
    Set<Marker> markers = {};

    for (int i = 0; i < artistFounded.length; i++) {
      final image = await getImage(artistFounded[i].artist!.profileThumbnail ==
              null
          ? 'https://d1riey1i0e5tx2.cloudfront.net/artist/default_profile.jpeg'
          : artistFounded[i].artist!.profileThumbnail!);
      BitmapDescriptor icon;
      if (i == 0) {
        icon = await getArtistMarker(
            image, artistFounded[i].artist!.username!, true);
      } else {
        icon = await getArtistMarker(
            image, artistFounded[i].artist!.username!, true);
      }
      final markerId = MarkerId(artistFounded[i].artistId.toString());
      markers.add(Marker(
          markerId: markerId,
          position: LatLng(
            artistFounded[i].lat!,
            artistFounded[i].lng!,
          ),
          onTap: () => {
                dev.log('marker tapped', 'ExplorerPageBloc'),
                dev.log('markerId: ${markerId.value}', 'ExplorerPageBloc'),
                _mapBloc.add(OnMarkerSelectedEvent(markerId))
              },
          icon: icon));
    }

    dev.log('markers: ${markers.length}', 'ExplorerPageBloc');
    _mapBloc.add(OnAddMarkersEvent(markers));
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
