import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/domain/errors/remote/http_exception.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/response_utils.dart';

import 'dtos/get_user_by_social_media_response.dart';

class UserServiceError extends Error {}

class NotFoundResource extends Error {}

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
    } else {
      throw HttpException();
    }
  }
}
