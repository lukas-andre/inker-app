import 'dart:io';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/location/dtos/artist_location_dto.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_request.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/data/api/location/errors/errors.dart';
import 'package:inker_studio/domain/errors/location/find_artist_by_location_exception.dart';
import 'package:inker_studio/domain/errors/remote/http_not_found.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/services/location/location_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/response_utils.dart';

class ApiLocationService implements LocationService {
  static const String className = 'ApiLocationService';
  late final HttpClientService _httpClient;

  ApiLocationService() {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  Future<List<FindArtistByLocationResponse>> getArtistByLocation(
      String token, FindArtistByLocationRequest request) async {
    try {
      return await _httpClient.postList(
        path: 'locations/artist',
        token: token,
        body: request.toJson(),
        fromJson: FindArtistByLocationResponse.fromJson,
      );
    } on CustomHttpException catch (e) {
      dev.logError(e, StackTrace.current);

      if (e.statusCode == HttpStatus.unprocessableEntity) {
        if (e.message.contains(troubleFindingLocations)) {
          throw TroubleFindingLocations();
        } else if (e.message.contains(problemsFilteringArtists)) {
          throw ProblemsFilteringArtists();
        }
        throw UnprocessableEntity();
      }

      if (e.statusCode == HttpStatus.notFound) {
        if (ResponseUtils.resourceNotFound(e.message)) {
          throw ResourceNotFound();
        } else if (e.message.contains(noArtistsFound)) {
          throw NoArtistsFound();
        }
        throw HttpNotFound();
      }

      if (e.statusCode >= HttpStatus.internalServerError) {
        throw InternalServerException();
      }

      rethrow;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      throw JsonParseException();
    }
  }
  
  @override
  Future<List<ArtistLocationDto>> getArtistLocations(String token, String artistId) async {
    try {
      return await _httpClient.getList(
        path: 'locations/artist/$artistId/locations',
        token: token,
        fromJson: ArtistLocationDto.fromJson,
      );
    } on CustomHttpException catch (e) {
      dev.logError(e, StackTrace.current);
      _handleHttpException(e);
      rethrow;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      throw JsonParseException();
    }
  }
  
  @override
  Future<ArtistLocationDto> createArtistLocation(
      String token, String artistId, CreateArtistLocationRequest request) async {
    try {
      return await _httpClient.post(
        path: 'locations/artist/$artistId/locations',
        token: token,
        body: request.toJson(),
        fromJson: ArtistLocationDto.fromJson,
      );
    } on CustomHttpException catch (e) {
      dev.logError(e, StackTrace.current);
      _handleHttpException(e);
      rethrow;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      throw JsonParseException();
    }
  }
  
  @override
  Future<ArtistLocationDto> updateArtistLocation(
      String token, String artistId, String locationId, UpdateArtistLocationRequest request) async {
    try {
      return await _httpClient.put(
        path: 'locations/artist/$artistId/locations/$locationId',
        token: token,
        body: request.toJson(),
        fromJson: ArtistLocationDto.fromJson,
      );
    } on CustomHttpException catch (e) {
      dev.logError(e, StackTrace.current);
      _handleHttpException(e);
      rethrow;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      throw JsonParseException();
    }
  }
  
  @override
  Future<bool> deleteArtistLocation(String token, String artistId, String locationId) async {
    try {
      // For DELETE endpoints that return a boolean result
      await _httpClient.delete(
        path: 'locations/artist/$artistId/locations/$locationId',
        token: token,
        body: {},
      );
      return true;
    } on CustomHttpException catch (e) {
      dev.logError(e, StackTrace.current);
      _handleHttpException(e);
      rethrow;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      throw JsonParseException();
    }
  }
  
  void _handleHttpException(CustomHttpException e) {
    if (e.statusCode == HttpStatus.badRequest) {
      throw BadRequest(message: e.message);
    }
    
    if (e.statusCode == HttpStatus.unauthorized) {
      throw Unauthorized(message: e.message);
    }
    
    if (e.statusCode == HttpStatus.forbidden) {
      throw Forbidden(message: e.message);
    }
    
    if (e.statusCode == HttpStatus.notFound) {
      if (ResponseUtils.resourceNotFound(e.message)) {
        throw ResourceNotFound();
      }
      throw HttpNotFound();
    }
    
    if (e.statusCode == HttpStatus.unprocessableEntity) {
      throw UnprocessableEntity();
    }
    
    if (e.statusCode >= HttpStatus.internalServerError) {
      throw InternalServerException();
    }
  }
}
