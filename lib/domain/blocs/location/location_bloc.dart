import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inker_studio/domain/services/geolocation/platform_geolocation_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  StreamSubscription<LatLng>? _positionStreamSubscription;
  final PlatformGeolocationService geolocationService;

  LocationBloc({required this.geolocationService}) : super(const LocationState()) {
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
    final position = await geolocationService.getCurrentPosition();
    dev.log('position: $position', 'LocationBloc');
    if (position != null) {
      add(OnNewUserLocationEvent(position));
    }
  }

  void startFollowingUser() {
    print('[LocationBloc] startFollowingUser: starting');
    add(const OnStartFollowingUserEvent());
    if (_positionStreamSubscription != null) {
      stopFollowingUser();
    }

    // Get initial position first
    geolocationService.getCurrentPosition().then((position) {
      if (position != null) {
        print('[LocationBloc] startFollowingUser: initial location: $position');
        add(OnNewUserLocationEvent(position));
      }
    });
    
    // Then subscribe to position stream
    _positionStreamSubscription =
        geolocationService.getPositionStream().listen((location) {
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
