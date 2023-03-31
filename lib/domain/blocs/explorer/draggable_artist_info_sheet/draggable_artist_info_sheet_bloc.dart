import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';

part 'draggable_artist_info_sheet_event.dart';
part 'draggable_artist_info_sheet_state.dart';
part 'draggable_artist_info_sheet_bloc.freezed.dart';

class DraggableArtistInfoSheetBloc
    extends Bloc<DraggableArtistInfoSheetEvent, DraggableArtistInfoSheetState> {
  final MapBloc _mapBloc;
  DraggableArtistInfoSheetBloc({required MapBloc mapBloc})
      : _mapBloc = mapBloc,
        super(const _Initial()) {
    _mapBloc.stream.listen((state) {
      if (state.selectedMarker == null || state.isDragSheetOpen == false) {
        add(const DraggableArtistInfoSheetEvent.changeView(
            DraggableArtistInfoSheetView.info));
      }
    });

    on<DraggableArtistInfoSheetEvent>((event, emit) {
      event.when(changeView: (view) => _changeView(view, emit));
    });
  }

  void _changeView(DraggableArtistInfoSheetView view,
      Emitter<DraggableArtistInfoSheetState> emit) {
    switch (view) {
      case DraggableArtistInfoSheetView.info:
        emit(const _InfoView());
        break;
      case DraggableArtistInfoSheetView.reviews:
        emit(const _ReviewsView());
        break;
    }
  }
}
