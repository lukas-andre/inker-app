part of 'artist_agenda_event_detail_bloc.dart';

@freezed
class ArtistAgendaEventDetailState with _$ArtistAgendaEventDetailState {
  const factory ArtistAgendaEventDetailState.initial() = _Initial;
  const factory ArtistAgendaEventDetailState.loading() = _Loading;
  const factory ArtistAgendaEventDetailState.loaded(
      AgendaEventDetailResponse eventDetail) = _Loaded;
  const factory ArtistAgendaEventDetailState.error(String message) = _Error;
}
