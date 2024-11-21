import 'package:inker_studio/data/api/http_client_service.dart';
import 'package:inker_studio/domain/models/settings/settings.dart';
import 'package:inker_studio/domain/services/settings/settings_service.dart';
import 'package:inker_studio/utils/dev.dart';

class ApiSettingsService extends SettingsService {
  static const String _basePath = 'settings';
  late final HttpClientService _httpClient;

  ApiSettingsService() {
    _initializeHttpClient();
  }

  Future<void> _initializeHttpClient() async {
    _httpClient = await HttpClientService.getInstance();
  }

  @override
  Future<Settings> loadSettings({required String token}) async {
    return Settings.initial();
    // Cuando se necesite implementar:
    /*
    try {
      return await _httpClient.get(
        path: _basePath,
        token: token,
        fromJson: Settings.fromJson,
      );
    } on CustomHttpException catch (e) {
      if (e.statusCode == HttpStatus.notFound) {
        if (e.message.contains('Resource not found')) {
          throw ResourceNotFound();
        }
        throw HttpNotFound();
      }
      throw Exception('Error while loading settings');
    } catch (e) {
      if (e is FormatException) {
        throw JsonParseException();
      }
      dev.logError(e, StackTrace.current);
      rethrow;
    }
    */
  }

  @override
  Future<void> setNotificationsEnabled({
    required bool enabled,
    required String token,
  }) async {
    try {
      await _httpClient.put(
        path: '$_basePath/notifications',
        token: token,
        body: {'enabled': enabled},
        fromJson: (json) => null,
      );
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      if (e is CustomHttpException) {
        throw Exception('Error while updating notifications settings: ${e.message}');
      }
      rethrow;
    }
  }

  @override
  Future<void> setLocationServicesEnabled({
    required bool enabled,
    required String token,
  }) async {
    try {
      await _httpClient.put(
        path: '$_basePath/location-services',
        token: token,
        body: {'enabled': enabled},
        fromJson: (json) => null,
      );
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      if (e is CustomHttpException) {
        throw Exception('Error while updating location services settings: ${e.message}');
      }
      rethrow;
    }
  }
}