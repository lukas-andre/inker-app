abstract class AccountVerificationService {
  Future<dynamic> sendSMS(int userId, String phoneNumber);
}
