import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/utils/dev.dart';

class LogoutUseCase {
  static const className = 'LogoutUsesCase';

  final AuthService _authService;

  LogoutUseCase(this._authService);

  Future<Session?> execute(Session session) async {
    try {
      await _authService.logout(session);

      return null;
    } catch (e, stackTrace) {
      await dev.logError(e, stackTrace);
      return null;
    }
  }
}
