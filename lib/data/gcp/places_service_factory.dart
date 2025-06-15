import 'package:flutter/foundation.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/gcp/gcp_places_service.dart';
import 'package:inker_studio/data/gcp/gcp_places_service_web.dart';
import 'package:inker_studio/domain/services/places/places_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

/// Factory class to create the appropriate PlacesService implementation
/// based on the current platform
class PlacesServiceFactory {
  static PlacesService create({
    HttpClientService? httpClient,
    LocalSessionService? sessionService,
  }) {
    if (kIsWeb) {
      // For web, use the implementation that calls our backend proxy
      return GcpPlacesServiceWeb(
        sessionService: sessionService!,
      );
    } else {
      // For mobile (iOS/Android), use the direct Google Places API implementation
      return GcpPlacesService();
    }
  }
}