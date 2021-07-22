import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/services/session/session_db_service.dart';
import 'package:inker_studio/domain/services/sqlite/db_service.dart';

class SessionDbServiceImpl extends SessionDbService {
  // TODO: PROBAR;
  @override
  Future<void> newSession(Session session) async {
    print('session: ${session.toString()}');
    final sessionMap = session.toJson();
    print('sessionMap: ${sessionMap.toString()}');
    sessionMap['user'] = session.user.toJson().toString();
    print('sessionMap2: ${sessionMap.toString()}');

    final result = await DatabaseService.instance
        .insert(DatabaseService.sessionDatabaseName, sessionMap);

    print('result $result');

    final createdSession = await DatabaseService.instance
        .query(DatabaseService.sessionDatabaseName);

    print('createdSession $createdSession');
  }

  // // TODO: PROBAR;
  // Future<Session?> getSession() async {
  //   final db = await database;
  //   final res = await db.query('Session');
  //   print('getAllScanModel: $res');
  //   return res.isNotEmpty
  //       ? res.map((r) => Session.fromJson(r)).toList().first
  //       : null;
  // }

  // // TODO: PROBAR;
  // Future<int> deleteSession() async {
  //   final db = await database;
  //   final res = await db.delete('Session');

  //   return res;
  // }
}
