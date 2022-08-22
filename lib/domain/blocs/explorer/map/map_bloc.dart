import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show CameraPosition, CameraUpdate, GoogleMapController, LatLng;
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
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
}
