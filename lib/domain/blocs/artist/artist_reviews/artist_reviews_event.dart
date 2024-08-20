part of 'artist_reviews_bloc.dart';

@freezed
class ArtistReviewsEvent with _$ArtistReviewsEvent {
  const factory ArtistReviewsEvent.initial() = _InitialEvent;

  const factory ArtistReviewsEvent.loading() = _LoadingEvent;

  const factory ArtistReviewsEvent.loadReviews(int artistId) =
      _LoadReviewsEvent;

  const factory ArtistReviewsEvent.loadReviewsSuccess(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = _LoadReviewsSuccessEvent;

  const factory ArtistReviewsEvent.loadReviewsError(String message) =
      _LoadReviewsErrorEvent;

  const factory ArtistReviewsEvent.loadMoreReviews() = _LoadMoreReviewsEvent;

  const factory ArtistReviewsEvent.noMoreData() = _NoMoreDataEvent;

  const factory ArtistReviewsEvent.reviewLiked(
      {required int reviewId, required int customerId}) = _ReviewLiked;

  const factory ArtistReviewsEvent.reviewDisliked(
      {required int reviewId, required int customerId}) = _ReviewDisliked;

  const factory ArtistReviewsEvent.reviewLikeRemoved(
      {required int reviewId, required int customerId}) = _ReviewLikeRemoved;

  const factory ArtistReviewsEvent.reviewDislikedRemoved(
      {required int reviewId,
      required int customerId}) = _ReviewDislikedRemoved;

  const factory ArtistReviewsEvent.switchReviewReaction(
      {required int reviewId,
      required int customerId,
      required bool liked,
      required bool disliked}) = _SwitchReviewReaction;
}
