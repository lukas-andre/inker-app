part of 'artist_reviews_bloc.dart';

@freezed
class ArtistReviewsEvent with _$ArtistReviewsEvent {
  const factory ArtistReviewsEvent.initial() = _InitialEvent;

  const factory ArtistReviewsEvent.loading() = _LoadingEvent;

  const factory ArtistReviewsEvent.loadReviews(String artistId) =
      _LoadReviewsEvent;

  const factory ArtistReviewsEvent.loadReviewsSuccess(
      {required Map<String, Reactions> reviewReactions,
      required Map<String, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = _LoadReviewsSuccessEvent;

  const factory ArtistReviewsEvent.loadReviewsError(String message) =
      _LoadReviewsErrorEvent;

  const factory ArtistReviewsEvent.loadMoreReviews() = _LoadMoreReviewsEvent;

  const factory ArtistReviewsEvent.noMoreData() = _NoMoreDataEvent;

  const factory ArtistReviewsEvent.reviewLiked(
      {required String reviewId, required String customerId}) = _ReviewLiked;

  const factory ArtistReviewsEvent.reviewDisliked(
      {required String reviewId, required String customerId}) = _ReviewDisliked;

  const factory ArtistReviewsEvent.reviewLikeRemoved(
      {required String reviewId, required String customerId}) = _ReviewLikeRemoved;

  const factory ArtistReviewsEvent.reviewDislikedRemoved(
      {required String reviewId,
      required String customerId}) = _ReviewDislikedRemoved;

  const factory ArtistReviewsEvent.switchReviewReaction(
      {required String reviewId,
      required String customerId,
      required bool liked,
      required bool disliked}) = _SwitchReviewReaction;
}
