import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/domain/errors/account_verification/hash_not_found_exception.dart';
import 'package:inker_studio/domain/errors/account_verification/invalid_verification_code_exception.dart';
import 'package:inker_studio/domain/errors/account_verification/max_sms_tries_exception.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/errors/user/can_not_activate_user_exception.dart';
import 'package:inker_studio/domain/errors/user/user_not_found_exception.dart';
import 'package:inker_studio/domain/services/account_verification/account_verification_service.dart';
import 'package:inker_studio/utils/dev.dart';

class SendVerificationCodeType {
  static String sms = 'SMS';
  static String email = 'EMAIL';
}

class ApiAccountVerificationService implements AccountVerificationService {
  static const String className = 'ApiAccountVerificationService';

  final HttpClientConfig _httpConfig;

  ApiAccountVerificationService()
      : _httpConfig = HttpClientConfig(
            baseUrl: HttpClientConfig.baseLocalUrl, basePath: 'users'),
        super();

  @override
  Future<bool> sendSMS(int userId, String phoneNumber) async {
    final url = _httpConfig.url(
        path: '$userId/send-account-verification-code',
        queryParams: {
          'phoneNumber': phoneNumber,
          'notificationType': SendVerificationCodeType.sms
        });
    dev.log(url.toString(), 'url');

    final response = await http.post(url);
    dev.inspect(response.body, 'sendSMS response.body');
    dev.log(response.statusCode.toString(), 'sendSMS.statusCode response');

    if (response.statusCode != HttpStatus.ok) {
      throw _handleSendSMSErrors(response, phoneNumber);
    }

    return true;
  }

  Exception _handleSendSMSErrors(http.Response response, String phoneNumber) {
    switch (response.statusCode) {
      case HttpStatus.badRequest:
        return MaxSMSTriesException();
      case HttpStatus.internalServerError:
        return InternalServerException();
      default:
        return Exception('Problems sending sms to $phoneNumber');
    }
  }

  @override
  Future<bool> validateVerificationCode(int userId, String code) async {
    final url = _httpConfig.url(
        path: '$userId/validate-account-verification-code/$code',
        queryParams: {
          'notificationType': SendVerificationCodeType.sms,
        });
    dev.log(url.toString(), 'url');

    final response = await http.post(url);

    dev.inspect(response.body, 'sendSMS response.body');
    dev.log(response.statusCode.toString(), 'sendSMS.statusCode response');

    if (response.statusCode != HttpStatus.ok) {
      throw _handleValidateVerificationCodeErrors(response);
    }

    return true;
  }

  Exception _handleValidateVerificationCodeErrors(http.Response response) {
    switch (response.statusCode) {
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
