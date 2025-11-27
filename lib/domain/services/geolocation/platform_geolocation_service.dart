import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class PlatformGeolocationService {
  Future<bool> isLocationServiceEnabled();
  Future<bool> checkPermission();
  Future<bool> requestPermission();
  Future<LatLng?> getCurrentPosition();
  Stream<LatLng> getPositionStream();
  Stream<bool> getServiceStatusStream();
  void openLocationSettings();
}