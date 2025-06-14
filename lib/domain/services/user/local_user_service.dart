import 'package:inker_studio/features/auth_shared/models/user.dart' show User;

abstract class LocalUserService {
  Future<User?> saveUser(User user);
  Future<User?> getUser();
  Future<User?> updateUser(Map<String, dynamic> user);
}
