import 'dart:io';
import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/domain/errors/account_verification/hash_not_found_exception.dart';
import 'package:inker_studio/domain/errors/account_verification/invalid_verification_code_exception.dart';
import 'package:inker_studio/domain/errors/account_verification/max_sms_tries_exception.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/errors/user/can_not_activate_user_exception.dart';
import 'package:inker_studio/domain/errors/user/user_not_found_exception.dart';
import 'package:inker_studio/domain/services/account_verification/account_verification_service.dart';
import 'package:inker_studio/utils/dev.dart';

class SendVerificationCodeType {
  static const String sms = 'SMS';
  static const String email = 'EMAIL';
}

class ApiAccountVerificationService implements AccountVerificationService {
  static const String _basePath = 'users';
  late final HttpClientService _httpClient;

  ApiAccountVerificationService() {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  Future<bool> sendSMS(String userId, String phoneNumber) async {
    try {
      dev.log('Sending SMS verification code to $phoneNumber for user $userId', 'ApiAccountVerificationService');
      
      await _httpClient.post(
        path: '$_basePath/$userId/send-account-verification-code',
        queryParams: {
          'phoneNumber': phoneNumber,
          'notificationType': SendVerificationCodeType.sms
        },
        body: {},  // POST requiere un body aunque esté vacío
        fromJson: (json) => true,
      );

      return true;
    } on CustomHttpException catch (e) {
      dev.logError(e, StackTrace.current);
      throw _handleSendSMSErrors(e.statusCode, phoneNumber);
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  Exception _handleSendSMSErrors(int statusCode, String phoneNumber) {
    switch (statusCode) {
      case HttpStatus.badRequest:
        return MaxSMSTriesException();
      case HttpStatus.internalServerError:
        return InternalServerException();
      default:
        return Exception('Problems sending sms to $phoneNumber');
    }
  }

  @override
  Future<bool> validateVerificationCode(String userId, String code) async {
    try {
      dev.log('Validating verification code for user $userId', 'ApiAccountVerificationService');
      
      await _httpClient.post(
        path: '$_basePath/$userId/validate-account-verification-code/$code',
        queryParams: {
          'notificationType': SendVerificationCodeType.sms,
        },
        body: {},  // POST requiere un body aunque esté vacío
        fromJson: (json) => true,
      );

      return true;
    } on CustomHttpException catch (e) {
      dev.logError(e, StackTrace.current);
      throw _handleValidateVerificationCodeErrors(e.statusCode);
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  Exception _handleValidateVerificationCodeErrors(int statusCode) {
    switch (statusCode) {
      case HttpStatus.notFound:
        return HashNotFound();
      case HttpStatus.notAcceptable:
        return UserNotFound();
      case HttpStatus.unprocessableEntity:
        return CanNotActivateUser();
      case HttpStatus.conflict:
        return InvalidVerificationCode();
      case HttpStatus.internalServerError:
        return InternalServerException();
      default:
        return Exception('Problems validating verification code');
    }
  }
}