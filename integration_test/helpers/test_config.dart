import 'package:inker_studio/data/local/sqlite/core/sqlite_service.dart';

class TestConfig {
  static Future<void> initializeTests({bool resetDatabase = true}) async {
    if (resetDatabase) {
      await SqliteService.instance.resetDatabase();
    }
  }

  static Future<void> tearDownTests() async {
    await SqliteService.instance.closeDatabase();
  }
}
