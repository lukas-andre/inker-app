import 'package:flutter/foundation.dart';
import 'package:inker_studio/data/geolocation/mobile_geolocation_service.dart';
import 'package:inker_studio/data/geolocation/web_geolocation_service.dart'
    if (dart.library.io) 'package:inker_studio/data/geolocation/web_geolocation_service_stub.dart';
import 'package:inker_studio/domain/services/geolocation/platform_geolocation_service.dart';

class GeolocationFactory {
  static PlatformGeolocationService createGeolocationService() {
    if (kIsWeb) {
      return WebGeolocationService();
    } else {
      return MobileGeolocationService();
    }
  }
}