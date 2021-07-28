import 'package:inker_studio/data/local/sqlite/database_service_impl.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';
import 'package:inker_studio/utils/dev.dart';

class LocalSessionServiceImpl extends LocalSessionService {
  static const className = 'LocalSessionServiceImpl';

  @override
  Future<Session> newSession(Session session) async {
    removeOldSession(session);

    dev.log('session: ${session.toString()}', className, 'newSession');

    final sessionTableMap = _mapSessionToSessionTableSchema(session);
    sessionTableMap['isActive'] = 1;

    dev.log('sessionTableMap: ${sessionTableMap.toString()}', className,
        'newSession');

    final result = await DatabaseServiceImpl.instance
        .insert(DatabaseServiceImpl.sessionDatabaseName, sessionTableMap);

    dev.log('result $result', className, 'newSession');

    final createdSession = await getSession(session.sessionType);
    dev.log('createdSession $createdSession', className, 'newSession');

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

    if (result.isEmpty) return null;

    final Map<String, Object?> sessionMap = result.first;
    dev.log('sessionMap: $sessionMap', className, 'getSessionToken');

    return sessionMap['accessToken'] as String;
  }

  @override
  Future<Session?> getSession(String sessionType) async {
    final sessionMap = await _getSessionMap(sessionType);

    if (sessionMap == null) return null;

    dev.log('sessionMap.user: ${sessionMap['user']}', className, 'getSession');

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

    dev.log('result: $result', className, 'getSession');

    return result.isEmpty ? null : Map.of(result.first);
  }

  Map<String, dynamic> _mapSessionToSessionTableSchema(Session session,
      {bool isNew = true}) {
    dev.log('session: $session', className, 'mapSessionToSessionTableSchema');

    var sessionMap = session.toJson();
    dev.log('sessionMap: ${sessionMap.toString()}', className,
        'mapSessionToSessionTableSchema');

    sessionMap['user'] =
        session.user != null ? userToJson(session.user!) : null;

    dev.inspect(sessionMap, 'sessionMap');

    return sessionMap;
  }

  @override
  Future<void> removeOldSession(Session session) async {
    // TODO: Considerar un soft delete, pero en un futuro.
    final result = await DatabaseServiceImpl.instance.delete(
        DatabaseServiceImpl.sessionDatabaseName,
        where: 'isActive = ? AND sessionType = ?',
        whereArgs: [1, session.sessionType]);
    dev.log('result: $result', className, 'removeSession');
  }

  @override
  Future<Session> updateSession(Map<String, dynamic> session) async {
    final result = await DatabaseServiceImpl.instance.update(
        DatabaseServiceImpl.sessionDatabaseName, session,
        where: 'isActive = ? AND sessionType = ?',
        whereArgs: [session['isActive'], session['sessionType']]);

    dev.log(
      'result: $result',
      className,
      'removeSession',
    );

    return (await getSession(session['sessionType']))!;
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
    dev.log('result: $result', className, 'getActiveSessionToken');

    final List<Map<String, Object?>> result2 = (await DatabaseServiceImpl
        .instance
        .query(DatabaseServiceImpl.sessionDatabaseName));
    dev.log('result2: $result2', className, 'getActiveSessionToken');

    if (result.isEmpty) return null;

    final Map<String, Object?> sessionMap = result.first;
    dev.log('sessionMap: $sessionMap', className, 'getActiveSessionToken');

    return sessionMap['accessToken'] as String;
  }

  @override
  Future<void> logout(Session session) async {
    final sessionMap = _mapSessionToSessionTableSchema(session, isNew: false);
    sessionMap['isActive'] = 0;
    await updateSession(sessionMap);
  }

  @override
  Future<Session?> tryGetActiveSession() async {
    final List<Map<String, Object?>> result = (await DatabaseServiceImpl
        .instance
        .query(DatabaseServiceImpl.sessionDatabaseName,
            where: 'isActive = ?', whereArgs: [1], orderBy: 'createdAt DESC'));
    dev.log('result: $result', className, 'getActiveSessionToken');

    if (result.isEmpty) return null;

    final Map<String, Object?> sessionMap = result.first;
    dev.log('sessionMap: $sessionMap', className, 'getActiveSessionToken');

    return Session.fromJson(sessionMap);
  }
}
