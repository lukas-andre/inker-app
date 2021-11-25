import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:inker_studio/data/local/sqlite/core/sqlite_service.dart';
import 'package:inker_studio/data/local/sqlite/core/tables/session_table.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/models/session/session_type.dart';
import 'package:inker_studio/domain/models/user/user.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

class SqliteSessionService extends LocalSessionService {
  static const className = 'SqliteSessionService';

  @override
  Future<Session> newSession(Session session) async {
    removeOldSession(session);

    final sessionTableMap = _mapSessionToSessionTableSchema(session);
    sessionTableMap['isActive'] = 1;

    await SqliteService.instance.insert(SessionTable.name, sessionTableMap);

    final createdSession = await getSession(session.sessionType);

    return createdSession!;
  }

  @override
  Future<String?> getSessionToken(String sessionType) async {
    final List<Map<String, Object?>> result = (await SqliteService.instance
        .query(SessionTable.name,
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
    final List<Map<String, Object?>> result = (await SqliteService.instance
        .query(SessionTable.name,
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
    await SqliteService.instance.delete(SessionTable.name,
        where: 'isActive = ? AND sessionType = ?',
        whereArgs: [1, session.sessionType]);
  }

  @override
  Future<Session?> updateSession(Map<String, dynamic> session) async {
    await SqliteService.instance.update(SessionTable.name, session,
        where: 'id = ? AND sessionType = ?',
        whereArgs: [session['id'], session['sessionType']]);

    return (await getSession(session['sessionType']));
  }

  @override
  Future<String?> getActiveSessionToken() async {
    final List<Map<String, Object?>> result = (await SqliteService.instance
        .query(SessionTable.name,
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
    sessionMap!['isActive'] = 0;
    await updateSession(sessionMap);
  }

  @override
  Future<Session?> tryGetActiveSession() async {
    final List<Map<String, Object?>> result = (await SqliteService.instance
        .query(SessionTable.name,
            where: 'isActive = ?', whereArgs: [1], orderBy: 'createdAt DESC'));

    if (result.isEmpty) {
      return null;
    }

    final Map<String, Object?> sessionMap = Map.of(result.first);
    sessionMap['user'] = userFromJson(sessionMap['user'] as String).toJson();

    return Session.fromJson(sessionMap);
  }

  @override
  Future<Session?> newGoogleSession(firebase_auth.User? googleUser) async {
    User user = User(
      id: googleUser.hashCode,
      uid: googleUser!.uid,
      fullname: googleUser.displayName,
      email: googleUser.email,
      profileThumbnail: googleUser.photoURL,
    );

    Session session = Session(user, SessionType.google, user.uid!, '');

    return await newSession(session);
  }
}
