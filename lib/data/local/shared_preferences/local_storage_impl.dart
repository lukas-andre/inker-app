import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _isDarkMode = 'isDarkMode';

class SharedPreferencesStorage extends LocalStorage {
  @override
  Future<bool> isDarkMode() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getBool(_isDarkMode) ?? false;
  }

  @override
  Future<bool> updateTheme(bool isDarkMode) async {
    final sp = await SharedPreferences.getInstance();
    return await sp.setBool(_isDarkMode, isDarkMode);
  }
}
