import 'package:inker_studio/data/local/sqlite/core/sqlite_service.dart';
import 'package:patrol/patrol.dart';

class TestConfig {
  static const defaultConfig = PatrolTesterConfig(
    settlePolicy: SettlePolicy.trySettle,
    settleTimeout: Duration(seconds: 10),
    printLogs: true,
  );

  static Future<void> initializeTests({bool resetDatabase = true}) async {
    if (resetDatabase) {
      await SqliteService.instance.resetDatabase();
    }
  }

  static Future<void> tearDownTests() async {
    await SqliteService.instance.closeDatabase();
  }
}
