import 'package:inker_studio/data/api/user/dtos/create_user_request.dart';
import 'package:inker_studio/data/api/user/dtos/get_user_by_social_media_response.dart';
import 'package:inker_studio/data/api/user/dtos/send_verification_code_response.dart';
import 'package:inker_studio/domain/models/notifications/notification_types.dart';
import 'package:inker_studio/features/auth_shared/models/user.dart' show User;

abstract class UserService {
  Future<User> user();
  // returns CreateArtistUserResponse and CreateCustomerUserResponse
  Future<dynamic> create(CreateUserRequest user);
  Future<GetUserBySocialMediaResponse?> getUserBySocialMediaAndEmail(
      String socialMedia, String email);
  Future<bool> sendAccountVerificationCode(
      String userId, String phoneNumber, NotificationType notificationType);
  Future<SendVerificationCodeResponse> sendAccountVerificationCodeByEmailOrPhone(
      {String? phoneNumber, String? email, required NotificationType notificationType});
  Future<bool> verifyAccountVerificationCode(
      {required String userId, required String code, required NotificationType notificationType});
  Future<void> deleteAccount(String token, String password);
  Future<void> sendPasswordRecoveryCode(
      {String? phoneNumber, String? email, required NotificationType notificationType});

  Future<void> resetPassword(String code, String newPassword, String repeatPassword, String email);
}
