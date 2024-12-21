import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/artist/dtos/search_artist.dto.dart';
import 'package:inker_studio/data/api/artist/dtos/search_artist_response.dto.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';

part 'search_artists_event.dart';
part 'search_artists_state.dart';
part 'search_artists_bloc.freezed.dart';

class SearchArtistsBloc extends Bloc<SearchArtistsEvent, SearchArtistsState> {
  final ArtistService _artistService;

  SearchArtistsBloc({
    required ArtistService artistService,
  }) : _artistService = artistService,
       super(const SearchArtistsState.initial()) {
    on<SearchArtistsEvent>((event, emit) async {
      await event.when(
        search: (String query, int page, double minRating) async {
          try {
            emit(const SearchArtistsState.loading());
            
            final searchParams = SearchArtistDto(
              query: query,
              page: page,
              limit: 20,
              minRating: minRating,
            );
            
            final result = await _artistService.searchArtists(searchParams);
            
            emit(SearchArtistsState.success(
              artists: result.artists,
              metadata: result.metadata,
              currentQuery: query,
            ));
          } catch (e) {
            emit(SearchArtistsState.error(message: e.toString()));
          }
        },
        clear: () {
          emit(const SearchArtistsState.initial());
        },
      );
    });
  }
}

// s