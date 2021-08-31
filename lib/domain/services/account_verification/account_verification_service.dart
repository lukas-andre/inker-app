abstract class AccountVerificationService {
  Future<bool> sendSMS(int userId, String phoneNumber);

  Future<bool> validateVerificationCode(int userId, String code);
}
