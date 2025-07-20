import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  StreamSubscription<Position>? _positionStreamSubscription;

  LocationBloc() : super(const LocationState()) {
    on<OnNewUserLocationEvent>((event, emit) {
      print('[LocationBloc] OnNewUserLocationEvent: location=${event.location}');
      emit(state.copyWith(
        lastKnownLocation: event.location,
        myLocationHistory: [event.location, ...state.myLocationHistory],
      ));
    });
    on<OnStartFollowingUserEvent>(
      (event, emit) => emit(state.copyWith(followingUser: true)),
    );
    on<OnStopFollowingUserEvent>(
      (event, emit) => emit(state.copyWith(followingUser: false)),
    );
  }

  Future getCurrentPosition() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    dev.log('position: $position', 'LocationBloc');
  }

  void startFollowingUser() {
    print('[LocationBloc] startFollowingUser: starting');
    add(const OnStartFollowingUserEvent());
    if (_positionStreamSubscription != null) {
      stopFollowingUser();
    }

    _positionStreamSubscription =
        Geolocator.getPositionStream().listen((event) {
      final location = LatLng(event.latitude, event.longitude);
      print('[LocationBloc] startFollowingUser: new location received: $location');
      add(OnNewUserLocationEvent(location));
    });
  }

  void stopFollowingUser() {
    add(const OnStopFollowingUserEvent());
    _positionStreamSubscription?.cancel();
  }

  @override
  Future<void> close() {
    stopFollowingUser();
    return super.close();
  }
}
