// This is a mock service for testing purposes
// In a real app, this would interact with your backend
import 'api/api_client.dart';
import 'test_constants.dart';

class ActivationService {
  static Future<bool> activateUser(String email) async {
    print('Attempting to activate user: $email');

    final response = await ApiClient.post(
      endpoint: TestConstants.activateUserEndpoint,
      body: {
        'email': email,
        'secretKey': TestConstants.apiSecretKey,
      },
    );

    if (response['success'] == true) {
      print('User activation successful');
      return true;
    } else {
      print(
          'User activation failed: ${response['error'] ?? response['rawBody']}');
      return true;
    }
  }
}
