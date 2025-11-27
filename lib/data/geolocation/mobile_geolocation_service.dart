import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/services/geolocation/platform_geolocation_service.dart';
import 'package:permission_handler/permission_handler.dart';

class MobileGeolocationService implements PlatformGeolocationService {
  @override
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }
  
  @override
  Future<bool> checkPermission() async {
    final permission = await Geolocator.checkPermission();
    return permission == LocationPermission.always || 
           permission == LocationPermission.whileInUse;
  }
  
  @override
  Future<bool> requestPermission() async {
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }
    
    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    
    return permission == LocationPermission.always || 
           permission == LocationPermission.whileInUse;
  }
  
  @override
  Future<LatLng?> getCurrentPosition() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      );
      return LatLng(position.latitude, position.longitude);
    } catch (e) {
      return null;
    }
  }
  
  @override
  Stream<LatLng> getPositionStream() {
    return Geolocator.getPositionStream().map(
      (position) => LatLng(position.latitude, position.longitude),
    );
  }
  
  @override
  Stream<bool> getServiceStatusStream() {
    return Geolocator.getServiceStatusStream()
        .map((status) => status.index == 1); // ServiceStatus.enabled
  }
  
  @override
  void openLocationSettings() {
    openAppSettings();
  }
}