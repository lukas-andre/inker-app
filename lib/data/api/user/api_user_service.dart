import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/data/api/user/dtos/create_user_request.dart';
import 'package:inker_studio/data/api/user/dtos/create_user_response.dart';
import 'package:inker_studio/data/api/user/dtos/get_user_by_social_media_response.dart';
import 'package:inker_studio/domain/errors/artist/artist_already_exists_exception.dart';
import 'package:inker_studio/domain/errors/remote/http_conflict_exception.dart';
import 'package:inker_studio/domain/errors/remote/http_exception.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/errors/remote/un_processable_exception.dart';
import 'package:inker_studio/domain/errors/remote/unhandled_exception.dart';
import 'package:inker_studio/domain/errors/user/role_not_exists_exception.dart';
import 'package:inker_studio/domain/errors/user/user_already_exists_exception.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';
import 'package:inker_studio/utils/api/content_type.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/response_utils.dart';

class ApiUserService extends UserService {
  static const String className = 'ApiUserService';

  final HttpClientConfig _httpConfig;

  ApiUserService()
      : _httpConfig = HttpClientConfig(basePath: 'users'),
        super();

  @override
  Future<User> user() {
    // TODO: implement user
    throw UnimplementedError();
  }

  @override
  Future<GetUserBySocialMediaResponse?> getUserBySocialMediaAndEmail(
      String socialMedia, String email) async {
    final url = _httpConfig.url(
        path: 'social-media',
        queryParams: {'type': socialMedia, 'email': email});
    dev.inspect(url, 'url');

    final response = await http.get(url);

    dev.inspect(response, 'getUserBySocialMediaAndEmail response');
    dev.log('response ${response.statusCode}', className);

    if (response.statusCode == HttpStatus.notFound) {
      dev.log('response status ${response.statusCode}', 'if');
      if (ResponseUtils.resourceNotFound(response.body)) {
        dev.log('response body ${response.body}', 'responseUtils');
        throw ResourceNotFound();
      }

      return null;
    } else if (response.statusCode >= HttpStatus.internalServerError) {
      throw InternalServerException();
    } else if (response.statusCode == HttpStatus.ok) {
      try {
        return getUserBySocialMediaResponseFromJson(response.body);
      } catch (e, stackTrace) {
        dev.logError(e, stackTrace);
        throw JsonParseException();
      }
    }
    throw HttpException();
  }

  @override
  Future<CreateUserResponse> create(CreateUserRequest user) async {
    final url = _httpConfig.url(basePath: 'users');
    final body = createUserRequestToJson(user);
    try {
      final response =
          await http.post(url, body: body, headers: acceptApplicationJson);
      dev.inspect(response, 'createUser response');
      dev.log('response ${response.statusCode}', className);

      if (response.statusCode == HttpStatus.conflict) {
        if (response.body.contains('Role not exists')) {
          throw RoleNotExistsException();
        } else {
          throw HttpConflict();
        }
      } else if (response.statusCode == HttpStatus.badRequest) {
        if (response.body.contains('User already exists')) {
          throw UserAlreadyExistsException();
        } else if (response.body.contains('Artist already exists')) {
          throw ArtistAlreadyExistsException();
        } else {
          throw BadRequest();
        }
      } else if (response.statusCode == HttpStatus.unprocessableEntity) {
        if (response.body.contains('Problems saving artist')) {
          throw ProblemsSavingArtist();
        } else if (response.body.contains('Problems saving agenda for user')) {
          throw ProblemsSavingAgendaForUser();
        } else if (response.body.contains('Trouble saving location')) {
          throw TroubleSavingLocation();
        } else {
          throw UnprocessableEntity();
        }
      } else if (response.statusCode == HttpStatus.created) {
        try {
          return createUserResponseFromJson(response.body);
        } catch (e, stackTrace) {
          dev.logError(e, stackTrace);
          throw JsonParseException();
        }
      } else if (response.statusCode >= HttpStatus.internalServerError) {
        throw InternalServerException();
      }
      throw UnHandledException();
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }
}
