import 'package:inker_studio/data/api/user/dtos/create_user_request.dart';
import 'package:inker_studio/data/api/user/dtos/get_user_by_social_media_response.dart';
import 'package:inker_studio/domain/models/notifications/notification_types.dart';
import 'package:inker_studio/domain/models/user/user.dart';

abstract class UserService {
  Future<User> user();
  // returns CreateArtistUserResponse and CreateCustomerUserResponse
  Future<dynamic> create(CreateUserRequest user);
  Future<GetUserBySocialMediaResponse?> getUserBySocialMediaAndEmail(
      String socialMedia, String email);
  Future<bool> sendAccountVerificationCode(
      String userId, String phoneNumber, NotificationType notificationType);
  Future<bool> verifyAccountVerificationCode(
      String userId, String code, NotificationType notificationType);
}
