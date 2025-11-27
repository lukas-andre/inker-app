import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_settings.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'artist_agenda_settings_event.dart';
part 'artist_agenda_settings_state.dart';
part 'artist_agenda_settings_bloc.freezed.dart';

class ArtistAgendaSettingsBloc
    extends Bloc<ArtistAgendaSettingsEvent, ArtistAgendaSettingsState> {
  final AgendaService _agendaService;
  final LocalSessionService _sessionService;

  ArtistAgendaSettingsBloc({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
  })  : _agendaService = agendaService,
        _sessionService = sessionService,
        super(const ArtistAgendaSettingsStateInitial()) {
    on<ArtistAgendaSettingsEvent>((event, emit) async {
      await event.when(
        started: () async => _started(emit),
        loadSettings: (agendaId) async => _loadSettings(emit, agendaId),
        loadUnavailableTimes: (agendaId) async =>
            _loadUnavailableTimes(emit, agendaId),
        updateWorkingHours:
            (agendaId, workingHoursStart, workingHoursEnd, workingDays) async =>
                _updateWorkingHours(emit, agendaId, workingHoursStart,
                    workingHoursEnd, workingDays),
        updateAgendaSettings: (agendaId, isPublic, isOpen) async =>
            _updateAgendaSettings(emit, agendaId, isPublic, isOpen),
        addUnavailableTime: (agendaId, startDate, endDate, reason) async =>
            _addUnavailableTime(emit, agendaId, startDate, endDate, reason),
        deleteUnavailableTime: (agendaId, unavailableTimeId) async =>
            _deleteUnavailableTime(emit, agendaId, unavailableTimeId),
        settingsLoaded: (settings) async => _settingsLoaded(emit, settings),
        unavailableTimesLoaded: (unavailableTimes) async =>
            _unavailableTimesLoaded(emit, unavailableTimes),
        error: (message) async => _error(emit, message),
      );
    });
  }

  Future<void> _started(Emitter<ArtistAgendaSettingsState> emit) async {
    await state.whenOrNull(
      initial: () async {
        emit(const ArtistAgendaSettingsStateLoading());
      },
    );
  }

  Future<void> _loadSettings(
      Emitter<ArtistAgendaSettingsState> emit, String agendaId) async {
    emit(const ArtistAgendaSettingsStateLoading());

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      final settingsResponse = await _agendaService.getAgendaSettings(
        token: token,
        agendaId: agendaId,
      );

      // The service will already handle providing defaults for missing fields
      // Convert the workingDays to List<String> safely
      List<String> workingDays = [];
      if (settingsResponse['workingDays'] is List) {
        workingDays = (settingsResponse['workingDays'] as List)
            .map((day) => day.toString())
            .toList();
      } else {
        // Default if workingDays is not a list
        workingDays = ['1', '2', '3', '4', '5'];
      }

      // Create the settings object with values from the response, using defaults as needed
      final settings = AgendaSettings(
        workingHoursStart:
            settingsResponse['workingHoursStart']?.toString() ?? '09:00',
        workingHoursEnd:
            settingsResponse['workingHoursEnd']?.toString() ?? '18:00',
        workingDays: workingDays,
        isPublic: settingsResponse['public'] == true,
        isOpen: settingsResponse['open'] == true,
      );

      add(ArtistAgendaSettingsEvent.settingsLoaded(settings));
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);

      // Instead of showing an error, provide default settings
      const defaultSettings = AgendaSettings(
        workingHoursStart: '09:00',
        workingHoursEnd: '18:00',
        workingDays: ['1', '2', '3', '4', '5'],
        isPublic: true,
        isOpen: true,
      );

      add(const ArtistAgendaSettingsEvent.settingsLoaded(defaultSettings));
    }
  }

  Future<void> _loadUnavailableTimes(
      Emitter<ArtistAgendaSettingsState> emit, String agendaId) async {
    if (state is ArtistAgendaSettingsStateLoaded) {
      emit((state as ArtistAgendaSettingsStateLoaded)
          .copyWith(isLoadingUnavailableTimes: true));
    } else {
      emit(const ArtistAgendaSettingsStateLoading());
    }

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      final unavailableTimesResponse = await _agendaService.getUnavailableTime(
        token: token,
        agendaId: agendaId,
      );

      // Safely map the response to UnavailableTimeBlock objects
      final List<UnavailableTimeBlock> unavailableTimes = [];

      // Handle potential type issues with the response
      for (final block in unavailableTimesResponse) {
        if (block != null) {
          // Use the safe constructor that handles potential format issues
          final timeBlock = UnavailableTimeBlock.fromDynamic(block);

          // Only add valid blocks (with valid IDs)
          if (timeBlock.id.isNotEmpty) {
            unavailableTimes.add(timeBlock);
          }
        }
      }
    
      add(ArtistAgendaSettingsEvent.unavailableTimesLoaded(unavailableTimes));
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      // Instead of showing error, just load with empty list
      add(const ArtistAgendaSettingsEvent.unavailableTimesLoaded([]));
    }
  }

  Future<void> _updateWorkingHours(
      Emitter<ArtistAgendaSettingsState> emit,
      String agendaId,
      String workingHoursStart,
      String workingHoursEnd,
      List<String> workingDays) async {
    if (state is ArtistAgendaSettingsStateLoaded) {
      emit((state as ArtistAgendaSettingsStateLoaded).copyWith(isSaving: true));
    } else {
      emit(const ArtistAgendaSettingsStateLoading());
    }

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      // Save current settings in case update fails
      AgendaSettings? currentSettings;
      if (state is ArtistAgendaSettingsStateLoaded) {
        currentSettings = (state as ArtistAgendaSettingsStateLoaded).settings;
      }

      try {
        await _agendaService.updateWorkingHours(
          token: token,
          agendaId: agendaId,
          workingHoursStart: workingHoursStart,
          workingHoursEnd: workingHoursEnd,
          workingDays: workingDays,
        );

        // After successful update, reload settings
        add(ArtistAgendaSettingsEvent.loadSettings(agendaId));
      } catch (updateError, updateStacktrace) {
        dev.logError(updateError, updateStacktrace);

        // If the update fails but we have current settings, emit a loaded state
        // with the updated working hours values to maintain UI consistency
        if (currentSettings != null) {
          final updatedSettings = currentSettings.copyWith(
            workingHoursStart: workingHoursStart,
            workingHoursEnd: workingHoursEnd,
            workingDays: workingDays,
          );
          add(ArtistAgendaSettingsEvent.settingsLoaded(updatedSettings));
        } else {
          // Create new settings with the values if we don't have current settings
          final newSettings = AgendaSettings(
            workingHoursStart: workingHoursStart,
            workingHoursEnd: workingHoursEnd,
            workingDays: workingDays,
            isPublic: true, // default
            isOpen: true, // default
          );
          add(ArtistAgendaSettingsEvent.settingsLoaded(newSettings));
        }
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      add(ArtistAgendaSettingsEvent.error(e.toString()));
    }
  }

  Future<void> _updateAgendaSettings(Emitter<ArtistAgendaSettingsState> emit,
      String agendaId, bool isPublic, bool isOpen) async {
    if (state is ArtistAgendaSettingsStateLoaded) {
      emit((state as ArtistAgendaSettingsStateLoaded).copyWith(isSaving: true));
    } else {
      emit(const ArtistAgendaSettingsStateLoading());
    }

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      // If we have current settings, preserve them in case the update fails
      AgendaSettings? currentSettings;
      if (state is ArtistAgendaSettingsStateLoaded) {
        currentSettings = (state as ArtistAgendaSettingsStateLoaded).settings;
      }

      try {
        await _agendaService.updateAgendaSettings(
          token: token,
          agendaId: agendaId,
          isPublic: isPublic,
          isOpen: isOpen,
        );

        add(ArtistAgendaSettingsEvent.loadSettings(agendaId));
      } catch (updateError, updateStacktrace) {
        dev.logError(updateError, updateStacktrace);

        if (currentSettings != null) {
          final updatedSettings = currentSettings.copyWith(
            isPublic: isPublic,
            isOpen: isOpen,
          );
          add(ArtistAgendaSettingsEvent.settingsLoaded(updatedSettings));
        } else {
          // If we don't have current settings, show the error
          add(ArtistAgendaSettingsEvent.error(updateError.toString()));
        }
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      add(ArtistAgendaSettingsEvent.error(e.toString()));
    }
  }

  Future<void> _addUnavailableTime(
      Emitter<ArtistAgendaSettingsState> emit,
      String agendaId,
      DateTime startDate,
      DateTime endDate,
      String? reason) async {
    if (state is ArtistAgendaSettingsStateLoaded) {
      emit((state as ArtistAgendaSettingsStateLoaded).copyWith(isSaving: true));
    } else {
      emit(const ArtistAgendaSettingsStateLoading());
    }

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      // Get the current unavailable times to restore in case of error
      List<UnavailableTimeBlock> currentUnavailableTimes = [];
      if (state is ArtistAgendaSettingsStateLoaded) {
        currentUnavailableTimes =
            (state as ArtistAgendaSettingsStateLoaded).unavailableTimes;
      }

      try {
        await _agendaService.addUnavailableTime(
          token: token,
          agendaId: agendaId,
          startDate: startDate,
          endDate: endDate,
          reason: reason,
        );

        // After successful addition, reload unavailable times
        add(ArtistAgendaSettingsEvent.loadUnavailableTimes(agendaId));
      } catch (updateError, updateStacktrace) {
        dev.logError(updateError, updateStacktrace);

        // If adding fails, return to showing the current unavailable times
        add(ArtistAgendaSettingsEvent.unavailableTimesLoaded(
            currentUnavailableTimes));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);

      // Show consistent UI instead of error
      if (state is ArtistAgendaSettingsStateLoaded) {
        final currentState = state as ArtistAgendaSettingsStateLoaded;
        emit(currentState.copyWith(isSaving: false));
      } else {
        add(const ArtistAgendaSettingsEvent.unavailableTimesLoaded([]));
      }
    }
  }

  Future<void> _deleteUnavailableTime(Emitter<ArtistAgendaSettingsState> emit,
      String agendaId, String unavailableTimeId) async {
    if (state is ArtistAgendaSettingsStateLoaded) {
      emit((state as ArtistAgendaSettingsStateLoaded).copyWith(isSaving: true));
    } else {
      emit(const ArtistAgendaSettingsStateLoading());
    }

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) {
        throw Exception('No active session token found');
      }

      // Get current unavailable times to handle optimistic updates
      List<UnavailableTimeBlock> currentUnavailableTimes = [];
      if (state is ArtistAgendaSettingsStateLoaded) {
        currentUnavailableTimes = List.from(
            (state as ArtistAgendaSettingsStateLoaded).unavailableTimes);
      }

      // Optimistic update - remove the item immediately from UI
      if (state is ArtistAgendaSettingsStateLoaded) {
        final updatedTimes = currentUnavailableTimes
            .where((block) => block.id != unavailableTimeId)
            .toList();

        emit((state as ArtistAgendaSettingsStateLoaded).copyWith(
          unavailableTimes: updatedTimes,
          isSaving: true,
        ));
      }

      try {
        await _agendaService.deleteUnavailableTime(
          token: token,
          agendaId: agendaId,
          unavailableTimeId: unavailableTimeId,
        );

        // After successful deletion, reload unavailable times to sync with server
        add(ArtistAgendaSettingsEvent.loadUnavailableTimes(agendaId));
      } catch (updateError, updateStacktrace) {
        dev.logError(updateError, updateStacktrace);

        // If deletion fails, restore the original list
        add(ArtistAgendaSettingsEvent.unavailableTimesLoaded(
            currentUnavailableTimes));
      }
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);

      // Instead of showing error, just reload the unavailable times
      add(ArtistAgendaSettingsEvent.loadUnavailableTimes(agendaId));
    }
  }

  void _settingsLoaded(
      Emitter<ArtistAgendaSettingsState> emit, AgendaSettings settings) {
    if (state is ArtistAgendaSettingsStateLoaded) {
      emit((state as ArtistAgendaSettingsStateLoaded).copyWith(
        settings: settings,
        isSaving: false,
      ));
    } else {
      emit(ArtistAgendaSettingsStateLoaded(
        settings: settings,
        unavailableTimes: const [],
        isSaving: false,
        isLoadingUnavailableTimes: false,
      ));
    }
  }

  void _unavailableTimesLoaded(Emitter<ArtistAgendaSettingsState> emit,
      List<UnavailableTimeBlock> unavailableTimes) {
    if (state is ArtistAgendaSettingsStateLoaded) {
      emit((state as ArtistAgendaSettingsStateLoaded).copyWith(
        unavailableTimes: unavailableTimes,
        isLoadingUnavailableTimes: false,
        isSaving: false,
      ));
    } else {
      emit(ArtistAgendaSettingsStateLoaded(
        settings: const AgendaSettings(
          workingHoursStart: '09:00',
          workingHoursEnd: '18:00',
          workingDays: ['1', '2', '3', '4', '5'],
          isPublic: true,
          isOpen: true,
        ),
        unavailableTimes: unavailableTimes,
        isSaving: false,
        isLoadingUnavailableTimes: false,
      ));
    }
  }

  void _error(Emitter<ArtistAgendaSettingsState> emit, String message) {
    emit(ArtistAgendaSettingsStateError(message));
  }
}
