import 'dart:async';
import 'package:inker_studio/domain/models/environment/environment.dart';

abstract class EnvironmentService {
  Environment? getCurrentEnvironment();
  Future<void> setEnvironment(String environmentId);
  String getApiUrl();
  Stream<Environment?> get environmentStream;
  Future<EnvironmentsConfig?> getAvailableEnvironments();
  Future<void> initialize();
}