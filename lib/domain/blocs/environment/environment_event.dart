part of 'environment_bloc.dart';

@freezed
class EnvironmentEvent with _$EnvironmentEvent {
  const factory EnvironmentEvent.loadEnvironments() = LoadEnvironments;
  const factory EnvironmentEvent.changeEnvironment({
    required String environmentId,
  }) = ChangeEnvironment;
}