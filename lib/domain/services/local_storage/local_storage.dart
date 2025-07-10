
import 'package:inker_studio/features/register/models/registered_user_info.dart' show RegisteredUserInfo;

abstract class LocalStorage {
  Future<bool> isDarkMode();

  Future<bool> updateTheme(bool isDarkMode);

  Future<bool> setCreatedUserInfo(RegisteredUserInfo createdUser);
  Future<RegisteredUserInfo?> getCreatedUserInfo();

  Future<bool> setUserIsCreated(bool isCreated);
  Future<bool> getUserIsCreated();
  
  Future<bool> setString(String key, String value);
  Future<String?> getString(String key);
}
