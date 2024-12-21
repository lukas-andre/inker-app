import 'package:inker_studio/domain/models/settings/settings.dart';

abstract class SettingsService {
  Future<Settings> loadSettings({required String token});
  Future<void> setNotificationsEnabled({
    required bool enabled,
    required String token,
  });
  Future<void> setLocationServicesEnabled({
    required bool enabled,
    required String token,
  });
}
