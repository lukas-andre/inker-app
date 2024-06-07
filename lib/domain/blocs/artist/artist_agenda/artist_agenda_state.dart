part of 'artist_agenda_bloc.dart';

@freezed
class ArtistAgendaState with _$ArtistAgendaState {
  const factory ArtistAgendaState.initial() = ArtistAgendaStateInitial;

  const factory ArtistAgendaState.loading() = ArtistAgendaStateLoading;

  const factory ArtistAgendaState.loaded({
    required List<ArtistAgendaEventDetails> events,
  }) = ArtistAgendaStateLoaded;

  const factory ArtistAgendaState.error({
    required String message,
  }) = ArtistAgendaStateError;
}
