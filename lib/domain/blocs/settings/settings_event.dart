part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loadSettings() = _LoadSettings;
  const factory SettingsEvent.toggleNotifications(bool enabled) =
      _ToggleNotifications;
  const factory SettingsEvent.toggleLocationServices(bool enabled) =
      _ToggleLocationServices;
  const factory SettingsEvent.logout() = _Logout;
}
