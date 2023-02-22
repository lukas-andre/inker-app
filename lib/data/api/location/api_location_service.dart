import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_request.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/data/api/location/errors/errors.dart';
import 'package:inker_studio/domain/errors/location/find_artist_by_location_exception.dart';
import 'package:inker_studio/domain/errors/remote/http_not_found.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/services/location/location_service.dart';
import 'package:inker_studio/utils/api/content_type.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/response_utils.dart';

class ApiLocationService implements LocationService {
  static const String className = 'ApiUserService';

  final HttpClientConfig _httpConfig;
  ApiLocationService()
      : _httpConfig = HttpClientConfig(basePath: 'locations'),
        super();

  @override
  Future<List<FindArtistByLocationResponse>> getArtistByLocation(
      FindArtistByLocationRequest request) async {
    final url = _httpConfig.surl(path: 'artist');
    try {
      final body = findArtistByLocationRequestToJson(request);
      final response =
          await http.post(url, body: body, headers: acceptApplicationJson);
      dev.inspect(response, 'getArtistByLocation response');
      if (response.statusCode == HttpStatus.ok) {
        try {
          List<FindArtistByLocationResponse> artists;
          artists = (json.decode(response.body) as List)
              .map((e) => FindArtistByLocationResponse.fromJson(e))
              .toList();
          return artists;
        } catch (error, stackTrace) {
          dev.logError(error, stackTrace);
          throw JsonParseException();
        }
      } else if (response.statusCode == HttpStatus.unprocessableEntity) {
        if (response.body.contains(troubleFindingLocations)) {
          throw TroubleFindingLocations();
        } else if (response.body.contains(problemsFilteringArtists)) {
          throw ProblemsFilteringArtists();
        }
        throw UnprocessableEntity();
      } else if (response.statusCode == HttpStatus.notFound) {
        if (ResponseUtils.resourceNotFound(response.body)) {
          throw ResourceNotFound();
        } else if (response.body.contains(noArtistsFound)) {
          throw NoArtistsFound();
        }
        throw HttpNotFound();
      } else {
        throw InternalServerException();
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }
}
