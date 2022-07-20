import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/data/api/user/dtos/create_user_request.dart';
import 'package:inker_studio/data/api/user/dtos/create_user_response.dart';
import 'package:inker_studio/data/api/user/dtos/get_user_by_social_media_response.dart';
import 'package:inker_studio/data/api/user/errors/errors.dart';
import 'package:inker_studio/domain/errors/account_verification/hash_not_found_exception.dart';
import 'package:inker_studio/domain/errors/account_verification/invalid_verification_code_exception.dart';
import 'package:inker_studio/domain/errors/account_verification/max_sms_tries_exception.dart';
import 'package:inker_studio/domain/errors/artist/artist_already_exists_exception.dart';
import 'package:inker_studio/domain/errors/remote/conflict_exception.dart';
import 'package:inker_studio/domain/errors/remote/http_conflict_exception.dart';
import 'package:inker_studio/domain/errors/remote/http_exception.dart';
import 'package:inker_studio/domain/errors/remote/http_not_found.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/errors/remote/unhandled_exception.dart';
import 'package:inker_studio/domain/errors/user/activating_user_exception.dart';
import 'package:inker_studio/domain/errors/user/problems_creating_verification_hash_exception.dart';
import 'package:inker_studio/domain/errors/user/role_not_exists_exception.dart';
import 'package:inker_studio/domain/errors/user/user_already_exists_exception.dart';
import 'package:inker_studio/domain/errors/user/user_already_verified_exception.dart';
import 'package:inker_studio/domain/errors/user/user_id_pipe_failed_exception.dart';
import 'package:inker_studio/domain/errors/user/user_not_accepted_exception.dart';
import 'package:inker_studio/domain/models/notifications/notification_types.dart';
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
    final url = _httpConfig.surl(basePath: 'users');
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
        if (response.body.contains(userAlreadyExists)) {
          throw UserAlreadyExistsException();
        } else if (response.body.contains('Artist already exists')) {
          throw ArtistAlreadyExistsException();
        } else {
          throw BadRequest();
        }
      } else if (response.statusCode == HttpStatus.unprocessableEntity) {
        if (response.body.contains(problemsSavingArtist)) {
          throw ProblemsSavingArtist();
        } else if (response.body.contains(problemsSavingAgendaForUser)) {
          throw ProblemsSavingAgendaForUser();
        } else if (response.body.contains(troubleSavingLocation)) {
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

  @override
  Future<bool> sendAccountVerificationCode(String userId, String phoneNumber,
      NotificationType notificationType) async {
    final url = _httpConfig.surl(
        basePath: 'users',
        path: '/$userId/send-account-verification-code',
        queryParams: {
          'phoneNumber': phoneNumber,
          'notificationType': notificationType.name
        });
    try {
      final response = await http.post(url);
      dev.inspect(response, 'sendAccountVerificationCode response');
      if (response.statusCode == HttpStatus.ok) {
        return true;
      } else if (response.statusCode == HttpStatus.notFound) {
        if (ResponseUtils.resourceNotFound(response.body)) {
          throw ResourceNotFound();
        }
        throw HttpNotFound();
      } else if (response.statusCode == HttpStatus.badRequest) {
        if (response.body.contains(maxSmsAttemptsReached)) {
          throw MaxSMSTriesException();
        }
        if (response.body.contains(userAlreadyVerified)) {
          throw UserAlreadyVerified();
        }
        if (response.body.contains(userIdPipeFailed)) {
          throw UserIdPipeFailed();
        }
        throw BadRequest();
      } else if (response.statusCode == HttpStatus.notAcceptable) {
        if (response.body.contains(userNotAccepted)) {
          throw UserNotAccepted();
        }
        throw NotAcceptable();
      } else if (response.statusCode == HttpStatus.unprocessableEntity) {
        if (response.body.contains(problemCreatingVerificationHash)) {
          throw ProblemCreatingVerificationHash();
        }
      } else if (response.statusCode >= HttpStatus.internalServerError) {
        throw InternalServerException();
      }
      return false;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<bool> verifyAccountVerificationCode(
      String userId, String code, NotificationType notificationType) async {
    final url = _httpConfig.surl(
        basePath: 'users',
        path: '/$userId/validate-account-verification-code/$code',
        queryParams: {'notificationType': notificationType.name});
    try {
      final response = await http.post(url);
      dev.inspect(response, 'sendAccountVerificationCode response');
      if (response.statusCode == HttpStatus.ok) {
        return true;
      } else if (response.statusCode == HttpStatus.notFound) {
        if (ResponseUtils.resourceNotFound(response.body)) {
          throw ResourceNotFound();
        }
        if (response.body.contains(hashNotFoundForUserId)) {
          throw HashNotFound();
        }
        throw HttpNotFound();
      } else if (response.statusCode == HttpStatus.badRequest) {
        if (response.body.contains(userAlreadyVerified)) {
          throw UserAlreadyVerified();
        }
        if (response.body.contains(userIdPipeFailed)) {
          throw UserIdPipeFailed();
        }
        throw BadRequest();
      } else if (response.statusCode == HttpStatus.notAcceptable) {
        if (response.body.contains(userNotAccepted)) {
          throw UserNotAccepted();
        }
        throw NotAcceptable();
      } else if (response.statusCode == HttpStatus.unprocessableEntity) {
        if (response.body.contains(errorActivatingUser)) {
          throw ActivatingUserException();
        }
        throw UnprocessableEntity();
      } else if (response.statusCode == HttpStatus.conflict) {
        if (response.body.contains(invalidVerificationCode)) {
          throw InvalidVerificationCode();
        }
        throw ConflictException();
      } else if (response.statusCode >= HttpStatus.internalServerError) {
        throw InternalServerException();
      }
      return false;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }
}
