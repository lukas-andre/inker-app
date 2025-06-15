import 'dart:async';
import 'dart:collection';
import 'package:flutter/foundation.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/gcp/dto/auto_complete_response.dart';
import 'package:inker_studio/data/gcp/dto/place_details_response.dart';
import 'package:inker_studio/domain/services/places/places_service.dart';
import 'package:uuid/uuid.dart';

class Place {
  String streetNumber;
  String street;
  String city;
  String zipCode;

  Place({
    required this.streetNumber,
    required this.street,
    required this.city,
    required this.zipCode,
  });

  @override
  String toString() {
    return 'Place(streetNumber: $streetNumber, street: $street, city: $city, zipCode: $zipCode)';
  }
}

class Suggestion {
  final String placeId;
  final String description;

  Suggestion(this.placeId, this.description);

  @override
  String toString() {
    return 'Suggestion(description: $description, placeId: $placeId)';
  }
}

/// Rate limiter for Google Places API to prevent quota exhaustion
class RateLimiter {
  final int maxRequestsPerMinute;
  final Queue<DateTime> _requestTimestamps = Queue();
  final Map<String, dynamic> _cache = {};
  final Duration _cacheExpiry;
  
  RateLimiter({
    this.maxRequestsPerMinute = 10, // Default rate limit of 10 requests per minute
    Duration? cacheExpiry,
  }) : _cacheExpiry = cacheExpiry ?? const Duration(hours: 1);
  
  /// Check if we can make a new request. If not, waits until it's possible.
  Future<void> throttle() async {
    final now = DateTime.now();
    
    // Remove timestamps older than 1 minute
    while (_requestTimestamps.isNotEmpty && 
           now.difference(_requestTimestamps.first).inMinutes >= 1) {
      _requestTimestamps.removeFirst();
    }
    
    // If we've reached the limit, wait until we can make another request
    if (_requestTimestamps.length >= maxRequestsPerMinute) {
      final oldestTimestamp = _requestTimestamps.first;
      final waitTime = const Duration(minutes: 1) - now.difference(oldestTimestamp);
      if (waitTime.inMilliseconds > 0) {
        await Future.delayed(waitTime);
      }
      // Clean outdated timestamps after waiting
      return throttle();
    }
    
    // Add current timestamp to the queue
    _requestTimestamps.add(now);
  }
  
  /// Store response in cache
  void cacheResponse(String key, dynamic response) {
    _cache[key] = {
      'data': response,
      'timestamp': DateTime.now()
    };
  }
  
  /// Get cached response if available and not expired
  dynamic getCachedResponse(String key) {
    final cachedItem = _cache[key];
    if (cachedItem != null) {
      final timestamp = cachedItem['timestamp'] as DateTime;
      if (DateTime.now().difference(timestamp) < _cacheExpiry) {
        return cachedItem['data'];
      } else {
        // Remove expired cache entry
        _cache.remove(key);
      }
    }
    return null;
  }
}

class GcpPlacesService implements PlacesService {
  static const String _basePath = 'places';
  late final HttpClientService _httpClient;
  
  //https://developers.google.com/maps/faq#languagesupport
  final lang = 'es-419';
  late String? apiKey;
  String sessionToken = const Uuid().v4();

  GcpPlacesService() {
    apiKey = kIsWeb
        ? dotenv.env['GOOGLE_PLACES_KEY_ANDROID'] ??
            const String.fromEnvironment('GOOGLE_PLACES_KEY_ANDROID')
        : (defaultTargetPlatform == TargetPlatform.iOS
            ? dotenv.env['GOOGLE_PLACES_KEY_IOS'] ??
                const String.fromEnvironment('GOOGLE_PLACES_KEY_IOS')
            : dotenv.env['GOOGLE_PLACES_KEY_ANDROID'] ??
                const String.fromEnvironment('GOOGLE_PLACES_KEY_ANDROID'));
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  // https://developers.google.com/maps/documentation/places/web-service/autocomplete#maps_http_places_autocomplete_amoeba-sh
  Future<List<Prediction>> getAutoComplete(String input) async {
    final queryParams = {
      'language': lang,
      'key': apiKey!,
      'sessiontoken': sessionToken,
      'components': 'country:cl',
      'input': input,
    };

    final response = await _httpClient.get(
      path: '$_basePath/autocomplete',
      queryParams: queryParams,
      fromJson: (json) => PredictionResult.fromJson(json),
    );

    if (response.status == 'OK') {
      return response.predictions;
    }

    if (response.status == 'ZERO_RESULTS') {
      return [];
    }

    throw Exception('Error getting auto complete results');
  }

  refreshSessionToken() {
    sessionToken = const Uuid().v4();
  }

  @override
  Future<PlaceDetailsResult?> getPlaceDetails(String id) async {
    final queryParams = {
      'key': apiKey!,
      'language': lang,
      'fields': 'formatted_address,name,geometry,address_component',
      'sessiontoken': sessionToken,
      'placeId': id,
    };

    final response = await _httpClient.get(
      path: '$_basePath/details',
      queryParams: queryParams,
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

    throw Exception('Error getting place details');
  }
}
