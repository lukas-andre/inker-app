import 'dart:developer' as developer;

import 'package:inker_studio/data/remote/auth/dtos/login_request.dart';
import 'package:inker_studio/data/remote/auth/dtos/login_response.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';

class LoginUsesCase {
  static const className = 'LoginUsesCase';

  final AuthService authService;
  final LocalStorage localStorage;

  LoginUsesCase(this.authService, this.localStorage);

  Future<bool> execute(
      String identifier, String password, String loginType) async {
    try {
      LoginResponse loginResponse = await this
          .authService
          .logIn(LoginRequest(identifier, password, loginType));
      developer.log('login response: $loginResponse', name: className);
      // TODO: Manejar respuesta

      return true;
    } catch (e, stackTrace) {
      developer.log('$e', error: e, stackTrace: stackTrace);
      return false;
    }
  }
}
