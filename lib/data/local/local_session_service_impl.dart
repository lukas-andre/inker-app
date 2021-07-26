import 'package:inker_studio/data/local/sqlite/database_service_impl.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';
import 'package:inker_studio/utils/dev.dart';

class LocalSessionServiceImpl extends LocalSessionService {
  static const className = 'LocalSessionServiceImpl';

  @override
  Future<Session> newSession(Session session) async {
    // TODO: Considerar un soft delete, pero en un futuro.
    removeOldSession();

    dev.log('session: ${session.toString()}', className, 'newSession');

    final sessionTableMap = _mapSessionToSessionTableSchema(session);
    dev.log('sessionTableMap: ${sessionTableMap.toString()}', className,
        'newSession');
    final result = await DatabaseServiceImpl.instance
        .insert(DatabaseServiceImpl.sessionDatabaseName, sessionTableMap);

    dev.log('result $result', className, 'newSession');

    final createdSession = await getSession();
    dev.log('createdSession $createdSession', className, 'newSession');

    return createdSession!;
  }

  @override
  Future<String?> getSessionToken() async {
    final List<Map<String, Object?>> result = (await DatabaseServiceImpl
        .instance
        .query(DatabaseServiceImpl.sessionDatabaseName,
            columns: ['accessToken']));
    dev.log('result: $result', className, 'getSessionToken');

    if (result.isEmpty) {
      return null;
    }

    final Map<String, Object?> sessionMap = result.first;
    dev.log('sessionMap: $sessionMap', className, 'getSessionToken');

    return sessionMap['accessToken'] as String;
  }

  @override
  Future<Session?> getSession() async {
    final List<Map<String, Object?>> result =
        (await DatabaseServiceImpl.instance.query(
      DatabaseServiceImpl.sessionDatabaseName,
    ));
    dev.log('result: $result', className, 'getSession');

    if (result.isEmpty) {
      return null;
    }

    Map<String, Object?> sessionMap = Map.of(result.first);
    dev.log('sessionMap.user: ${sessionMap['user']}', className, 'getSession');

    sessionMap['user'] = userFromJson(sessionMap['user'] as String).toJson();

    return Session.fromJson(sessionMap);
  }

  @override
  Future<String> getSessionUser() {
    // TODO: implement getSessionUser
    throw UnimplementedError();
  }

  @override
  Future<void> removeOldSession() async {
    final result = await DatabaseServiceImpl.instance
        .delete(DatabaseServiceImpl.sessionDatabaseName);
    dev.log('result: $result', className, 'removeSession');
  }

  Map<String, dynamic> _mapSessionToSessionTableSchema(Session session) {
    dev.log('session: $session', className, 'mapSessionToSessionTableSchema');

    final sessionMap = session.toJson();
    dev.log('sessionMap: ${sessionMap.toString()}', className,
        'mapSessionToSessionTableSchema');

    if (session.user != null) {
      sessionMap['user'] = userToJson(session.user!);
    } else {
      sessionMap['user'] = null;
    }

    sessionMap['createdAt'] = session.createdAt!.toIso8601String();
    dev.log('session.createdAt ${sessionMap['createdAt']}', className,
        'mapSessionToSessionTableSchema');

    return sessionMap;
  }
}
