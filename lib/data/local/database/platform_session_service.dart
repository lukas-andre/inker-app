import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:inker_studio/data/local/database/database_factory.dart';
import 'package:inker_studio/data/local/sqlite/core/tables/session_table.dart';
import 'package:inker_studio/features/auth_shared/models/session/session.dart' show Session;
import 'package:inker_studio/domain/models/session/session_type.dart';
import 'package:inker_studio/features/auth_shared/models/user.dart' show User, userFromJson, userToJson;
import 'package:inker_studio/domain/services/database/platform_database_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

class PlatformSessionService extends LocalSessionService {
  static const className = 'PlatformSessionService';
  
  final PlatformDatabaseService _databaseService = DatabaseFactory.createDatabaseService();

  @override
  Future<Session> newSession(Session session) async {
    removeOldSession(session);

    final sessionTableMap = _mapSessionToSessionTableSchema(session);
    sessionTableMap['isActive'] = 1;

    await _databaseService.insert(sessionTable.getName(), sessionTableMap);

    final createdSession = await getSession(session.sessionType);

    return createdSession!;
  }

  @override
  Future<String?> getSessionToken(String sessionType) async {
    final List<Map<String, dynamic>> result = await _databaseService
        .query(sessionTable.getName(),
            columns: ['accessToken'],
            where: 'isActive = ? AND sessionType = ?',
            whereArgs: [1, sessionType]);

    if (result.isEmpty) {
      return null;
    }

    final Map<String, dynamic> sessionMap = result.first;

    return sessionMap['accessToken'] as String;
  }

  @override
  Future<Session?> getSession(String sessionType) async {
    final sessionMap = await _getSessionMap(sessionType);

    if (sessionMap == null) {
      return null;
    }

    sessionMap['user'] = userFromJson(sessionMap['user'] as String).toJson();

    return Session.fromMap(sessionMap);
  }

  Future<Map<String, dynamic>?> _getSessionMap(String sessionType) async {
    final List<Map<String, dynamic>> result = await _databaseService
        .query(sessionTable.getName(),
            where: 'isActive = ? AND sessionType = ?',
            whereArgs: [1, sessionType],
            orderBy: 'updatedAt DESC');

    return result.isEmpty ? null : Map.of(result.first);
  }

  Map<String, dynamic> _mapSessionToSessionTableSchema(Session session) {
    var sessionMap = session.toMap();

    sessionMap['user'] =
        session.user != null ? userToJson(session.user!) : null;

    return sessionMap;
  }

  @override
  Future<void> removeOldSession(Session session) async {
    await _databaseService.delete(sessionTable.getName(),
        where: 'isActive = ? AND sessionType = ?',
        whereArgs: [1, session.sessionType]);
  }

  @override
  Future<Session?> updateSession(Map<String, dynamic> session) async {
    await _databaseService.update(sessionTable.getName(), session,
        where: 'id = ? AND sessionType = ?',
        whereArgs: [session['id'], session['sessionType']]);

    return (await getSession(session['sessionType']));
  }

  @override
  Future<String?> getActiveSessionToken() async {
    final List<Map<String, dynamic>> result = await _databaseService
        .query(sessionTable.getName(),
            columns: ['accessToken'],
            where: 'isActive = ?',
            whereArgs: [1],
            orderBy: 'createdAt DESC');

    if (result.isEmpty) {
      return null;
    }

    final Map<String, dynamic> sessionMap = result.first;

    return sessionMap['accessToken'] as String;
  }

  @override
  Future<void> logout(Session session) async {
    await removeOldSession(session);
  }

  @override
  Future<Session?> tryGetActiveSession() async {
    final List<Map<String, dynamic>> result = await _databaseService
        .query(sessionTable.getName(),
            where: 'isActive = ?', whereArgs: [1], orderBy: 'createdAt DESC');

    if (result.isEmpty) {
      return null;
    }

    final Map<String, dynamic> sessionMap = Map.of(result.first);
    sessionMap['user'] = userFromJson(sessionMap['user'] as String).toJson();

    return Session.fromMap(sessionMap);
  }

  @override
  Future<Session?> newGoogleSession(firebase_auth.User? googleUser) async {
    User user = User(
      id: googleUser.hashCode.toString(),
      uid: googleUser!.uid,
      fullname: googleUser.displayName,
      email: googleUser.email,
      profileThumbnail: googleUser.photoURL,
    );

    final Session session = Session(
        user: user,
        sessionType: SessionType.google,
        accessToken: user.uid!,
        expireIn: '');

    return await newSession(session);
  }

  @override
  Future<Session?> getActiveSession() async {
    final List<Map<String, dynamic>> result = await _databaseService
        .query(sessionTable.getName(),
            where: 'isActive = ?', whereArgs: [1], orderBy: 'createdAt DESC');

    if (result.isEmpty) {
      return null;
    }

    final Map<String, dynamic> sessionMap = Map.of(result.first);
    sessionMap['user'] = userFromJson(sessionMap['user'] as String).toJson();

    return Session.fromMap(sessionMap);
  }
}