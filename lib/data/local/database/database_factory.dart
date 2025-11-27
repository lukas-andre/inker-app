import 'package:flutter/foundation.dart';
import 'package:inker_studio/data/local/database/mobile_database_service.dart';
import 'package:inker_studio/data/local/database/web_database_service.dart';
import 'package:inker_studio/domain/services/database/platform_database_service.dart';

class DatabaseFactory {
  static PlatformDatabaseService createDatabaseService() {
    if (kIsWeb) {
      return WebDatabaseService.instance;
    } else {
      return MobileDatabaseService();
    }
  }
}