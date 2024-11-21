import 'package:firebase_remote_config/firebase_remote_config.dart';

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
    await _remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: Duration.zero,
    ));

    await _remoteConfig.setDefaults({
      'INKER_API_URL': '0.0.0.0',
    });

    await fetchAndActivate();
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

  String get inkerApiUrl => _remoteConfig.getString('INKER_API_URL');
  
  bool get _needsUpdate {
    final now = DateTime.now();
    return now.difference(_lastFetchTime) > _cacheExpiration;
  }
}