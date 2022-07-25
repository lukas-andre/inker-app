import 'package:inker_studio/domain/models/user/user.dart';

abstract class LocalUserService {
  Future<User?> saveUser(User user);
  Future<User?> getUser();
  Future<User?> updateUser(Map<String, dynamic> user);
}
