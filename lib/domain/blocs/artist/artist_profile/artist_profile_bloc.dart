import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_artist_works_response.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/domain/blocs/artist/artists_list/artists_list_bloc.dart';
import 'package:inker_studio/domain/models/helpers/paginator.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'artist_profile_event.dart';
part 'artist_profile_state.dart';
part 'artist_profile_bloc.freezed.dart';

class ArtistProfileBloc extends Bloc<ArtistProfileEvent, ArtistProfileState> {
  final ArtistsListBloc _artistsListBloc;
  final AgendaService _agendaService;
  final LocalSessionService _sessionService;
  final Paginator _paginator = Paginator(limit: 10);

  ArtistProfileBloc({
    required AgendaService agendaService,
    required LocalSessionService sessionService,
    required ArtistsListBloc artistsListBloc,
  })  : _agendaService = agendaService,
        _sessionService = sessionService,
        _artistsListBloc = artistsListBloc,
        super(const ArtistProfileStateInitial()) {
    on<ArtistProfileEvent>((event, emit) {
      event.when(
          started: () => _started(emit),
          setArtist: (Artist artist) => _setArtist(emit, artist),
          loadedWorks: (GetArtistWorksResponse works) =>
              _loadedWorks(emit, works),
          loadingWorks: () async => await _loadingWorks(emit),
          loadWorksError: (String message) => _loadWorksError(emit, message),
          follow: () => _follow(emit),
          unFollow: () => _unFollow(emit));
    });
  }

  void _loadWorksError(Emitter<ArtistProfileState> emit, String message) {
    emit(ArtistProfileStateLoadWorksError(
        artist: state.artist, message: message, works: state.works));
  }

  void _started(Emitter<ArtistProfileState> emit) {
    emit(const ArtistProfileStateInitial());
    _paginator.reset();
  }

  void _setArtist(Emitter<ArtistProfileState> emit, Artist artist) {
    emit(ArtistProfileState.configured(artist: artist));
    add(const ArtistProfileEvent.loadingWorks());
  }

  void _loadedWorks(
      Emitter<ArtistProfileState> emit, GetArtistWorksResponse works) {
    emit(ArtistProfileState.loadedWorks(artist: state.artist, works: works));
  }

  Future<void> _loadingWorks(Emitter<ArtistProfileState> emit) async {
    emit(ArtistProfileStateLoadingWorks(artist: state.artist));

    final token = await _sessionService.getActiveSessionToken();

    try {
      final works = await _agendaService.getArtistWorks(
        artistId: state.artist!.id!,
        page: _paginator.page,
        limit: _paginator.limit,
        token: token ?? '',
      );

      _paginator.updateTotalPages(works.meta!.totalPages!);

      add(ArtistProfileEvent.loadedWorks(works));

      _paginator.incrementPage();
    } catch (e, stacktrace) {
      dev.logError(e, stacktrace);
      add(ArtistProfileEvent.loadWorksError(e.toString()));
    }
  }

  void _follow(Emitter<ArtistProfileState> emit) {
    final followers =
        state.artist!.followers == null ? 0 : state.artist!.followers!;
    final updatedArtist = state.artist
        ?.copyWith(isFollowedByUser: true, followers: followers + 1);

    _artistsListBloc.updateArtist(updatedArtist!);

    emit(ArtistProfileStateFollowed(artist: updatedArtist, works: state.works));
  }

  void _unFollow(Emitter<ArtistProfileState> emit) {
    final updatedArtist = state.artist?.copyWith(
        isFollowedByUser: false, followers: state.artist!.followers! - 1);

    _artistsListBloc.updateArtist(updatedArtist!);

    emit(ArtistProfileStateUnFollowed(
        artist: updatedArtist, works: state.works));
  }
}
