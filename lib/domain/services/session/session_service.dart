import 'package:inker_studio/domain/models/session/session.dart';

abstract class LocalSessionService {
  Future<Session> newSession(Session session);

  Future<String?> getSessionToken(String sessionType);

  Future<Session?> getSession(String sessionType);

  Future<Session?> updateSession(Map<String, dynamic> session);

  Future<void> removeOldSession(Session session);

  Future<void> logout(Session session);

  Future<String?> getActiveSessionToken();

  Future<Session?> tryGetActiveSession();
}
