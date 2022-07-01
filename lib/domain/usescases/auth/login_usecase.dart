import 'package:inker_studio/data/api/auth/dtos/login_request.dart';
import 'package:inker_studio/data/api/auth/dtos/login_response.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

class LoginUseCase {
  static const className = 'LoginUsesCase';

  final AuthService _authService;
  final LocalSessionService _localSessionStorage;

  LoginUseCase(
      {required AuthService authService,
      required LocalSessionService localSession})
      : _authService = authService,
        _localSessionStorage = localSession;

  Future<Session?> execute(
      String identifier, String password, String loginType) async {
    try {
      LoginResponse loginResponse = await _authService.login(LoginRequest(
          identifier: identifier, password: password, loginType: loginType));
      dev.log('login response: $loginResponse', className);

      final user = _getUserFromLoginResponse(loginResponse);
      final session = _getSessionFromUserAndResponse(user, loginResponse);

      return await _localSessionStorage.newSession(session);
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  Session _getSessionFromUserAndResponse(
      User user, LoginResponse loginResponse) {
    final sessionType = user.userType!; //* Handle this better in the future
    return Session(
        user: user,
        sessionType: sessionType,
        accessToken: loginResponse.accessToken,
        expireIn: loginResponse.expiresIn);
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
