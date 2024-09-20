import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

class ApiArtistService implements ArtistService {
  final HttpClientConfig _httpConfig;
  final LocalSessionService _sessionService;

  ApiArtistService({
    required LocalSessionService sessionService,
  })  : _sessionService = sessionService,
        _httpConfig = HttpClientConfig(basePath: 'artist');

  @override
  Future<Artist> getArtistProfile() async {
    final url = _httpConfig.surl(
      path: 'me',
    );

    try {
      final response = await http.get(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${await _getToken()}',
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        return artistFromJson(response.body);
      } else {
        throw Exception('Failed to load artist profile: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<void> updateArtistProfile(Artist artist) async {
    final url = _httpConfig.surl(path: 'me');

    try {
      final response = await http.put(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${await _getToken()}',
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        body: artistToJson(artist),
      );

      if (response.statusCode != HttpStatus.ok) {
        throw Exception('Failed to update artist profile: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  Future<String> _getToken() async {
    return (await _sessionService.getActiveSessionToken())!;
  }
}
