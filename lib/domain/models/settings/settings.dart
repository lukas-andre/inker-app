import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    required bool notificationsEnabled,
    required bool locationServicesEnabled,
  }) = _Settings;

  factory Settings.initial() => const Settings(
        notificationsEnabled: true,
        locationServicesEnabled: true,
      );

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
