abstract class AccountVerificationService {
  Future<bool> sendSMS(int userId, String phoneNumber);
}
