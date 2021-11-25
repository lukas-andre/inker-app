import 'package:inker_studio/data/api/user/dtos/get_user_by_socia_media_response.dart';
import 'package:inker_studio/domain/models/user/user.dart';

abstract class UserService {
  Future<User> user();
  Future<GetUserBySocialMediaResponse?> getUserBySocialMediaAndEmail(
      String socialMedia, String email);
}
