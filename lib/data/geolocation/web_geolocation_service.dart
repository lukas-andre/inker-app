import 'dart:async';
import 'dart:html' as html;

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/services/geolocation/platform_geolocation_service.dart';

class WebGeolocationService implements PlatformGeolocationService {
  @override
  Future<bool> isLocationServiceEnabled() async {
    // On web, if geolocation is available, we consider it enabled
    return html.window.navigator.geolocation != null;
  }
  
  @override
  Future<bool> checkPermission() async {
    // Web doesn't have a way to check permission status without requesting
    // We'll return true and handle permission during actual request
    return true;
  }
  
  @override
  Future<bool> requestPermission() async {
    // On web, permission is requested when getting location
    // We'll try to get current position to trigger permission request
    try {
      final position = await getCurrentPosition();
      return position != null;
    } catch (e) {
      return false;
    }
  }
  
  @override
  Future<LatLng?> getCurrentPosition() async {
    if (html.window.navigator.geolocation == null) {
      return null;
    }
    
    final completer = Completer<LatLng?>();
    
    html.window.navigator.geolocation!.getCurrentPosition().then(
      (position) {
        completer.complete(LatLng(
          position.coords!.latitude!.toDouble(),
          position.coords!.longitude!.toDouble(),
        ));
      },
      onError: (error) {
        completer.complete(null);
      },
    );
    
    return completer.future;
  }
  
  @override
  Stream<LatLng> getPositionStream() {
    final controller = StreamController<LatLng>.broadcast();
    
    if (html.window.navigator.geolocation != null) {
      final watchId = html.window.navigator.geolocation!.watchPosition().listen(
        (position) {
          controller.add(LatLng(
            position.coords!.latitude!.toDouble(),
            position.coords!.longitude!.toDouble(),
          ));
        },
        onError: (error) {
          // Handle error if needed
        },
      );
      
      controller.onCancel = () {
        watchId.cancel();
      };
    }
    
    return controller.stream;
  }
  
  @override
  Stream<bool> getServiceStatusStream() {
    // Web doesn't have service status changes
    // Return a stream with the current status
    return Stream.value(true).asBroadcastStream();
  }
  
  @override
  void openLocationSettings() {
    // On web, we can't open system settings
    // Could show a dialog explaining how to enable location in browser
    html.window.alert('Please enable location access in your browser settings.');
  }
}