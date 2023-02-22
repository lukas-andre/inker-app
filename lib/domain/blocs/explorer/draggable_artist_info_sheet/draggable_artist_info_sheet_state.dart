part of 'draggable_artist_info_sheet_bloc.dart';

@freezed
class DraggableArtistInfoSheetState with _$DraggableArtistInfoSheetState {
  const factory DraggableArtistInfoSheetState.initial() = _Initial;

  const factory DraggableArtistInfoSheetState.infoView() = _InfoView;
  const factory DraggableArtistInfoSheetState.infoViewLoading() =
      _InfoViewLoading;
  const factory DraggableArtistInfoSheetState.infoViewError() = _InfoViewError;

  const factory DraggableArtistInfoSheetState.reviewsView() = _ReviewsView;
  const factory DraggableArtistInfoSheetState.reviewsViewLoading() =
      _ReviewsViewLoading;
  const factory DraggableArtistInfoSheetState.reviewsViewError() =
      _ReviewsViewError;
}
