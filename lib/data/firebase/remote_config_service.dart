import 'dart:convert';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:inker_studio/domain/models/environment/environment.dart';

class RemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig;
  DateTime _lastFetchTime = DateTime.fromMicrosecondsSinceEpoch(0);
  static const Duration _cacheExpiration = Duration(minutes: 1);
  
  static RemoteConfigService? _instance;
  
  static Future<RemoteConfigService> getInstance() async {
    if (_instance == null) {
      _instance = RemoteConfigService(FirebaseRemoteConfig.instance);
      await _instance!._initialize();
    }
    return _instance!;
  }

  RemoteConfigService(this._remoteConfig);

  Future<void> _initialize() async {
    try {
      await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(minutes: 5),
      ));

      const envApiUrl = 'https://api.inkerapp.com';
      await _remoteConfig.setDefaults({
        'INKER_API_URL': envApiUrl,
        'isConsentV1Enabled': true,
        'isConsentV2Enabled': false,
        'environments_config': jsonEncode({
          'environments': {
            'STAGING': {
              'id': 'STAGING',
              'name': 'Staging',
              'description': 'Ambiente de pruebas',
              'apiUrl': 'https://staging.inker.studio/api',
              'additionalConfig': {}
            },
            'PRODUCTION': {
              'id': 'PRODUCTION',
              'name': 'Production',
              'description': 'Ambiente productivo',
              'apiUrl': 'https://www.inker.studio/api',
              'additionalConfig': {}
            }
          }
        }),
      });

      // Try to fetch with timeout, but don't fail if it doesn't work
      await fetchAndActivate().timeout(
        const Duration(seconds: 5),
        onTimeout: () {
          print('Remote config fetch timeout - using defaults');
          return false;
        },
      );
    } catch (e) {
      print('Error initializing remote config: $e - using defaults');
    }
  }

  Future<bool> fetchAndActivate() async {
    try {
      if (!_needsUpdate) {
        return false;
      }

      bool updated = await _remoteConfig.fetchAndActivate();
      if (updated) {
        _lastFetchTime = DateTime.now();
      }
      return updated;
    } catch (e) {
      print('Error fetching remote config: $e');
      return false;
    }
  }

  String get inkerApiUrl {
    final remoteConfigUrl = _remoteConfig.getString('INKER_API_URL');
    
    if (remoteConfigUrl.isEmpty || remoteConfigUrl == '0.0.0.0') {
      return 'https://api.inkerapp.com';
    }
    
    print('RemoteConfigService: Using remote config URL: $remoteConfigUrl');
    return remoteConfigUrl;
  }
  
  bool get isConsentV1Enabled {
    return _remoteConfig.getBool('isConsentV1Enabled');
  }

  bool get isConsentV2Enabled {
    return _remoteConfig.getBool('isConsentV2Enabled');
  }

  bool get _needsUpdate {
    final now = DateTime.now();
    return now.difference(_lastFetchTime) > _cacheExpiration;
  }

  EnvironmentsConfig? getEnvironmentsConfig() {
    try {
      final configString = _remoteConfig.getString('environments_config');
      if (configString.isEmpty) {
        return null;
      }
      
      final jsonData = jsonDecode(configString) as Map<String, dynamic>;
      final environmentsMap = <String, Environment>{};
      
      final envData = jsonData['environments'] as Map<String, dynamic>;
      envData.forEach((key, value) {
        environmentsMap[key] = Environment.fromJson(value as Map<String, dynamic>);
      });
      
      return EnvironmentsConfig(environments: environmentsMap);
    } catch (e) {
      print('Error parsing environments config: $e');
      return null;
    }
  }
}