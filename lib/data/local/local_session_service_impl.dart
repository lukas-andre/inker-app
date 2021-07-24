import 'dart:developer' as developer;

import 'package:inker_studio/data/local/sqlite/database_service_impl.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';

class LocalSessionServiceImpl extends LocalSessionService {
  static const className = 'LocalSessionServiceImpl';

  // TODO: PROBAR;
  @override
  Future<Session> newSession(Session session) async {
    // TODO: Considerar un soft delete, pero en un futuro.
    removeOldSession();

    developer.log('session: ${session.toString()}',
        name: '$className::newSession');

    final sessionTableMap = _mapSessionToSessionTableSchema(session);
    developer.log('sessionTableMap: ${sessionTableMap.toString()}',
        name: '$className::newSession');
    final result = await DatabaseServiceImpl.instance
        .insert(DatabaseServiceImpl.sessionDatabaseName, sessionTableMap);

    developer.log('result $result', name: '$className::newSession');

    final createdSession = await getSession();
    developer.log('createdSession $createdSession',
        name: '$className::newSession');

    return createdSession!;
  }

  @override
  Future<String?> getSessionToken() async {
    final List<Map<String, Object?>> result = (await DatabaseServiceImpl
        .instance
        .query(DatabaseServiceImpl.sessionDatabaseName,
            columns: ['accessToken']));
    developer.log('result: $result', name: '$className::getSessionToken');

    if (result.isEmpty) {
      return null;
    }

    final Map<String, Object?> sessionMap = result.first;
    developer.log('sessionMap: $sessionMap',
        name: '$className::getSessionToken');

    return sessionMap['accessToken'] as String;
  }

  @override
  Future<Session?> getSession() async {
    final List<Map<String, Object?>> result =
        (await DatabaseServiceImpl.instance.query(
      DatabaseServiceImpl.sessionDatabaseName,
    ));
    developer.log('result: $result', name: '$className::getSession');

    if (result.isEmpty) {
      return null;
    }

    Map<String, Object?> sessionMap = Map.of(result.first);
    developer.log('sessionMap.user: ${sessionMap['user']}',
        name: '$className::getSession');
    developer.log(
        'sessionMap.user.toString(): ${sessionMap['user'].toString()}',
        name: '$className::getSession');

    sessionMap['user'] = userFromJson(sessionMap['user'].toString()).toJson();

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
    developer.log('result: $result', name: '$className::removeSession');
  }

  Map<String, dynamic> _mapSessionToSessionTableSchema(Session session) {
    developer.log('session: $session',
        name: '$className::mapSessionToSessionTableSchema');

    final sessionMap = session.toJson();
    developer.log('sessionMap: ${sessionMap.toString()}',
        name: '$className::mapSessionToSessionTableSchema');

    if (session.user != null) {
      sessionMap['user'] = userToJson(session.user!);
    } else {
      sessionMap['user'] = null;
    }

    sessionMap['createdAt'] = session.createdAt!.toIso8601String();
    developer.log('session.createdAt ${sessionMap['createdAt']}',
        name: '$className::mapSessionToSessionTableSchema');

    return sessionMap;
  }
}
