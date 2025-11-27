import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/services/geolocation/platform_geolocation_service.dart';

/// Stub implementation - should never be used
class WebGeolocationService implements PlatformGeolocationService {
  @override
  Future<bool> isLocationServiceEnabled() async {
    throw UnsupportedError('Web geolocation service is not supported on this platform');
  }
  
  @override
  Future<bool> checkPermission() async {
    throw UnsupportedError('Web geolocation service is not supported on this platform');
  }
  
  @override
  Future<bool> requestPermission() async {
    throw UnsupportedError('Web geolocation service is not supported on this platform');
  }
  
  @override
  Future<LatLng?> getCurrentPosition() async {
    throw UnsupportedError('Web geolocation service is not supported on this platform');
  }
  
  @override
  Stream<LatLng> getPositionStream() {
    throw UnsupportedError('Web geolocation service is not supported on this platform');
  }
  
  @override
  Stream<bool> getServiceStatusStream() {
    throw UnsupportedError('Web geolocation service is not supported on this platform');
  }
  
  @override
  void openLocationSettings() {
    throw UnsupportedError('Web geolocation service is not supported on this platform');
  }
}