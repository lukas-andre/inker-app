part of 'draggable_artist_info_sheet_bloc.dart';

enum DraggableArtistInfoSheetView { info, reviews }

@freezed
class DraggableArtistInfoSheetEvent with _$DraggableArtistInfoSheetEvent {
  const factory DraggableArtistInfoSheetEvent.changeView(
      DraggableArtistInfoSheetView view) = _ChangeView;
}
