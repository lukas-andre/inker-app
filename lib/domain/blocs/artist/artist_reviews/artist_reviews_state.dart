part of 'artist_reviews_bloc.dart';

@freezed
class ArtistReviewsState with _$ArtistReviewsState {
  const factory ArtistReviewsState.initial(
      {@Default({}) Map<String, Reactions> reviewReactions,
      @Default({}) Map<String, Reaction> customerReactions,
      @Default([]) List<ReviewItem> reviews}) = ArtistReviewsInitial;

  const factory ArtistReviewsState.loading(
      {required Map<String, Reactions> reviewReactions,
      required Map<String, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ArtistReviewsLoading;

  const factory ArtistReviewsState.loaded(
      {required Map<String, Reactions> reviewReactions,
      required Map<String, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ArtistReviewsLoaded;

  const factory ArtistReviewsState.error(
      {required Map<String, Reactions> reviewReactions,
      required Map<String, Reaction> customerReactions,
      required List<ReviewItem> reviews,
      required String message}) = ArtistReviewsError;

  const factory ArtistReviewsState.noData(
      {required Map<String, Reactions> reviewReactions,
      required Map<String, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ArtistReviewsNoData;

  const factory ArtistReviewsState.loadedMore(
      {required Map<String, Reactions> reviewReactions,
      required Map<String, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ArtistReviewsLoadedMore;

  const factory ArtistReviewsState.noMoreData(
      {required Map<String, Reactions> reviewReactions,
      required Map<String, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ArtistReviewsNoMoreData;
}
