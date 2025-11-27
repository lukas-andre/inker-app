import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/gcp/dto/auto_complete_response.dart';
import 'package:inker_studio/data/gcp/dto/place_details_response.dart';
import 'package:inker_studio/domain/services/places/places_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:uuid/uuid.dart';

/// Web-specific implementation of PlacesService that uses a backend proxy
/// to avoid CORS issues with direct Google Places API calls
class GcpPlacesServiceWeb implements PlacesService {
  static const String _basePath = 'places';
  late final HttpClientService _httpClient;
  final LocalSessionService _sessionService;
  final String lang = 'es-419';
  String sessionToken = const Uuid().v4();

  GcpPlacesServiceWeb({
    required LocalSessionService sessionService,
  }) : _sessionService = sessionService {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }


  @override
  Future<List<Prediction>> getAutoComplete(String input) async {
    try {
      final authToken = await _sessionService.getActiveSessionToken();
      
      final queryParams = {
        'language': lang,
        'sessiontoken': sessionToken,
        'components': 'country:cl',
        'input': input,
      };

      debugPrint('authToken: $authToken');

      final response = await _httpClient.get(
        path: '$_basePath/autocomplete',
        queryParams: queryParams,
        token: authToken ?? '',
        fromJson: (json) => PredictionResult.fromJson(json),
      );

      if (response.status == 'OK') {
        return response.predictions;
      }

      if (response.status == 'ZERO_RESULTS') {
        return [];
      }

      throw Exception('Error getting auto complete results: ${response.status}');
    } catch (e) {
      // Log error in debug mode only
      if (kDebugMode) {
        print('Error in getAutoComplete: $e');
      }
      throw Exception('Error getting auto complete results: $e');
    }
  }


  @override
  Future<PlaceDetailsResult?> getPlaceDetails(String id) async {
    try {
      final authToken = await _sessionService.getActiveSessionToken();
      
      final queryParams = {
        'language': lang,
        'fields': 'formatted_address,name,geometry,address_component',
        'sessiontoken': sessionToken,
        'placeId': id,
      };

      final response = await _httpClient.get(
        path: '$_basePath/details',
        queryParams: queryParams,
        token: authToken ?? '',
        fromJson: (json) => PlaceDetailsResponse.fromJson(json),
      );

      if (response.status == 'OK') {
        return response.result;
      }

      if (response.status == 'ZERO_RESULTS') {
        return null;
      }

      if (response.status == 'REQUEST_DENIED') {
        throw Exception('Invalid API key');
      }

      throw Exception('Error getting place details: ${response.status}');
    } catch (e) {
      // Log error in debug mode only
      if (kDebugMode) {
        print('Error in getPlaceDetails: $e');
      }
      throw Exception('Error getting place details: $e');
    }
  }
}