import 'package:inker_studio/features/register/models/registered_user_info.dart' show RegisteredUserInfo, createdUserFromJson, createdUserToJson;
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _isDarkMode = 'isDarkMode';
const createdUserId = 'createdUserId';
const userIsCreated = 'userIsCreated';

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

  @override
  Future<bool> getUserIsCreated() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getBool(userIsCreated) ?? false;
  }

  @override
  Future<bool> setUserIsCreated(bool isCreated) async {
    final sp = await SharedPreferences.getInstance();
    return sp.setBool(userIsCreated, isCreated);
  }

  @override
  Future<bool> setString(String key, String value) async {
    final sp = await SharedPreferences.getInstance();
    return sp.setString(key, value);
  }

  @override
  Future<String?> getString(String key) async {
    final sp = await SharedPreferences.getInstance();
    return sp.getString(key);
  }
}
