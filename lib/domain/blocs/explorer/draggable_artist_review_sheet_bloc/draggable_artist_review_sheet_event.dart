part of 'draggable_artist_review_sheet_bloc.dart';

@freezed
class DraggableArtistReviewSheetEvent with _$DraggableArtistReviewSheetEvent {
  const factory DraggableArtistReviewSheetEvent.started() =
      _DraggableArtistReviewSheetStarted;
  const factory DraggableArtistReviewSheetEvent.loadReviews({
    required int artistId,
  }) = _DraggableLoadReviews;

  const factory DraggableArtistReviewSheetEvent.reviewsLoading() =
      _DraggableReviewsLoading;

  const factory DraggableArtistReviewSheetEvent.setReviewReactions(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = _DraggableSetReviewReactions;

  const factory DraggableArtistReviewSheetEvent.draggableReviewLiked(
      {required int reviewId, required int customerId}) = _DraggableReviewLiked;

  const factory DraggableArtistReviewSheetEvent.draggableReviewDisliked(
      {required int reviewId,
      required int customerId}) = _DraggableReviewDisliked;

  const factory DraggableArtistReviewSheetEvent.draggableReviewLikeRemoved(
      {required int reviewId,
      required int customerId}) = _DraggableReviewLikeRemoved;

  const factory DraggableArtistReviewSheetEvent.reviewDislikedRemoved(
      {required int reviewId,
      required int customerId}) = _DraggableReviewDislikedRemoved;

  const factory DraggableArtistReviewSheetEvent.draggableSwitchReviewReaction(
      {required int reviewId,
      required int customerId,
      required bool liked,
      required bool disliked}) = _DraggableDraggableSwitchReviewReaction;

  const factory DraggableArtistReviewSheetEvent.draggableRefreshReviews() =
      _DraggableRefreshReviews;

  const factory DraggableArtistReviewSheetEvent.draggableRefreshReviewsError(
      {required String errorMessage}) = _DraggableRefreshReviewsError;

  const factory DraggableArtistReviewSheetEvent.draggableClearReviews() =
      _DraggableClearReviews;
}
