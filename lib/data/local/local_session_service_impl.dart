import 'package:inker_studio/data/local/sqlite/database_service_impl.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';

class LocalSessionServiceImpl extends LocalSessionService {
  static const className = 'LocalSessionServiceImpl';

  @override
  Future<Session> newSession(Session session) async {
    removeOldSession(session);

    final sessionTableMap = _mapSessionToSessionTableSchema(session);
    sessionTableMap['isActive'] = 1;

    await DatabaseServiceImpl.instance
        .insert(DatabaseServiceImpl.sessionDatabaseName, sessionTableMap);

    final createdSession = await getSession(session.sessionType);

    return createdSession!;
  }

  @override
  Future<String?> getSessionToken(String sessionType) async {
    final List<Map<String, Object?>> result = (await DatabaseServiceImpl
        .instance
        .query(DatabaseServiceImpl.sessionDatabaseName,
            columns: ['accessToken'],
            where: 'isActive = ? AND sessionType = ?',
            whereArgs: [1, sessionType]));

    if (result.isEmpty) {
      return null;
    }

    final Map<String, Object?> sessionMap = result.first;

    return sessionMap['accessToken'] as String;
  }

  @override
  Future<Session?> getSession(String sessionType) async {
    final sessionMap = await _getSessionMap(sessionType);

    if (sessionMap == null) {
      return null;
    }

    sessionMap['user'] = userFromJson(sessionMap['user'] as String).toJson();

    return Session.fromJson(sessionMap);
  }

  Future<Map<String, Object?>?> _getSessionMap(String sessionType) async {
    final List<Map<String, Object?>> result = (await DatabaseServiceImpl
        .instance
        .query(DatabaseServiceImpl.sessionDatabaseName,
            where: 'isActive = ? AND sessionType = ?',
            whereArgs: [1, sessionType],
            orderBy: 'updatedAt DESC'));

    return result.isEmpty ? null : Map.of(result.first);
  }

  Map<String, dynamic> _mapSessionToSessionTableSchema(Session session) {
    var sessionMap = session.toJson();

    sessionMap['user'] =
        session.user != null ? userToJson(session.user!) : null;

    return sessionMap;
  }

  @override
  Future<void> removeOldSession(Session session) async {
    await DatabaseServiceImpl.instance.delete(
        DatabaseServiceImpl.sessionDatabaseName,
        where: 'isActive = ? AND sessionType = ?',
        whereArgs: [1, session.sessionType]);
  }

  @override
  Future<Session?> updateSession(Map<String, dynamic> session) async {
    await DatabaseServiceImpl.instance.update(
        DatabaseServiceImpl.sessionDatabaseName, session,
        where: 'id = ? AND sessionType = ?',
        whereArgs: [session['id'], session['sessionType']]);

    return (await getSession(session['sessionType']));
  }

  @override
  Future<String?> getActiveSessionToken() async {
    final List<Map<String, Object?>> result = (await DatabaseServiceImpl
        .instance
        .query(DatabaseServiceImpl.sessionDatabaseName,
            columns: ['accessToken'],
            where: 'isActive = ?',
            whereArgs: [1],
            orderBy: 'createdAt DESC'));

    if (result.isEmpty) {
      return null;
    }

    final Map<String, Object?> sessionMap = result.first;

    return sessionMap['accessToken'] as String;
  }

  @override
  Future<void> logout(Session session) async {
    final sessionMap = await _getSessionMap(session.sessionType);
    sessionMap?['isActive'] = 0;
    await updateSession(sessionMap!);
  }

  @override
  Future<Session?> tryGetActiveSession() async {
    final List<Map<String, Object?>> result = (await DatabaseServiceImpl
        .instance
        .query(DatabaseServiceImpl.sessionDatabaseName,
            where: 'isActive = ?', whereArgs: [1], orderBy: 'createdAt DESC'));

    if (result.isEmpty) {
      return null;
    }

    final Map<String, Object?> sessionMap = Map.of(result.first);
    sessionMap['user'] = userFromJson(sessionMap['user'] as String).toJson();

    return Session.fromJson(sessionMap);
  }
}
