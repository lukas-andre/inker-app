import 'package:inker_studio/data/api/http_client_service.dart';

enum DeviceType {
  android('android'),
  ios('ios'),
  web('web');

  final String value;
  const DeviceType(this.value);
}

abstract class ApiFcmService {
  Future<void> registerToken({
    required String token,
    required DeviceType deviceType,
    required String authToken,
  });

  Future<void> removeToken({
    required String token,
    required String authToken,
  });
}

class ApiFcmServiceImpl implements ApiFcmService {
  final HttpClientService _httpClient;

  ApiFcmServiceImpl(this._httpClient);

  @override
  Future<void> registerToken({
    required String token,
    required DeviceType deviceType,
    required String authToken,
  }) async {
    await _httpClient.post(
      path: '/fcm/token',
      body: {
        'token': token,
        'deviceType': deviceType.value,
      },
      token: authToken,
      fromJson: (_) => {},
    );
  }

  @override
  Future<void> removeToken({
    required String token,
    required String authToken,
  }) async {
    await _httpClient.delete(
      path: '/fcm/token/$token',
      body: {},
      token: authToken,
    );
  }
}