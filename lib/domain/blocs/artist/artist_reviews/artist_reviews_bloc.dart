import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/review/dtos/get_reviews_response.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/models/review_reaction_map.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/models/reviewed_map.dart';
import 'package:inker_studio/domain/errors/remote/http_not_found.dart';
import 'package:inker_studio/domain/models/helpers/paginator.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/domain/services/review/review_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'artist_reviews_event.dart';
part 'artist_reviews_state.dart';
part 'artist_reviews_bloc.freezed.dart';

class ArtistReviewsBloc extends Bloc<ArtistReviewsEvent, ArtistReviewsState> {
  final ReviewService _reviewService;
  final LocalSessionService _localSessionService;
  final ScrollController scrollController = ScrollController();
  final Paginator _paginator = Paginator(limit: 5);
  int? _currentArtistId;

  ArtistReviewsBloc(
      {required ReviewService reviewService,
      required LocalSessionService localSessionService})
      : _reviewService = reviewService,
        _localSessionService = localSessionService,
        super(const ArtistReviewsInitial()) {
    on<ArtistReviewsEvent>((event, emit) {
      event.when(
        initial: () => _initial(emit),
        loadReviews: (artistId) => _loadReviews(artistId, emit),
        loadReviewsSuccess: (reviewReactions, customerReactions, reviews) =>
            _loadReviewsSuccess(
                reviewReactions, customerReactions, reviews, emit),
        loadReviewsError: (message) => _loadReviewsError(message, emit),
        loadMoreReviews: () => _loadMoreReviews(emit),
        loading: () => _loading(emit),
        noMoreData: () => _noMoreData(emit),
        reviewLiked: (int reviewId, int customerId) =>
            _updateReviewReaction(reviewId, customerId, true, false, emit),
        reviewDisliked: (int reviewId, int customerId) =>
            _updateReviewReaction(reviewId, customerId, false, false, emit),
        reviewLikeRemoved: (int reviewId, int customerId) =>
            _updateReviewReaction(reviewId, customerId, true, true, emit),
        reviewDislikedRemoved: (int reviewId, int customerId) =>
            _updateReviewReaction(reviewId, customerId, false, true, emit),
        switchReviewReaction: (int reviewId, int customerId, bool liked,
                bool disliked) =>
            _updateReviewReaction(reviewId, customerId, liked, disliked, emit,
                switchReaction: true),
      );
    });

    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (scrollController.position.pixels <=
        scrollController.position.maxScrollExtent - 10) {
      if (_paginator.hasMoreData()) {
        add(const ArtistReviewsEvent.loadMoreReviews());
      } else {
        add(const ArtistReviewsEvent.noMoreData());
      }
    }
  }

  void _initial(Emitter<ArtistReviewsState> emit) {
    emit(const ArtistReviewsInitial());
    _paginator.reset();
  }

  Future<void> _loadReviews(
      int artistId, Emitter<ArtistReviewsState> emit) async {
    _currentArtistId = artistId;

    if (state is ArtistReviewsLoaded || state is ArtistReviewsLoading) {
      return;
    }

    _paginator.reset();

    await _fetchReviews(artistId, emit);
  }

  Future<void> _fetchReviews(
    int artistId,
    Emitter<ArtistReviewsState> emit,
  ) async {
    add(const ArtistReviewsEvent.loading());

    final token = await _localSessionService.getSessionToken(UserType.customer);

    if (token == null) {
      add(const ArtistReviewsEvent.loadReviewsError('Token is null'));
      return;
    }

    try {
      final reviews = await _reviewService.getReviews(
        artistId: artistId,
        page: _paginator.page,
        limit: _paginator.limit,
        token: token,
      );

      _paginator.updateTotalPages(reviews.meta?.totalPages);

      final reviewReactions = {...state.reviewReactions};
      final customerReactions = {...state.customerReactions};

      _configureReviews(
        reviews: reviews.items,
        reviewReactions: reviewReactions,
        customerReactions: customerReactions,
      );

      add(
        ArtistReviewsEvent.loadReviewsSuccess(
          reviewReactions: reviewReactions,
          customerReactions: customerReactions,
          reviews: [...state.reviews, ...reviews.items ?? []],
        ),
      );

      _paginator.incrementPage();
    } catch (e, s) {
      dev.logError(e, s);
      add(
        ArtistReviewsEvent.loadReviewsError(e.toString()),
      );
    }
  }

  void _configureReviews({
    List<ReviewItem>? reviews,
    required Map<int, Reactions> reviewReactions,
    required Map<int, Reaction> customerReactions,
  }) {
    reviews?.forEach((review) {
      final id = review.id!;
      reviewReactions[id] = Reactions(
        likes: review.reviewReactions!.likes!,
        dislikes: review.reviewReactions!.dislikes!,
      );

      if (review.customerReactionDetail != null) {
        customerReactions[id] = Reaction(
          liked: review.customerReactionDetail?.liked ?? false,
          disliked: review.customerReactionDetail?.disliked ?? false,
        );
      }
    });
  }

  void _loadReviewsSuccess(
      Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      Emitter<ArtistReviewsState> emit) {
    emit(ArtistReviewsState.loaded(
      reviewReactions: reviewReactions,
      customerReactions: customerReactions,
      reviews: reviews,
    ));
  }

  Future<void> _loadMoreReviews(Emitter<ArtistReviewsState> emit) async {
    if (state is ArtistReviewsLoading) {
      return;
    }

    await _fetchReviews(_currentArtistId!, emit);
  }

  void _loadReviewsError(String message, Emitter<ArtistReviewsState> emit) {
    emit(ArtistReviewsState.error(
      customerReactions: state.customerReactions,
      reviewReactions: state.reviewReactions,
      reviews: state.reviews,
      message: message,
    ));
  }

  void _loading(Emitter<ArtistReviewsState> emit) {
    emit(ArtistReviewsState.loading(
      customerReactions: state.customerReactions,
      reviewReactions: state.reviewReactions,
      reviews: state.reviews,
    ));
  }

  void _noMoreData(Emitter<ArtistReviewsState> emit) {
    emit(ArtistReviewsState.loaded(
        reviewReactions: state.reviewReactions,
        customerReactions: state.customerReactions,
        reviews: state.reviews));
  }

  Future<void> _updateReviewReaction(int reviewId, int customerId, bool like,
      bool remove, Emitter<ArtistReviewsState> emit,
      {bool switchReaction = false}) async {
    Map<int, Reactions> reviewReactions = Map.from(state.reviewReactions);
    Map<int, Reaction> customerReactions = Map.from(state.customerReactions);

    _updateReactions(reviewReactions, customerReactions, reviewId, like, remove,
        switchReaction);
    _updateCustomerReaction(customerReactions, reviewId, like, remove,
        switchReaction: switchReaction);

    add(ArtistReviewsEvent.loadReviewsSuccess(
      reviewReactions: reviewReactions,
      customerReactions: customerReactions,
      reviews: state.reviews,
    ));

    try {
      final token = await _localSessionService.getActiveSessionToken() ?? '';

      await _reviewService.reactToReview(
          customerId: customerId, reviewId: reviewId, like: like, token: token);
    } on HttpNotFound {
      emit(ArtistReviewsState.error(
          customerReactions: state.customerReactions,
          reviewReactions: state.reviewReactions,
          reviews: state.reviews,
          message: 'Error while reacting to review'));
    } catch (e) {
      dev.log('Error: $e', '_updateReviewReaction');
      emit(ArtistReviewsState.error(
          customerReactions: state.customerReactions,
          reviewReactions: state.reviewReactions,
          reviews: state.reviews,
          message: 'Error while reacting to review'));
    }
  }

  void _updateReactions(
    Map<int, Reactions> reviewReactions,
    Map<int, Reaction> customerReactions,
    int reviewId,
    bool like,
    bool remove,
    bool switchReaction,
  ) {
    if (reviewReactions.containsKey(reviewId)) {
      Reactions reactions = reviewReactions[reviewId]!;
      int likeChange = 0;
      int dislikeChange = 0;

      if (customerReactions.containsKey(reviewId)) {
        Reaction currentReaction = customerReactions[reviewId]!;
        bool removeLike = remove && like;
        bool removeDislike = remove && !like;

        if (switchReaction) {
          likeChange = like ? 1 : -1;
          dislikeChange = like ? -1 : 1;
        } else {
          likeChange = like && !currentReaction.liked && !removeLike
              ? 1
              : (removeLike ? -1 : 0);
          dislikeChange = !like && !currentReaction.disliked && !removeDislike
              ? 1
              : (removeDislike ? -1 : 0);
        }
      } else {
        if (!switchReaction) {
          likeChange = like ? 1 : 0;
          dislikeChange = !like ? 1 : 0;
        }
      }

      reactions = Reactions(
        likes: reactions.likes + likeChange,
        dislikes: reactions.dislikes + dislikeChange,
      );
      reviewReactions[reviewId] = reactions;
    }
  }

  void _updateCustomerReaction(
    Map<int, Reaction> customerReactions,
    int reviewId,
    bool like,
    bool remove, {
    bool switchReaction = false,
  }) {
    if (customerReactions.containsKey(reviewId)) {
      Reaction currentReaction = customerReactions[reviewId]!;
      Reaction updatedReaction;

      if (switchReaction) {
        updatedReaction = Reaction(
          liked: like,
          disliked: !like,
        );
      } else {
        bool removeLike = remove && like;
        bool removeDislike = remove && !like;

        if (like && !currentReaction.liked) {
          updatedReaction = Reaction(
            liked: !removeLike,
            disliked: false,
          );
        } else if (!like && !currentReaction.disliked) {
          updatedReaction = Reaction(
            liked: false,
            disliked: !removeDislike,
          );
        } else {
          updatedReaction = Reaction(
            liked: currentReaction.liked && removeLike
                ? false
                : currentReaction.liked,
            disliked: currentReaction.disliked && removeDislike
                ? false
                : currentReaction.disliked,
          );
        }
      }

      customerReactions[reviewId] = updatedReaction;
    } else {
      if (!switchReaction) {
        customerReactions[reviewId] = Reaction(
          liked: like && !remove,
          disliked: !like && !remove,
        );
      }
    }
  }

  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();
  }
}
