import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/artist/dtos/update_artist_dto.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

class ApiArtistService implements ArtistService {
  static const String _basePath = 'artist';
  final LocalSessionService _sessionService;
  late final HttpClientService _httpClient;

  ApiArtistService({
    required LocalSessionService sessionService,
  }) : _sessionService = sessionService {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  Future<String> _getToken() async {
    return (await _sessionService.getActiveSessionToken())!;
  }

  @override
  Future<Artist> getArtistProfile() async {
    try {
      final token = await _getToken();
      return await _httpClient.get(
        path: '$_basePath/me',
        token: token,
        fromJson: Artist.fromJson,
      );
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      if (e is CustomHttpException) {
        throw Exception('Failed to load artist profile: ${e.message}');
      }
      rethrow;
    }
  }

  @override
  Future<void> updateArtistProfile(UpdateArtistDto updateArtistDto) async {
    try {
      final token = await _getToken();
      await _httpClient.put(
        path: '$_basePath/me',
        token: token,
        body: updateArtistDto.toJson(),
        fromJson: (json) => null,
      );
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      if (e is CustomHttpException) {
        throw Exception('Failed to update artist profile: ${e.message}');
      }
      rethrow;
    }
  }

  @override
  Future<Artist> updateProfilePicture(int artistId, XFile image) async {
    try {
      final token = await _getToken();
      return await _httpClient.multipartRequest(
        path: '$_basePath/$artistId/profile-picture',
        method: 'POST',
        token: token,
        field: 'file',
        file: File(image.path),
        fromJson: Artist.fromJson,
      );
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      if (e is CustomHttpException) {
        throw Exception('Failed to update profile picture: ${e.message}');
      }
      rethrow;
    }
  }

  @override
  Future<Artist> updateStudioPhoto(int artistId, XFile image) async {
    try {
      final token = await _getToken();
      return await _httpClient.multipartRequest(
        path: '$_basePath/$artistId/studio-photo',
        method: 'POST',
        token: token,
        field: 'file',
        file: File(image.path),
        fromJson: Artist.fromJson,
      );
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      if (e is CustomHttpException) {
        throw Exception('Failed to update studio photo: ${e.message}');
      }
      rethrow;
    }
  }
}