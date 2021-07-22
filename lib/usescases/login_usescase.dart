import 'package:inker_studio/data/remote/auth/dtos/login_request.dart';
import 'package:inker_studio/data/remote/auth/dtos/login_response.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';

class LoginUsesCase {
  final AuthService authService;
  final LocalStorage localStorage;

  LoginUsesCase(this.authService, this.localStorage);

  Future<bool> execute(
      String identifier, String password, String loginType) async {
    try {
      LoginResponse loginResponse = await this
          .authService
          .login(LoginRequest(identifier, password, loginType));
      // this.localStorage.
      return true;
    } catch (e) {
      return false;
    }
  }
}
