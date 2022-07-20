import 'package:inker_studio/domain/models/user/registered_user_info.dart';

abstract class LocalStorage {
  Future<bool> isDarkMode();

  Future<bool> updateTheme(bool isDarkMode);

  Future<bool> setCreatedUserInfo(RegisteredUserInfo createdUser);
  Future<RegisteredUserInfo?> getCreatedUserInfo();

  Future<bool> setUserIsCreated(bool isCreated);
  Future<bool> getUserIsCreated();
}
