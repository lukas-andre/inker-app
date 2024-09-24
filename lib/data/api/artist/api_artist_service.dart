import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/data/api/artist/dtos/update_artist_dto.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:http_parser/http_parser.dart';

class ApiArtistService implements ArtistService {
  final HttpClientConfig _httpConfig;
  final LocalSessionService _sessionService;

  ApiArtistService({
    required LocalSessionService sessionService,
  })  : _sessionService = sessionService,
        _httpConfig = HttpClientConfig(basePath: 'artist');

  @override
  Future<Artist> getArtistProfile() async {
    final url = _httpConfig.surl(path: 'me');

    try {
      final response = await http.get(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${await _getToken()}',
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        return Artist.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load artist profile: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<void> updateArtistProfile(UpdateArtistDto updateArtistDto) async {
    final url = _httpConfig.surl(path: 'me');

    try {
      final response = await http.put(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${await _getToken()}',
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        body: json.encode(updateArtistDto.toJson()),
      );

      if (response.statusCode != HttpStatus.ok) {
        throw Exception('Failed to update artist profile: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<Artist> updateProfilePicture(int artistId, XFile image) async {
    final url = _httpConfig.surl(path: '$artistId/profile-picture');

    var request = http.MultipartRequest('POST', url);

    var stream = http.ByteStream(image.openRead());
    var length = await image.length();
    var multipartFile = http.MultipartFile(
      'file',
      stream,
      length,
      filename: image.name,
      contentType: MediaType('image', 'jpeg'),
    );
    request.files.add(multipartFile);

    request.headers.addAll({
      HttpHeaders.authorizationHeader: 'Bearer ${await _getToken()}',
    });

    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return Artist.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to update profile picture: ${response.body}');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<Artist> updateStudioPhoto(int artistId, XFile image) async {
    final url = _httpConfig.surl(path: '$artistId/studio-photo');

    var request = http.MultipartRequest('POST', url);

    var stream = http.ByteStream(image.openRead());
    var length = await image.length();
    var multipartFile = http.MultipartFile(
      'file',
      stream,
      length,
      filename: image.name,
      contentType: MediaType('image', 'jpeg'),
    );
    request.files.add(multipartFile);

    request.headers.addAll({
      HttpHeaders.authorizationHeader: 'Bearer ${await _getToken()}',
    });

    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return Artist.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to update studio photo: ${response.body}');
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
