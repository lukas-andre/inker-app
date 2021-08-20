import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/domain/errors/account_verification/max_sms_tries_exception.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/services/account_verification/account_verification_service.dart';
import 'package:inker_studio/utils/dev.dart';

class SendVerificationCodeType {
  static String sms = 'SMS';
  static String email = 'EMAIL';
}

class HttpAccountVerificationServiceImpl implements AccountVerificationService {
  static const String className = 'HttpAccountVerificationServiceImpl';

  final HttpClientConfig _httpConfig;

  HttpAccountVerificationServiceImpl()
      : _httpConfig = HttpClientConfig(
            baseUrl: HttpClientConfig.baseLocalUrl, basePath: 'users'),
        super();

  @override
  Future<bool> sendSMS(int userId, String phoneNumber) async {
    final url = _httpConfig.url(
        path: '$userId/send-verification-code',
        queryParams: {
          'phoneNumber': phoneNumber,
          'type': SendVerificationCodeType.sms
        });
    dev.log(url.toString(), 'url');

    final response = await http.post(url);
    dev.inspect(response.body, 'sendSMS response.body');
    dev.log(response.statusCode.toString(), 'sendSMS.statusCode response');

    if (response.statusCode == HttpStatus.ok) {
      return true;
    }

    if (response.statusCode == HttpStatus.badRequest) {
      throw MaxSMSTriesException();
    }

    if (response.statusCode >= HttpStatus.internalServerError) {
      throw InternalServerException();
    }

    throw Exception('Problems sending sms to $phoneNumber');
  }
}
