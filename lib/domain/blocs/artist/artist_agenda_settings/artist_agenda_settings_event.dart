part of 'artist_agenda_settings_bloc.dart';

@freezed
class ArtistAgendaSettingsEvent with _$ArtistAgendaSettingsEvent {
  const factory ArtistAgendaSettingsEvent.started() = _Started;
  
  const factory ArtistAgendaSettingsEvent.loadSettings(int agendaId) = _LoadSettings;
  
  const factory ArtistAgendaSettingsEvent.loadUnavailableTimes(int agendaId) = _LoadUnavailableTimes;
  
  const factory ArtistAgendaSettingsEvent.updateWorkingHours({
    required int agendaId,
    required String workingHoursStart,
    required String workingHoursEnd,
    required List<String> workingDays,
  }) = _UpdateWorkingHours;
  
  const factory ArtistAgendaSettingsEvent.updateAgendaSettings({
    required int agendaId,
    required bool isPublic,
    required bool isOpen,
  }) = _UpdateAgendaSettings;
  
  const factory ArtistAgendaSettingsEvent.addUnavailableTime({
    required int agendaId,
    required DateTime startDate,
    required DateTime endDate,
    String? reason,
  }) = _AddUnavailableTime;
  
  const factory ArtistAgendaSettingsEvent.deleteUnavailableTime({
    required int agendaId,
    required int unavailableTimeId,
  }) = _DeleteUnavailableTime;
  
  const factory ArtistAgendaSettingsEvent.settingsLoaded(AgendaSettings settings) = _SettingsLoaded;
  
  const factory ArtistAgendaSettingsEvent.unavailableTimesLoaded(List<UnavailableTimeBlock> unavailableTimes) = _UnavailableTimesLoaded;
  
  const factory ArtistAgendaSettingsEvent.error(String message) = _Error;
}