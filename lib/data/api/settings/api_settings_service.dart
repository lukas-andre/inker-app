import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:inker_studio/config/http_client_config.dart';
import 'package:inker_studio/domain/models/settings/settings.dart';
import 'package:inker_studio/domain/services/settings/settings_service.dart';
import 'package:inker_studio/utils/dev.dart';

class ApiSettingsService extends SettingsService {
  static const String className = 'ApiSettingsService';

  final HttpClientConfig _httpConfig;

  ApiSettingsService()
      : _httpConfig = HttpClientConfig(basePath: 'settings'),
        super();

  @override
  Future<Settings> loadSettings({required String token}) async {
    return Settings.initial();
    // final url = _httpConfig.surl(
    //   basePath: 'settings',
    // );

    // try {
    //   final response = await http.get(
    //     url,
    //     headers: {
    //       'Authorization': 'Bearer $token',
    //       'Content-Type': 'application/json',
    //     },
    //   );

    //   if (response.statusCode == HttpStatus.notFound) {
    //     if (ResponseUtils.resourceNotFound(response)) {
    //       throw ResourceNotFound();
    //     }
    //     throw HttpNotFound();
    //   }

    //   if (response.statusCode != HttpStatus.ok) {
    //     throw Exception('Error while loading settings');
    //   }

    //   try {
    //     final Map<String, dynamic> json = jsonDecode(response.body);
    //     return Settings.fromJson(json);
    //   } catch (e) {
    //     throw JsonParseException();
    //   }
    // } catch (e, stackTrace) {
    //   dev.logError(e, stackTrace);
    //   rethrow;
    // }
  }

  @override
  Future<void> setNotificationsEnabled({
    required bool enabled,
    required String token,
  }) async {
    final url = _httpConfig.surl(
      basePath: 'settings',
      path: 'notifications',
    );

    try {
      final response = await http.put(
        url,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'enabled': enabled}),
      );

      if (response.statusCode != HttpStatus.ok) {
        throw Exception('Error while updating notifications settings');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<void> setLocationServicesEnabled({
    required bool enabled,
    required String token,
  }) async {
    final url = _httpConfig.surl(
      basePath: 'settings',
      path: 'location-services',
    );

    try {
      final response = await http.put(
        url,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'enabled': enabled}),
      );

      if (response.statusCode != HttpStatus.ok) {
        throw Exception('Error while updating location services settings');
      }
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      rethrow;
    }
  }
}
