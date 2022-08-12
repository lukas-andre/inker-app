import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show CameraPosition, CameraUpdate, GoogleMapController, LatLng;
import 'package:inker_studio/utils/styles/map_style.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  GoogleMapController? _mapController;

  MapBloc() : super(const MapState()) {
    on<MapEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<OnInitMapEvent>(_onInitMap);
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
}
