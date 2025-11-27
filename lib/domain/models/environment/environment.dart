import 'package:freezed_annotation/freezed_annotation.dart';

part 'environment.freezed.dart';
part 'environment.g.dart';

@freezed
class Environment with _$Environment {
  const factory Environment({
    required String id,
    required String name,
    required String description,
    required String apiUrl,
    @Default({}) Map<String, dynamic> additionalConfig,
  }) = _Environment;

  factory Environment.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentFromJson(json);
}

@freezed
class EnvironmentsConfig with _$EnvironmentsConfig {
  const factory EnvironmentsConfig({
    required Map<String, Environment> environments,
  }) = _EnvironmentsConfig;

  factory EnvironmentsConfig.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentsConfigFromJson(json);
}