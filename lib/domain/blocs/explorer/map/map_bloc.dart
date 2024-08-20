import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/layout/marker_helper.dart';
import 'package:inker_studio/utils/styles/map_style.dart';

part 'map_event.dart';
part 'map_state.dart';

const double kCameraPositionZoom = 14.4746;

class MapBloc extends Bloc<MapEvent, MapState> {
  final LocationBloc _locationBloc;
  GoogleMapController? _mapController;
  StreamSubscription<LocationState>? _locationStateSubscription;
  DraggableScrollableController draggableScrollableController =
      DraggableScrollableController();
  List<double> snapSizes = const [0.0, 0.35, 0.85];

  MapBloc({required LocationBloc locationBloc})
      : _locationBloc = locationBloc,
        super(const MapState()) {
    on<InitMapEvent>(_onInitMap);
    on<FollowLocationButtonPressedEvent>(_onFollowLocationButtonPressed);
    on<StopFollowingLocationEvent>(_onStopFollowingLocation);
    on<AddMarkersEvent>(_onAddMarkersEvent);
    on<MarkerSelectedEvent>(_onMarkerSelectedEvent);
    on<DeselectAllMarkerEvent>(_onDeselectAllMarkerEvent);
    on<MapDraggableScrollableNotificationEvent>(
        _onMapDraggableScrollableNotificationEvent);
  }

  Artist? get selectedArtist {
    if (state.selectedMarker == null) return null;

    //TODO: add this refactors
    // state.markers[state.selectedMarker!];

    return state.markers.entries
        .firstWhere((element) => element.key.markerId == state.selectedMarker)
        .value
        .artist;
  }

  LatLng get selectedArtistLocation {
    if (state.selectedMarker == null) return const LatLng(0, 0);

    //TODO: add this refactors
    // state.markers[state.selectedMarker!];

    FindArtistByLocationResponse location = state.markers.entries
        .firstWhere((element) => element.key.markerId == state.selectedMarker)
        .value;

    return LatLng(location.lat!, location.lng!);
  }

  bool isFirstTimeSelected(bool isSelected, MarkerSelectedEvent event) =>
      isSelected && event.previousSelectedMarkerId == null;

  void moveCamera(LatLng position) {
    final CameraPosition cameraPosition = CameraPosition(
      target: position,
      zoom: kCameraPositionZoom,
    );
    final cameraUpdate = CameraUpdate.newCameraPosition(cameraPosition);
    _mapController?.animateCamera(cameraUpdate);
  }

  void _onInitMap(InitMapEvent event, Emitter<MapState> emit) {
    _mapController = event.mapController;
    _mapController?.setMapStyle(jsonEncode(kInkerMapTheme));
    emit(state.copyWith(isMapInitialized: true));
  }

  void _onFollowLocationButtonPressed(
      FollowLocationButtonPressedEvent event, Emitter<MapState> emit) {
    emit(state.copyWith(isFollowingUser: !state.isFollowingUser));
    if (state.isFollowingUser) {
      if (_locationBloc.state.lastKnownLocation == null) return;
      moveCamera(_locationBloc.state.lastKnownLocation!);
    }
  }

  void _onStopFollowingLocation(
      StopFollowingLocationEvent event, Emitter<MapState> emit) {
    emit(state.copyWith(isFollowingUser: false));
  }

  void _onAddMarkersEvent(AddMarkersEvent event, Emitter<MapState> emit) {
    emit(state.copyWith(markers: event.markers));
  }

  Future<void> _onMarkerSelectedEvent(
      MarkerSelectedEvent event, Emitter<MapState> emit) async {
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
        consumeTapEvents: false,
        onTap: () {
          dev.log('Marker selected: ${element.key.markerId.value}', 'MapBloc');
          add(MarkerSelectedEvent(
            previousSelectedMarkerId: state.selectedMarker!,
            selectedMarkerId: element.key.markerId,
          ));
          moveCamera(element.key.position);
        },
        icon: icon);

    return marker;
  }

  Future<void> handleFirstTimeSelected(
      MarkerSelectedEvent event,
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
          consumeTapEvents: false,
          onTap: () {
            dev.log(
                'Marker selected: ${element.key.markerId.value}', 'MapBloc');
            add(MarkerSelectedEvent(
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
        .animateTo(snapSizes[1],
            duration: const Duration(milliseconds: 500), curve: Curves.easeOut)
        .whenComplete(() => emit(state.copyWith(isDragSheetOpen: true)));
  }

  Future<void> closeDraggableSheet(Emitter<MapState> emit) async {
    return draggableScrollableController
        .animateTo(snapSizes[0],
            duration: const Duration(milliseconds: 500), curve: Curves.easeOut)
        .whenComplete(() => emit(state.copyWith(isDragSheetOpen: false)));
  }

  void _onMapDraggableScrollableNotificationEvent(
      MapDraggableScrollableNotificationEvent event, Emitter<MapState> emit) {
    if (event.notification.extent < 0.1 &&
        state.isDragSheetOpen &&
        state.selectedMarker != null) {
      emit(state.copyWith(isDragSheetOpen: false));
      add(const DeselectAllMarkerEvent(closeDragSheet: false));
    }
  }

  @override
  Future<void> close() {
    _locationStateSubscription?.cancel();
    _mapController?.dispose();
    return super.close();
  }
}
