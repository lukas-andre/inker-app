import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';
import 'package:inker_studio/utils/dev.dart';

class LogoutUseCase {
  static const className = 'LogoutUsesCase';

  final AuthService _authService;
  final LocalSessionService _sessionService;

// TODO: ADD GOOGLE AUTH SERVICE PARA HACER LOGOUT
  LogoutUseCase(
      {required AuthService authService,
      required LocalSessionService sessionService})
      : _authService = authService,
        _sessionService = sessionService;

  Future<Session?> execute(Session session) async {
    try {
      final currentSession =
          await _sessionService.getSession(session.sessionType);

      if (currentSession != null) {
        return null;
      }

      // await _authService.logout(currentSession!);

      return null;
    } catch (e, stackTrace) {
      await dev.logError(e, stackTrace);
      return null;
    }
  }
}
