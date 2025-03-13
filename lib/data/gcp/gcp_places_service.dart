import 'dart:async';
import 'dart:io';
import 'dart:collection';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/data/gcp/dto/auto_complete_response.dart';
import 'package:inker_studio/data/gcp/dto/place_details_response.dart';
import 'package:inker_studio/domain/services/places/places_service.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

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
      final waitTime = Duration(minutes: 1) - now.difference(oldestTimestamp);
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
  final HttpClientConfig _httpConfig;
  final RateLimiter _rateLimiter = RateLimiter();

  //https://developers.google.com/maps/faq#languagesupport
  final lang = 'es-419';
  late String? apiKey;
  String sessionToken = const Uuid().v4();

  GcpPlacesService()
      : _httpConfig = HttpClientConfig(basePath: ''),
        apiKey = Platform.isIOS
            ? dotenv.env['GOOGLE_PLACES_KEY_IOS'] ??
                const String.fromEnvironment('GOOGLE_PLACES_KEY_IOS')
            : dotenv.env['GOOGLE_PLACES_KEY_ANDROID'] ??
                const String.fromEnvironment('GOOGLE_PLACES_KEY_ANDROID'),
        super();

  @override
  // https://developers.google.com/maps/documentation/places/web-service/autocomplete#maps_http_places_autocomplete_amoeba-sh
  Future<List<Prediction>> getAutoComplete(String input) async {
    // Check cache first
    final cacheKey = 'autocomplete_$input';
    final cachedResult = _rateLimiter.getCachedResponse(cacheKey);
    if (cachedResult != null) {
      return cachedResult as List<Prediction>;
    }
    
    // Apply rate limiting
    await _rateLimiter.throttle();
    
    final uri =
        Uri.https('maps.googleapis.com', '/maps/api/place/autocomplete/json', {
      'language': lang,
      'key': apiKey,
      'sessiontoken': sessionToken,
      'components': 'country:cl',
      'input': input,
    });
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final prediction = PredictionResult.fromRawJson(response.body);
      if (prediction.status == 'OK') {
        // Cache the result
        _rateLimiter.cacheResponse(cacheKey, prediction.predictions);
        return prediction.predictions;
      }

      if (prediction.status == 'ZERO_RESULTS') {
        return [];
      }

      throw Exception('Error getting auto complete results');
    }
    throw Exception('Error getting auto complete results');
  }

  refreshSessionToken() {
    sessionToken = const Uuid().v4();
  }

  @override
  Future<PlaceDetailsResult?> getPlaceDetails(String id) async {
    // Check cache first
    final cacheKey = 'placedetails_$id';
    final cachedResult = _rateLimiter.getCachedResponse(cacheKey);
    if (cachedResult != null) {
      return cachedResult as PlaceDetailsResult?;
    }
    
    // Apply rate limiting
    await _rateLimiter.throttle();

    final uri =
        Uri.https('maps.googleapis.com', '/maps/api/place/details/json', {
      'key': apiKey,
      'language': lang,
      'fields': 'formatted_address,name,geometry,address_component',
      'sessiontoken': sessionToken,
      'place_id': id,
    });

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final details = PlaceDetailsResponse.fromRawJson(response.body);
      if (details.status == 'OK') {
        // Cache the result
        _rateLimiter.cacheResponse(cacheKey, details.result);
        return details.result;
      }

      if (details.status == 'ZERO_RESULTS') {
        return null;
      }

      if (details.status == 'REQUEST_DENIED') {
        throw Exception('Invalid API key');
      }

      throw Exception('Error getting auto complete results');
    }
    throw Exception('Error getting auto complete results');
  }
}
