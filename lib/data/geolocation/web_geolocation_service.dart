import 'dart:async';
import 'dart:html' as html;

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/domain/services/geolocation/platform_geolocation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WebGeolocationService implements PlatformGeolocationService {
  // Santiago Centro coordinates
  static const LatLng _defaultLocation = LatLng(-33.4372, -70.6506);
  static const String _lastLocationKey = 'last_known_location';
  
  @override
  Future<bool> isLocationServiceEnabled() async {
    // On web, if geolocation is available, we consider it enabled
    final enabled = html.window.navigator.geolocation != null;
    print('[WebGeolocationService] isLocationServiceEnabled: $enabled');
    return enabled;
  }
  
  @override
  Future<bool> checkPermission() async {
    // Web doesn't have a way to check permission status without requesting
    // We'll return true and handle permission during actual request
    print('[WebGeolocationService] checkPermission: returning true (web default)');
    return true;
  }
  
  @override
  Future<bool> requestPermission() async {
    print('[WebGeolocationService] requestPermission: user triggered location request');
    
    if (html.window.navigator.geolocation == null) {
      print('[WebGeolocationService] requestPermission: geolocation not available');
      return false;
    }
    
    final completer = Completer<bool>();
    
    // Longer timeout for user-triggered request
    final timer = Timer(const Duration(seconds: 10), () {
      if (!completer.isCompleted) {
        print('[WebGeolocationService] requestPermission: timeout reached');
        completer.complete(false);
      }
    });
    
    // Try to get current position with user gesture
    html.window.navigator.geolocation.getCurrentPosition(
      enableHighAccuracy: false,
      timeout: const Duration(milliseconds: 10000),
      maximumAge: const Duration(milliseconds: 0) // Force fresh location
    ).then(
      (position) async {
        timer.cancel();
        if (!completer.isCompleted) {
          final lat = position.coords!.latitude!.toDouble();
          final lng = position.coords!.longitude!.toDouble();
          final location = LatLng(lat, lng);
          print('[WebGeolocationService] requestPermission: got location $lat, $lng');
          
          // Save the location
          await _saveLocation(location);
          
          // Trigger location update
          // Note: You might want to emit this through an event bus or similar
          
          completer.complete(true);
        }
      },
      onError: (error) {
        timer.cancel();
        if (!completer.isCompleted) {
          print('[WebGeolocationService] requestPermission: error=$error');
          completer.complete(false);
        }
      },
    );
    
    return completer.future;
  }
  
  Future<LatLng> _getLastKnownLocation() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final lat = prefs.getDouble('${_lastLocationKey}_lat');
      final lng = prefs.getDouble('${_lastLocationKey}_lng');
      if (lat != null && lng != null) {
        print('[WebGeolocationService] Retrieved saved location: $lat, $lng');
        return LatLng(lat, lng);
      }
    } catch (e) {
      print('[WebGeolocationService] Error retrieving saved location: $e');
    }
    return _defaultLocation;
  }
  
  Future<void> _saveLocation(LatLng location) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble('${_lastLocationKey}_lat', location.latitude);
      await prefs.setDouble('${_lastLocationKey}_lng', location.longitude);
      print('[WebGeolocationService] Saved location: ${location.latitude}, ${location.longitude}');
    } catch (e) {
      print('[WebGeolocationService] Error saving location: $e');
    }
  }

  @override
  Future<LatLng?> getCurrentPosition() async {
    print('[WebGeolocationService] getCurrentPosition: starting');
    
    // Always return saved location or default immediately
    // Don't try to get real location automatically
    final savedLocation = await _getLastKnownLocation();
    print('[WebGeolocationService] getCurrentPosition: returning saved/default location: $savedLocation');
    return savedLocation;
  }
  
  @override
  Stream<LatLng> getPositionStream() {
    final controller = StreamController<LatLng>.broadcast();
    
    // Emit saved/default location immediately
    print('[WebGeolocationService] getPositionStream: emitting saved/default location');
    _getLastKnownLocation().then((location) {
      controller.add(location);
    });
    
    // Don't try to watch position automatically - it's too slow and problematic
    // User can manually enable location through the banner if they want
    
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