part of 'artist_reviews_bloc.dart';

@freezed
class ArtistReviewsState with _$ArtistReviewsState {
  const factory ArtistReviewsState.initial(
      {@Default({}) Map<int, Reactions> reviewReactions,
      @Default({}) Map<int, Reaction> customerReactions,
      @Default([]) List<ReviewItem> reviews}) = ArtistReviewsInitial;

  const factory ArtistReviewsState.loading(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ArtistReviewsLoading;

  const factory ArtistReviewsState.loaded(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ArtistReviewsLoaded;

  const factory ArtistReviewsState.error(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews,
      required String message}) = ArtistReviewsError;

  const factory ArtistReviewsState.noData(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ArtistReviewsNoData;

  const factory ArtistReviewsState.loadedMore(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ArtistReviewsLoadedMore;

  const factory ArtistReviewsState.noMoreData(
      {required Map<int, Reactions> reviewReactions,
      required Map<int, Reaction> customerReactions,
      required List<ReviewItem> reviews}) = ArtistReviewsNoMoreData;
}
