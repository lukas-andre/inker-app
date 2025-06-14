import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inker_studio/domain/services/geolocation/platform_geolocation_service.dart';

part 'gps_event.dart';
part 'gps_state.dart';

class GpsBloc extends Bloc<GpsEvent, GpsState> {
  StreamSubscription? gpsServiceSubscription;
  final PlatformGeolocationService geolocationService;

  GpsBloc({
    required this.geolocationService,
  }) : super(const GpsState(
            isGpsEnabled: false, isGpsPermissionGranted: false)) {
    on<GpsAndPermissionEvent>((event, emit) => emit(state.copyWith(
        isGpsEnabled: event.isGpsEnabled,
        isGpsPermissionGranted: event.isGpsPermissionGranted)));
    _init();
  }

  Future<void> _init() async {
    final isEnabled = _checkGpsStatus();
    final isGranted = _isPermissionGranted();
    final gpsInitStatus = await Future.wait([isEnabled, isGranted]);

    add(GpsAndPermissionEvent(
        isGpsEnabled: gpsInitStatus[0],
        isGpsPermissionGranted: gpsInitStatus[1]));
  }

  Future<bool> _isPermissionGranted() async {
    return await geolocationService.checkPermission();
  }

  Future<bool> _checkGpsStatus() async {
    final isEnable = await geolocationService.isLocationServiceEnabled();

    gpsServiceSubscription =
        geolocationService.getServiceStatusStream().listen((isEnabled) async {
      add(GpsAndPermissionEvent(
          isGpsEnabled: isEnabled,
          isGpsPermissionGranted: await _isPermissionGranted()));
    });

    return isEnable;
  }

  Future<void> askGpsAccess() async {
    final granted = await geolocationService.requestPermission();
    if (granted) {
      add(GpsAndPermissionEvent(
          isGpsEnabled: state.isGpsEnabled, isGpsPermissionGranted: true));
    } else {
      add(GpsAndPermissionEvent(
          isGpsEnabled: state.isGpsEnabled, isGpsPermissionGranted: false));
      geolocationService.openLocationSettings();
    }
  }

  @override
  Future<void> close() async {
    gpsServiceSubscription?.cancel();
    return super.close();
  }
}
