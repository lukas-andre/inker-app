import 'package:inker_studio/domain/models/session/session.dart';

abstract class SessionDbService {
  Future<void> newSession(Session session);
}
