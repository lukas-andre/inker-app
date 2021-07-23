import 'package:inker_studio/domain/models/user/user.dart';

abstract class UserService {
  Future<User> user();
}
