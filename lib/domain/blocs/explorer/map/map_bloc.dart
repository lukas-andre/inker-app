import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show
        BitmapDescriptor,
        CameraPosition,
        CameraUpdate,
        GoogleMapController,
        LatLng,
        Marker,
        MarkerId;
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/layout/widgets_to_marker.dart';
import 'package:inker_studio/utils/styles/map_style.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final LocationBloc locationBloc;
  StreamSubscription<LocationState>? _locationStateSubscription;
  GoogleMapController? _mapController;

  MapBloc({required this.locationBloc}) : super(const MapState()) {
    on<OnInitMapEvent>(_onInitMap);
    on<OnFollowLocationButtonPressedEvent>(_onFollowLocationButtonPressed);
    on<OnStopFollowingLocation>(_onStopFollowingLocation);
    on<OnAddMarkersEvent>(_onAddMarkersEvent);
    on<OnMarkerSelectedEvent>(_onMarkerSelectedEvent);

    _locationStateSubscription = locationBloc.stream.listen((locationState) {
      if (!state.isFollowingUser) return;
      if (locationState.lastKnownLocation == null) return;

      moveCamera(locationState.lastKnownLocation!);
    });
  }

  void _onInitMap(OnInitMapEvent event, Emitter<MapState> emit) {
    _mapController = event.mapController;
    _mapController?.setMapStyle(jsonEncode(kInkerMapTheme));
    emit(state.copyWith(isMapInitialized: true));
  }

  void moveCamera(LatLng position) {
    final CameraPosition cameraPosition = CameraPosition(
      target: position,
      zoom: 15,
    );
    final cameraUpdate = CameraUpdate.newCameraPosition(cameraPosition);
    _mapController?.animateCamera(cameraUpdate);
  }

  void _onFollowLocationButtonPressed(
      OnFollowLocationButtonPressedEvent event, Emitter<MapState> emit) {
    emit(state.copyWith(isFollowingUser: !state.isFollowingUser));
    if (state.isFollowingUser) {
      if (locationBloc.state.lastKnownLocation == null) return;
      moveCamera(locationBloc.state.lastKnownLocation!);
    }
  }

  FutureOr<void> _onStopFollowingLocation(
      OnStopFollowingLocation event, Emitter<MapState> emit) {
    emit(state.copyWith(isFollowingUser: false));
  }

  @override
  Future<void> close() {
    _locationStateSubscription?.cancel();
    return super.close();
  }

  void _onAddMarkersEvent(OnAddMarkersEvent event, Emitter<MapState> emit) {
    emit(state.copyWith(markers: event.markers));
  }

  Future<void> _onMarkerSelectedEvent(
      OnMarkerSelectedEvent event, Emitter<MapState> emit) async {
    Set<Marker> markers = {};

    for (int i = 0; i < state.markers.length; i++) {
      BitmapDescriptor icon;
      if (event.marker == state.markers.toList()[i].markerId) {
        icon = await getEndCustomMarker('8', 'selected');
      } else {
        icon = await getStartCustomMarker('5', 'destination');
      }

      final markerId = state.markers.toList()[i].markerId;
      markers.add(Marker(
          markerId: markerId,
          position: state.markers.toList()[i].position,
          onTap: () => {
                dev.log('marker tapped', 'ExplorerPageBloc'),
                dev.log('markerId: ${markerId.value}', 'ExplorerPageBloc'),
                add(OnMarkerSelectedEvent(markerId))
              },
          icon: icon));
    }

    emit(state.copyWith(selectedMarker: event.marker, markers: markers));
  }
}
