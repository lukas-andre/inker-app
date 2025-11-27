import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/settings/settings.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/settings/settings_service.dart';
import 'package:inker_studio/features/auth_shared/usecases/logout_usecase.dart' show LogoutUseCase;

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsService _settingsService;
  final LogoutUseCase _logoutUseCase;
  final LocalSessionService _sessionService;

  SettingsBloc({
    required SettingsService settingsService,
    required LogoutUseCase logoutUseCase,
    required LocalSessionService sessionService,
  })  : _settingsService = settingsService,
        _logoutUseCase = logoutUseCase,
        _sessionService = sessionService,
        super(const SettingsState.initial()) {
    on<SettingsEvent>((event, emit) async {
      await event.when(
        loadSettings: () => _loadSettings(emit),
        toggleNotifications: (enabled) => _toggleNotifications(enabled, emit),
        toggleLocationServices: (enabled) =>
            _toggleLocationServices(enabled, emit),
        logout: () => _logout(emit),
      );
    });
    // Load settings when the bloc is created
    add(const SettingsEvent.loadSettings());
  }

  Future<void> _loadSettings(Emitter<SettingsState> emit) async {
    emit(const SettingsState.loading());
    try {
      final token = await _sessionService.getActiveSessionToken();
      final settings = await _settingsService.loadSettings(token: token!);
      emit(SettingsState.loaded(settings));
    } catch (e) {
      emit(SettingsState.error(e.toString()));
    }
  }

  Future<void> _toggleNotifications(
      bool enabled, Emitter<SettingsState> emit) async {
    if (state is _Loaded) {
      final currentSettings = (state as _Loaded).settings;
      try {
        final token = await _sessionService.getActiveSessionToken();
        await _settingsService.setNotificationsEnabled(
          enabled: enabled,
          token: token!,
        );
        final updatedSettings = currentSettings.copyWith(
          notificationsEnabled: enabled,
        );
        emit(SettingsState.loaded(updatedSettings));
      } catch (e) {
        emit(SettingsState.error(e.toString()));
      }
    }
  }

  Future<void> _toggleLocationServices(
      bool enabled, Emitter<SettingsState> emit) async {
    if (state is _Loaded) {
      final currentSettings = (state as _Loaded).settings;
      try {
        final token = await _sessionService.getActiveSessionToken();
        await _settingsService.setLocationServicesEnabled(
          enabled: enabled,
          token: token!,
        );
        final updatedSettings = currentSettings.copyWith(
          locationServicesEnabled: enabled,
        );
        emit(SettingsState.loaded(updatedSettings));
      } catch (e) {
        emit(SettingsState.error(e.toString()));
      }
    }
  }

  Future<void> _logout(Emitter<SettingsState> emit) async {
    try {
      await _logoutUseCase.execute((await _sessionService.getActiveSession())!);
    } catch (e) {
      emit(SettingsState.error(e.toString()));
    }
  }
}
