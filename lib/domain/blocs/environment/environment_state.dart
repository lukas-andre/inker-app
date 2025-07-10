part of 'environment_bloc.dart';

@freezed
class EnvironmentState with _$EnvironmentState {
  const factory EnvironmentState.initial() = _Initial;
  const factory EnvironmentState.loading() = _Loading;
  const factory EnvironmentState.loaded({
    required Environment currentEnvironment,
    required EnvironmentsConfig availableEnvironments,
  }) = _Loaded;
  const factory EnvironmentState.changed({
    required Environment previousEnvironment,
    required Environment newEnvironment,
  }) = _Changed;
  const factory EnvironmentState.error(String message) = _Error;
}