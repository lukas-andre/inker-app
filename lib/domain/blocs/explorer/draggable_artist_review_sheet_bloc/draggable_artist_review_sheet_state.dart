part of 'draggable_artist_review_sheet_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class DraggableArtistReviewSheetState with _$DraggableArtistReviewSheetState {
  const factory DraggableArtistReviewSheetState.initial(
          {@Default({}) Map<int, Reactions> reviewReactions,
          @Default({}) Map<int, Reaction> customerReactions,
          @Default([]) List<ReviewItem> reviews}) =
      DraggableArtistReviewSheetStateInitial;

  const factory DraggableArtistReviewSheetState.configured(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ReviewSheetConfigured;

  const factory DraggableArtistReviewSheetState.likeReview(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = LikeReview;

  const factory DraggableArtistReviewSheetState.likeReviewError(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews,
      required String errorMessage}) = LikeReviewError;

  const factory DraggableArtistReviewSheetState.dislikeReview(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = DislikeReview;

  const factory DraggableArtistReviewSheetState.dislikeReviewError(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews,
      required String errorMessage}) = DislikeReviewError;

  const factory DraggableArtistReviewSheetState.likeRemoved(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = LikeRemoved;

  const factory DraggableArtistReviewSheetState.likeRemovedError(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews,
      required String errorMessage}) = LikeRemovedError;

  const factory DraggableArtistReviewSheetState.dislikeRemoved(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = DislikeRemoved;

  const factory DraggableArtistReviewSheetState.dislikeRemovedError(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews,
      required String errorMessage}) = DislikeRemovedError;

  const factory DraggableArtistReviewSheetState.switchReviewReaction({
    required Map<int, Reactions> reviewReactions,
    required Map<int, Reaction> customerReactions,
    required List<ReviewItem> reviews,
  }) = SwitchReviewReaction;

  const factory DraggableArtistReviewSheetState.switchReviewReactionError({
    required Map<int, Reactions> reviewReactions,
    required Map<int, Reaction> customerReactions,
    required List<ReviewItem> reviews,
    required String errorMessage,
  }) = SwitchReviewReactionError;

  const factory DraggableArtistReviewSheetState.refreshReviews({
    required Map<int, Reactions> reviewReactions,
    required Map<int, Reaction> customerReactions,
    required List<ReviewItem> reviews,
  }) = RefreshReviews;

  const factory DraggableArtistReviewSheetState.refreshReviewsError({
    required Map<int, Reactions> reviewReactions,
    required Map<int, Reaction> customerReactions,
    required List<ReviewItem> reviews,
    required String errorMessage,
  }) = RefreshReviewsError;

  const factory DraggableArtistReviewSheetState.reviewsLoading({
    required Map<int, Reactions> reviewReactions,
    required Map<int, Reaction> customerReactions,
    required List<ReviewItem> reviews,
  }) = ReviewsLoading;

  const factory DraggableArtistReviewSheetState.reviewsLoaded({
    required Map<int, Reactions> reviewReactions,
    required Map<int, Reaction> customerReactions,
    required List<ReviewItem> reviews,
  }) = ReviewsLoaded;

  const factory DraggableArtistReviewSheetState.clearedReviews({
    required Map<int, Reactions> reviewReactions,
    required Map<int, Reaction> customerReactions,
    required List<ReviewItem> reviews,
  }) = ClearedReviews;
}
