import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:inker_studio/domain/models/environment/environment.dart';
import 'package:inker_studio/domain/services/environment/environment_service.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/data/firebase/remote_config_service.dart';

class EnvironmentServiceImpl implements EnvironmentService {
  static const String _environmentKey = 'selected_environment';
  static const String _defaultEnvironment = 'PRODUCTION';
  
  final LocalStorage _localStorage;
  final RemoteConfigService _remoteConfig;
  final BehaviorSubject<Environment?> _environmentController = BehaviorSubject<Environment?>();
  
  Environment? _currentEnvironment;
  EnvironmentsConfig? _availableEnvironments;
  
  EnvironmentServiceImpl({
    required LocalStorage localStorage,
    required RemoteConfigService remoteConfig,
  }) : _localStorage = localStorage,
       _remoteConfig = remoteConfig;
  
  @override
  Stream<Environment?> get environmentStream => _environmentController.stream;
  
  @override
  Environment? getCurrentEnvironment() => _currentEnvironment;
  
  @override
  String getApiUrl() {
    return _currentEnvironment?.apiUrl ?? 'https://api.inkerapp.com';
  }
  
  @override
  Future<void> initialize() async {
    // Load available environments from remote config
    await _loadAvailableEnvironments();
    
    // Load saved environment preference
    final savedEnvironmentId = await _localStorage.getString(_environmentKey);
    final environmentId = savedEnvironmentId ?? _defaultEnvironment;
    
    if (_availableEnvironments != null) {
      final environment = _availableEnvironments!.environments[environmentId];
      if (environment != null) {
        _currentEnvironment = environment;
        _environmentController.add(environment);
      } else {
        // Fallback to production if saved environment not found
        final prodEnvironment = _availableEnvironments!.environments[_defaultEnvironment];
        if (prodEnvironment != null) {
          _currentEnvironment = prodEnvironment;
          _environmentController.add(prodEnvironment);
        }
      }
    }
  }
  
  @override
  Future<void> setEnvironment(String environmentId) async {
    if (_availableEnvironments != null) {
      final environment = _availableEnvironments!.environments[environmentId];
      if (environment != null) {
        _currentEnvironment = environment;
        _environmentController.add(environment);
        
        // Save preference
        await _localStorage.setString(_environmentKey, environmentId);
        
        print('Environment changed to: ${environment.name}');
      }
    }
  }
  
  @override
  Future<EnvironmentsConfig?> getAvailableEnvironments() async {
    if (_availableEnvironments == null) {
      await _loadAvailableEnvironments();
    }
    return _availableEnvironments;
  }
  
  Future<void> _loadAvailableEnvironments() async {
    try {
      // Fetch latest config
      await _remoteConfig.fetchAndActivate();
      
      // Get environments configuration
      _availableEnvironments = _remoteConfig.getEnvironmentsConfig();
      
      // If no remote config, use defaults
      if (_availableEnvironments == null) {
        _availableEnvironments = _getDefaultEnvironments();
      }
    } catch (e) {
      print('Error loading environments: $e');
      _availableEnvironments = _getDefaultEnvironments();
    }
  }
  
  EnvironmentsConfig _getDefaultEnvironments() {
    return const EnvironmentsConfig(
      environments: {
        'LOCAL': Environment(
          id: 'LOCAL',
          name: 'Local',
          description: 'Ambiente local',
          apiUrl: 'http://localhost:3000',
          additionalConfig: {},
        ),
        'STAGING': Environment(
          id: 'STAGING',
          name: 'Staging',
          description: 'Ambiente de pruebas',
          apiUrl: 'https://staging-api.inkerapp.com',
          additionalConfig: {},
        ),
        'PRODUCTION': Environment(
          id: 'PRODUCTION',
          name: 'Production',
          description: 'Ambiente productivo',
          apiUrl: 'https://api.inkerapp.com',
          additionalConfig: {},
        ),
      },
    );
  }
  
  void dispose() {
    _environmentController.close();
  }
}