import 'package:inker_studio/domain/models/user/registered_user_info.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _isDarkMode = 'isDarkMode';
const createdUserId = 'createdUserId';

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

  @override
  Future<RegisteredUserInfo?> getCreatedUserInfo() async {
    final sp = await SharedPreferences.getInstance();
    final json = sp.getString(createdUserId);

    if (json == null) {
      return null;
    }

    return createdUserFromJson(json);
  }

  @override
  Future<bool> setCreatedUserInfo(RegisteredUserInfo createdUser) async {
    final sp = await SharedPreferences.getInstance();
    return sp.setString(createdUserId, createdUserToJson(createdUser));
  }
}
