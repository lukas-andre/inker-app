part of 'artist_agenda_settings_bloc.dart';

@freezed
class ArtistAgendaSettingsState with _$ArtistAgendaSettingsState {
  const factory ArtistAgendaSettingsState.initial() = ArtistAgendaSettingsStateInitial;
  
  const factory ArtistAgendaSettingsState.loading() = ArtistAgendaSettingsStateLoading;
  
  const factory ArtistAgendaSettingsState.loaded({
    required AgendaSettings settings,
    required List<UnavailableTimeBlock> unavailableTimes,
    required bool isSaving,
    required bool isLoadingUnavailableTimes,
  }) = ArtistAgendaSettingsStateLoaded;
  
  const factory ArtistAgendaSettingsState.error(String message) = ArtistAgendaSettingsStateError;
}