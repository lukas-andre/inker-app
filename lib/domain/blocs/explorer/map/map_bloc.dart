import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show
        CameraPosition,
        CameraUpdate,
        GoogleMapController,
        LatLng,
        Marker,
        MarkerId;
import 'package:inker_studio/data/api/location/dtos/findArtistByLocationResponse.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/layout/marker_helper.dart';
import 'package:inker_studio/utils/styles/map_style.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final LocationBloc locationBloc;
  StreamSubscription<LocationState>? _locationStateSubscription;
  GoogleMapController? _mapController;
  DraggableScrollableController draggableScrollableController =
      DraggableScrollableController();

  MapBloc({required this.locationBloc}) : super(const MapState()) {
    on<OnInitMapEvent>(_onInitMap);
    on<OnFollowLocationButtonPressedEvent>(_onFollowLocationButtonPressed);
    on<OnStopFollowingLocationEvent>(_onStopFollowingLocation);
    on<OnAddMarkersEvent>(_onAddMarkersEvent);
    on<OnMarkerSelectedEvent>(_onMarkerSelectedEvent);
    on<DeselectAllMarkerEvent>(_onDeselectAllMarkerEvent);
    on<OnMapDraggableScrollableNotificationEvent>(
        _onMapDraggableScrollableNotificationEvent);

    _locationStateSubscription = locationBloc.stream.listen((locationState) {
      if (!state.isFollowingUser) return;
      if (locationState.lastKnownLocation == null) return;

      moveCamera(locationState.lastKnownLocation!);
    });
  }

  Artist? get selectedArtist {
    if (state.selectedMarker == null) return null;

    return state.markers.entries
        .firstWhere((element) => element.key.markerId == state.selectedMarker)
        .value
        .artist;
  }

  void _onInitMap(OnInitMapEvent event, Emitter<MapState> emit) {
    _mapController = event.mapController;
    _mapController?.setMapStyle(jsonEncode(kInkerMapTheme));
    emit(state.copyWith(isMapInitialized: true));
  }

  void moveCamera(LatLng position) {
    final CameraPosition cameraPosition = CameraPosition(
      target: position,
      zoom: 14.4746,
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
      OnStopFollowingLocationEvent event, Emitter<MapState> emit) {
    emit(state.copyWith(isFollowingUser: false));
  }

  void _onAddMarkersEvent(OnAddMarkersEvent event, Emitter<MapState> emit) {
    emit(state.copyWith(markers: event.markers));
  }

  @override
  Future<void> close() {
    _locationStateSubscription?.cancel();
    return super.close();
  }

  Future<void> _onMarkerSelectedEvent(
      OnMarkerSelectedEvent event, Emitter<MapState> emit) async {
    final Map<Marker, FindArtistByLocationResponse> newMarkers = {};
    for (var element in state.markers.entries) {
      final isSelected =
          element.key.markerId.value == event.selectedMarkerId.value;

      if (isFirstTimeSelected(isSelected, event)) {
        await handleFirstTimeSelected(event, newMarkers, emit);

        return;
      }

      final isPreviousSelected =
          element.key.markerId.value == event.previousSelectedMarkerId?.value;

      if (isSelected == isPreviousSelected) {
        newMarkers[element.key] = element.value;

        continue;
      }

      if (isSelected) {
        Marker marker = await _getMarker(element, isSelected);
        newMarkers[marker] = element.value;

        continue;
      }

      if (isPreviousSelected) {
        Marker marker = await _getMarker(element, isSelected);
        newMarkers[marker] = element.value;

        continue;
      }

      newMarkers[element.key] = element.value;
    }

    emit(state.copyWith(
        selectedMarker: event.selectedMarkerId, markers: newMarkers));

    await openDraggableSheet(emit);
  }

  Future<Marker> _getMarker(
      MapEntry<Marker, FindArtistByLocationResponse> element,
      bool isSelected) async {
    final icon = await MarkerHelper.getArtistMarkerIcon(
        element.value.artist!, isSelected);

    final marker = Marker(
        markerId: element.key.markerId,
        position: element.key.position,
        consumeTapEvents: true,
        onTap: () {
          dev.log('Marker selected: ${element.key.markerId.value}', 'MapBloc');
          add(OnMarkerSelectedEvent(
            previousSelectedMarkerId: state.selectedMarker!,
            selectedMarkerId: element.key.markerId,
          ));
          moveCamera(element.key.position);
        },
        icon: icon);

    return marker;
  }

  Future<void> handleFirstTimeSelected(
      OnMarkerSelectedEvent event,
      Map<Marker, FindArtistByLocationResponse> newMarkers,
      Emitter<MapState> emit) async {
    for (var element in state.markers.entries) {
      final isSelected =
          element.key.markerId.value == event.selectedMarkerId.value;

      Marker marker = await _getMarker(element, isSelected);
      newMarkers[marker] = element.value;

      continue;
    }

    emit(state.copyWith(
        markers: newMarkers,
        selectedMarker: event.selectedMarkerId,
        isFollowingUser: false));

    await openDraggableSheet(emit);
  }

  bool isFirstTimeSelected(bool isSelected, OnMarkerSelectedEvent event) =>
      isSelected && event.previousSelectedMarkerId == null;

  Future<void> _onDeselectAllMarkerEvent(
      DeselectAllMarkerEvent event, Emitter<MapState> emit) async {
    if (state.selectedMarker == null) return;

    final Map<Marker, FindArtistByLocationResponse> newMarkers = {};

    for (var element in state.markers.entries) {
      final isSelected =
          element.key.markerId.value == state.selectedMarker!.value;

      if (!isSelected) {
        newMarkers[element.key] = element.value;
        continue;
      }

      final icon =
          await MarkerHelper.getArtistMarkerIcon(element.value.artist!, false);

      final marker = Marker(
          markerId: element.key.markerId,
          position: element.key.position,
          consumeTapEvents: true,
          onTap: () {
            dev.log(
                'Marker selected: ${element.key.markerId.value}', 'MapBloc');
            add(OnMarkerSelectedEvent(
              selectedMarkerId: element.key.markerId,
              previousSelectedMarkerId: null,
            ));
            moveCamera(element.key.position);
          },
          icon: icon);

      newMarkers[marker] = element.value;
    }

    emit(state.copyWith(selectedMarker: null, markers: newMarkers));

    if (event.closeDragSheet) {
      await closeDraggableSheet(emit);
    }
  }

  Future<void> openDraggableSheet(Emitter<MapState> emit) async {
    return draggableScrollableController
        .animateTo(0.4,
            duration: const Duration(milliseconds: 500), curve: Curves.easeOut)
        .whenComplete(() => emit(state.copyWith(isDragSheetOpen: true)));
  }

  Future<void> closeDraggableSheet(Emitter<MapState> emit) async {
    return draggableScrollableController
        .animateTo(0.0,
            duration: const Duration(milliseconds: 500), curve: Curves.easeOut)
        .whenComplete(() => emit(state.copyWith(isDragSheetOpen: false)));
  }

  void _onMapDraggableScrollableNotificationEvent(
      OnMapDraggableScrollableNotificationEvent event, Emitter<MapState> emit) {
    if (event.notification.extent < 0.1 &&
        state.isDragSheetOpen &&
        state.selectedMarker != null) {
      emit(state.copyWith(isDragSheetOpen: false));
      add(const DeselectAllMarkerEvent(closeDragSheet: false));
    }
  }
}
