import 'dart:io';

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

class GcpPlacesService implements PlacesService {
  final HttpClientConfig _httpConfig;

  //https://developers.google.com/maps/faq#languagesupport
  final lang = 'es-419';
  late String? apiKey;
  String sessionToken = const Uuid().v4();

  GcpPlacesService()
      : _httpConfig = HttpClientConfig(basePath: ''),
        apiKey = Platform.isIOS
            ? dotenv.env['GOOGLE_PLACES_KEY_IOS']
            : dotenv.env['GOOGLE_PLACES_KEY_ANDROID'],
        super();

  @override
  // https://developers.google.com/maps/documentation/places/web-service/autocomplete#maps_http_places_autocomplete_amoeba-sh
  Future<List<Prediction>> getAutoComplete(String input) async {
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
