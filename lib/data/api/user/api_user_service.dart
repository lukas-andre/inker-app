import 'dart:io';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/data/api/user/dtos/create_artist_user_response.dart';
import 'package:inker_studio/data/api/user/dtos/create_customer_user_response.dart';
import 'package:inker_studio/data/api/user/dtos/create_user_request.dart';
import 'package:inker_studio/data/api/user/dtos/get_user_by_social_media_response.dart';
import 'package:inker_studio/domain/errors/account_verification/hash_not_found_exception.dart';
import 'package:inker_studio/domain/errors/account_verification/max_sms_tries_exception.dart';
import 'package:inker_studio/domain/errors/artist/artist_already_exists_exception.dart';
import 'package:inker_studio/domain/errors/customer/customer_already_exists_exception.dart';
import 'package:inker_studio/domain/errors/remote/bad_request_exception.dart';
import 'package:inker_studio/domain/errors/remote/conflict_exception.dart';
import 'package:inker_studio/domain/errors/remote/http_conflict_exception.dart';
import 'package:inker_studio/domain/errors/remote/not_acceptable_exception.dart';
import 'package:inker_studio/domain/errors/remote/resource_not_found.dart';
import 'package:inker_studio/domain/errors/remote/un_processable_exception.dart';
import 'package:inker_studio/domain/errors/user/activating_user_exception.dart';
import 'package:inker_studio/domain/errors/user/problems_creating_verification_hash_exception.dart';
import 'package:inker_studio/domain/errors/user/role_not_exists_exception.dart';
import 'package:inker_studio/domain/errors/user/user_already_exists_exception.dart';
import 'package:inker_studio/domain/errors/user/user_already_verified_exception.dart';
import 'package:inker_studio/domain/errors/user/user_id_pipe_failed_exception.dart';
import 'package:inker_studio/domain/errors/user/user_not_accepted_exception.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';
import 'package:inker_studio/domain/models/notifications/notification_types.dart';

class ApiUserService extends UserService {
  static const String _basePath = 'users';
  late final HttpClientService _httpClient;

  ApiUserService() {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  Future<GetUserBySocialMediaResponse?> getUserBySocialMediaAndEmail(
    String socialMedia,
    String email,
  ) async {
    try {
      return await _httpClient.get<GetUserBySocialMediaResponse>(
        path: '$_basePath/social-media',
        queryParams: {
          'type': socialMedia,
          'email': email,
        },
        fromJson: GetUserBySocialMediaResponse.fromJson,
      );
    } on CustomHttpException catch (e) {
      if (e.statusCode == HttpStatus.notFound) {
        if (e.message.contains('Resource not found')) {
          throw ResourceNotFound();
        }
        return null;
      }
      rethrow;
    }
  }

  @override
  Future<dynamic> create(CreateUserRequest user) async {
    try {
      if (user.userType == UserTypeEnum.artist) {
        return await _httpClient.post<CreateArtistUserResponse>(
          path: _basePath,
          body: user.toJson(),
          fromJson: CreateArtistUserResponse.fromJson,
        );
      } else {
        return await _httpClient.post<CreateCustomerUserResponse>(
          path: _basePath,
          body: user.toJson(),
          fromJson: CreateCustomerUserResponse.fromJson,
        );
      }
    } on CustomHttpException catch (e) {
      switch (e.statusCode) {
        case HttpStatus.conflict:
          if (e.message.contains('Role not exists')) {
            throw RoleNotExistsException();
          }
          throw HttpConflict();

        case HttpStatus.badRequest:
          if (e.message.contains('User already exists')) {
            throw UserAlreadyExistsException();
          } else if (e.message.contains('Artist already exists')) {
            throw ArtistAlreadyExistsException();
          } else if (e.message.contains('Customer already exists')) {
            throw CustomerAlreadyExistsException();
          }
          throw BadRequest();

        case HttpStatus.unprocessableEntity:
          if (e.message.contains('Problems saving artist')) {
            throw ProblemsSavingArtist();
          } else if (e.message.contains('Problems saving agenda')) {
            throw ProblemsSavingAgendaForUser();
          } else if (e.message.contains('Trouble saving location')) {
            throw TroubleSavingLocation();
          }
          throw UnprocessableEntity();

        default:
          rethrow;
      }
    }
  }

  @override
  Future<bool> sendAccountVerificationCode(
    String userId,
    String phoneNumber,
    NotificationType notificationType,
  ) async {
    try {
      await _httpClient.post<Map<String, dynamic>>(
        path: '$_basePath/$userId/send-account-verification-code',
        queryParams: {
          'phoneNumber': phoneNumber,
          'notificationType': notificationType.name,
        },
        fromJson: (json) => json,
        body: {}, // Empty body for POST request
      );
      return true;
    } on CustomHttpException catch (e) {
      switch (e.statusCode) {
        case HttpStatus.badRequest:
          if (e.message.contains('Max SMS attempts reached')) {
            throw MaxSMSTriesException();
          } else if (e.message.contains('User already verified')) {
            throw UserAlreadyVerified();
          } else if (e.message.contains('User ID pipe failed')) {
            throw UserIdPipeFailed();
          }
          throw BadRequest();

        case HttpStatus.notAcceptable:
          if (e.message.contains('User not accepted')) {
            throw UserNotAccepted();
          }
          throw NotAcceptable();

        case HttpStatus.unprocessableEntity:
          if (e.message.contains('Problem creating verification hash')) {
            throw ProblemCreatingVerificationHash();
          }
          throw UnprocessableEntity();

        default:
          rethrow;
      }
    }
  }

  @override
  Future<bool> verifyAccountVerificationCode(
    String userId,
    String code,
    NotificationType notificationType,
  ) async {
    try {
      await _httpClient.post<Map<String, dynamic>>(
        path: '$_basePath/$userId/validate-account-verification-code/$code',
        queryParams: {
          'notificationType': notificationType.name,
        },
        fromJson: (json) => json,
        body: {}, // Empty body for POST request
      );
      return true;
    } on CustomHttpException catch (e) {
      switch (e.statusCode) {
        case HttpStatus.notFound:
          if (e.message.contains('Hash not found')) {
            throw HashNotFound();
          }
          throw ResourceNotFound();

        case HttpStatus.badRequest:
          if (e.message.contains('User already verified')) {
            throw UserAlreadyVerified();
          } else if (e.message.contains('User ID pipe failed')) {
            throw UserIdPipeFailed();
          }
          throw BadRequest();

        case HttpStatus.notAcceptable:
          if (e.message.contains('User not accepted')) {
            throw UserNotAccepted();
          }
          throw NotAcceptable();

        case HttpStatus.unprocessableEntity:
          if (e.message.contains('Error activating user')) {
            throw ActivatingUserException();
          }
          throw UnprocessableEntity();

        case HttpStatus.conflict:
          if (e.message.contains('Invalid verification code')) {
            return false;
          }
          throw ConflictException();

        default:
          rethrow;
      }
    }
  }

  @override
  Future<User> user() async {
    try {
      return await _httpClient.get<User>(
        path: '$_basePath/me',
        fromJson: User.fromJson,
      );
    } on CustomHttpException catch (e) {
      if (e.statusCode == HttpStatus.notFound) {
        throw ResourceNotFound();
      }
      rethrow;
    }
  }
}
