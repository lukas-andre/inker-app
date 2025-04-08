abstract class AccountVerificationService {
  Future<bool> sendSMS(String userId, String phoneNumber);

  Future<bool> validateVerificationCode(String userId, String code);
}
