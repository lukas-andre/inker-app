import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inker_studio/domain/blocs/artist/artist_app/models/artist_page_nav_bar_icons.dart';

part 'artist_app_event.dart';
part 'artist_app_state.dart';

class ArtistAppBloc extends Bloc<ArtistAppEvent, ArtistAppState> {
  ArtistAppBloc() : super(const ArtistAppState()) {
    on<ArtistAppPageIndexChanged>(_mapArtistAppPageIndexChanged);
  }

  Future<void> _mapArtistAppPageIndexChanged(
      ArtistAppPageIndexChanged event, Emitter<ArtistAppState> emit) async {
    if (event.index != state.index) {
      emit(state.copyWith(index: event.index));
    }
  }
}
