import 'package:inker_studio/domain/models/session/session.dart';

abstract class LocalSessionService {
  Future<Session> newSession(Session session);
  Future<String?> getSessionToken();
  Future<String?> getSessionUser();
  Future<Session?> getSession();
  Future<void> removeOldSession();
}
