part of 'draggable_artist_review_sheet_bloc.dart';

@freezed
class DraggableArtistReviewSheetEvent with _$DraggableArtistReviewSheetEvent {
  const factory DraggableArtistReviewSheetEvent.started() =
      _DraggableArtistReviewSheetStarted;
  const factory DraggableArtistReviewSheetEvent.loadReviews({
    required String artistId,
  }) = _DraggableLoadReviews;

  const factory DraggableArtistReviewSheetEvent.reviewsLoading() =
      _DraggableReviewsLoading;

  const factory DraggableArtistReviewSheetEvent.setReviewReactions(
      {required Map<String, Reactions> reviewReactions,
      required Map<String, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = _DraggableSetReviewReactions;

  const factory DraggableArtistReviewSheetEvent.draggableReviewLiked(
      {required String reviewId, required String customerId}) = _DraggableReviewLiked;

  const factory DraggableArtistReviewSheetEvent.draggableReviewDisliked(
      {required String reviewId,
      required String customerId}) = _DraggableReviewDisliked;

  const factory DraggableArtistReviewSheetEvent.draggableReviewLikeRemoved(
      {required String reviewId,
      required String customerId}) = _DraggableReviewLikeRemoved;

  const factory DraggableArtistReviewSheetEvent.reviewDislikedRemoved(
      {required String reviewId,
      required String customerId}) = _DraggableReviewDislikedRemoved;

  const factory DraggableArtistReviewSheetEvent.draggableSwitchReviewReaction(
      {required String reviewId,
      required String customerId,
      required bool liked,
      required bool disliked}) = _DraggableDraggableSwitchReviewReaction;

  const factory DraggableArtistReviewSheetEvent.draggableRefreshReviews() =
      _DraggableRefreshReviews;

  const factory DraggableArtistReviewSheetEvent.draggableRefreshReviewsError(
      {required String errorMessage}) = _DraggableRefreshReviewsError;

  const factory DraggableArtistReviewSheetEvent.draggableClearReviews() =
      _DraggableClearReviews;
}
