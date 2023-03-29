part of 'draggable_artist_review_sheet_bloc.dart';

@freezed
class DraggableArtistReviewSheetEvent with _$DraggableArtistReviewSheetEvent {
  const factory DraggableArtistReviewSheetEvent.started() = _Started;
  const factory DraggableArtistReviewSheetEvent.loadReviews({
    required int artistId,
  }) = _LoadReviews;

  const factory DraggableArtistReviewSheetEvent.reviewsLoading() =
      _ReviewsLoading;

  const factory DraggableArtistReviewSheetEvent.setReviewReactions(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = _SetReviewReactions;

  const factory DraggableArtistReviewSheetEvent.reviewLiked(
      {required int reviewId, required int customerId}) = _ReviewLiked;

  const factory DraggableArtistReviewSheetEvent.reviewDisliked(
      {required int reviewId, required int customerId}) = _ReviewDisliked;

  const factory DraggableArtistReviewSheetEvent.reviewLikeRemoved(
      {required int reviewId, required int customerId}) = _ReviewLikeRemoved;

  const factory DraggableArtistReviewSheetEvent.reviewDislikedRemoved(
      {required int reviewId,
      required int customerId}) = _ReviewDislikedRemoved;

  const factory DraggableArtistReviewSheetEvent.switchReviewReaction(
      {required int reviewId,
      required int customerId,
      required bool liked,
      required bool disliked}) = _SwitchReviewReaction;

  const factory DraggableArtistReviewSheetEvent.refreshReviews() =
      _RefreshReviews;

  const factory DraggableArtistReviewSheetEvent.refreshReviewsError(
      {required String errorMessage}) = _RefreshReviewsError;

  const factory DraggableArtistReviewSheetEvent.clearReviews() = _ClearReviews;
}
