part of 'artist_works_cubit.dart';

@freezed
class ArtistWorksState with _$ArtistWorksState {
  const factory ArtistWorksState.initial() = _Initial;
  const factory ArtistWorksState.loading() = _Loading;
  const factory ArtistWorksState.loaded({
    required List<WorkItem> agendaWorks,
    required List<Work> portfolioWorks,
  }) = _Loaded;
  const factory ArtistWorksState.error({required String message}) = _Error;
}