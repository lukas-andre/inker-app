import 'package:inker_studio/data/remote/auth/dtos/login_request.dart';
import 'package:inker_studio/data/remote/auth/dtos/login_response.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';
import 'package:inker_studio/utils/dev.dart' show dev;

class LoginUsesCase {
  static const className = 'LoginUsesCase';

  final AuthService _authService;
  final LocalSessionService _localSessionStorage;

  LoginUsesCase(this._authService, this._localSessionStorage);

  Future<Session?> execute(
      String identifier, String password, String loginType) async {
    try {
      LoginResponse loginResponse = await _authService.logIn(LoginRequest(
          identifier: identifier, password: password, loginType: loginType));
      dev.log('login response: $loginResponse', className);

      final user = _getUserFromLoginResponse(loginResponse);

      var session = Session(user, loginResponse.accessToken,
          loginResponse.expiresIn, DateTime.now());

      session = await _localSessionStorage.newSession(session);

      return session;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      return null;
    }
  }

  User _getUserFromLoginResponse(LoginResponse loginResponse) {
    return User(
        id: loginResponse.id,
        username: loginResponse.username,
        email: loginResponse.email,
        fullname: loginResponse.fullname,
        profileThumbnail: loginResponse.profileThumbnail,
        userType: loginResponse.userType,
        userTypeId: loginResponse.userTypeId);
  }
}
