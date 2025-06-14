import 'package:inker_studio/features/auth/data/firebase/google_auth_service.dart';
import 'package:inker_studio/features/auth/models/session/session.dart';
import 'package:inker_studio/features/auth/services/auth_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

class LogoutUseCase {
  static const className = 'LogoutUsesCase';

  final AuthService _authService;
  final LocalSessionService _sessionService;
  final GoogleAuthService _googleAuthService;

// TODO: ADD GOOGLE AUTH SERVICE PARA HACER LOGOUT
  LogoutUseCase(
      {required AuthService authService,
      required LocalSessionService sessionService,
      required GoogleAuthService googleAuthService})
      : _authService = authService,
        _sessionService = sessionService,
        _googleAuthService = googleAuthService;

  Future<Session?> execute(Session session) async {
    try {
      dev.log('aaaaaaaaaaa: $session', className);
      final currentSession =
          await _sessionService.getSession(session.sessionType);
      dev.log('currentSession: $currentSession', className);

      if (currentSession == null) {
        return null;
      }

      await _authService.logout(currentSession);
      await _googleAuthService.signOut();

      return null;
    } catch (e, stackTrace) {
      await dev.logError(e, stackTrace);
      return null;
    }
  }
}
