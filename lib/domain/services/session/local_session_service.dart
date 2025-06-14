import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:inker_studio/features/auth_shared/models/session/session.dart' show Session;

abstract class LocalSessionService {
  Future<Session> newSession(Session session);

  Future<String?> getSessionToken(String sessionType);

  Future<Session?> getSession(String sessionType);

  Future<Session?> updateSession(Map<String, dynamic> session);

  Future<void> removeOldSession(Session session);

  Future<void> logout(Session session);

  Future<String?> getActiveSessionToken();

  Future<Session?> tryGetActiveSession();

  Future<Session?> newGoogleSession(firebase_auth.User? googleUser);

  Future<Session?> getActiveSession();
}
