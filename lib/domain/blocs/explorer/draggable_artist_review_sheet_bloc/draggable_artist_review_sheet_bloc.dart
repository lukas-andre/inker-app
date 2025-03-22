import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/review/dtos/get_reviews_response.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/models/review_reaction_map.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/models/reviewed_map.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/errors/remote/http_not_found.dart';
import 'package:inker_studio/domain/models/helpers/paginator.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/domain/services/review/review_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'draggable_artist_review_sheet_event.dart';
part 'draggable_artist_review_sheet_state.dart';
part 'draggable_artist_review_sheet_bloc.freezed.dart';

class DraggableArtistReviewSheetBloc extends Bloc<
    DraggableArtistReviewSheetEvent, DraggableArtistReviewSheetState> {
  final ReviewService _reviewService;
  final LocalSessionService _localSessionService;
  final Stream<MapState> _mapBlocStream;

  final Paginator _paginator = Paginator(limit: 3);

  int? _currentArtistId;

  DraggableArtistReviewSheetBloc(
      {required MapBloc mapBloc,
      required ReviewService reviewService,
      required LocalSessionService localSessionService})
      : _reviewService = reviewService,
        _localSessionService = localSessionService,
        _mapBlocStream = mapBloc.stream,
        super(const DraggableArtistReviewSheetStateInitial()) {
    _mapBlocStream.listen((mapBlocsState) {
      if (state is ReviewSheetConfigured &&
          _currentArtistId != mapBloc.selectedArtist!.id) {
        add(const DraggableArtistReviewSheetEvent.draggableClearReviews());
        add(DraggableArtistReviewSheetEvent.loadReviews(
            artistId: mapBloc.selectedArtist!.id));
      }
    });

    on<DraggableArtistReviewSheetEvent>((event, emit) async {
      event.when(
        started: (() => {}),
        loadReviews: (artistId) => _loadReviews(artistId, emit),
        draggableClearReviews: () => _configureReviewSheet(emit),
        draggableRefreshReviews: () => _refreshReviews(emit),
        draggableReviewLiked: (reviewId, customerId) =>
            _updateReviewReaction(reviewId, customerId, true, false, emit),
        draggableReviewDisliked: (reviewId, customerId) =>
            _updateReviewReaction(reviewId, customerId, false, false, emit),
        draggableReviewLikeRemoved: (int reviewId, int customerId) =>
            _updateReviewReaction(reviewId, customerId, true, true, emit),
        reviewDislikedRemoved: (int reviewId, int customerId) =>
            _updateReviewReaction(reviewId, customerId, false, true, emit),
        draggableSwitchReviewReaction: (int reviewId, int customerId,
                bool liked, bool disliked) =>
            _updateReviewReaction(reviewId, customerId, liked, disliked, emit,
                switchReaction: true),
        reviewsLoading: () => emit(ReviewsLoading(
            reviewReactions: state.reviewReactions,
            customerReactions: state.customerReactions,
            reviews: state.reviews)),
        setReviewReactions: (reviewReactions, customerReactions, reviews) =>
            emit(ReviewSheetConfigured(
                reviewReactions: reviewReactions,
                customerReactions: customerReactions,
                reviews: reviews)),
        draggableRefreshReviewsError: (errorMessage) => emit(
            DraggableArtistReviewSheetState.refreshReviewsError(
                reviewReactions: state.reviewReactions,
                customerReactions: state.customerReactions,
                reviews: state.reviews,
                errorMessage: errorMessage)),
      );
    });
  }

  Future<void> _configureReviewSheet(
      Emitter<DraggableArtistReviewSheetState> emit) async {
    _paginator.reset();
    emit(const DraggableArtistReviewSheetStateInitial());
  }

  Future<void> _loadReviews(
    int artistId,
    Emitter<DraggableArtistReviewSheetState> emit,
  ) async {
    _currentArtistId = artistId;

    if (state is ReviewSheetConfigured || state is ReviewsLoading) {
      return;
    }

    _paginator.reset();

    await _fetchReviews(emit, artistId);
  }

  Future<void> _refreshReviews(
    Emitter<DraggableArtistReviewSheetState> emit,
  ) async {
    if (_paginator.shouldSkip() || state is ReviewsLoading) {
      return;
    }

    await _fetchReviews(emit, _currentArtistId);
  }

  Future<void> _fetchReviews(
    Emitter<DraggableArtistReviewSheetState> emit,
    int? artistId,
  ) async {
    if (artistId == null) {
      add(const DraggableArtistReviewSheetEvent.draggableRefreshReviewsError(
          errorMessage: 'Artist id is null'));
    }

    add(const DraggableArtistReviewSheetEvent.reviewsLoading());

    await Future.delayed(const Duration(milliseconds: 200));

    final token = await _localSessionService.getSessionToken(UserType.customer);

    if (token == null) {
      add(const DraggableArtistReviewSheetEvent.draggableRefreshReviewsError(
          errorMessage: 'Token is null'));
      return;
    }

    try {
      final reviews = await _reviewService.getReviews(
        artistId: artistId!,
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
        DraggableArtistReviewSheetEvent.setReviewReactions(
          reviewReactions: reviewReactions,
          customerReactions: customerReactions,
          reviews: [...state.reviews, ...reviews.items ?? []],
        ),
      );

      _paginator.incrementPage();
    } catch (e) {
      add(
        DraggableArtistReviewSheetEvent.draggableRefreshReviewsError(
          errorMessage: e.toString(),
        ),
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

  Future<void> _updateReviewReaction(int reviewId, int customerId, bool like,
      bool remove, Emitter<DraggableArtistReviewSheetState> emit,
      {bool switchReaction = false}) async {
    Map<int, Reactions> reviewReactions = Map.from(state.reviewReactions);
    Map<int, Reaction> customerReactions = Map.from(state.customerReactions);

    _updateReactions(reviewReactions, customerReactions, reviewId, like, remove,
        switchReaction);
    _updateCustomerReaction(customerReactions, reviewId, like, remove,
        switchReaction: switchReaction);
    emit(ReviewReaction(
      reviewReactions: reviewReactions,
      customerReactions: customerReactions,
      reviews: state.reviews,
    ));

    try {
      final token = await _localSessionService.getActiveSessionToken() ?? '';

      await _reviewService.reactToReview(
          customerId: customerId, reviewId: reviewId, like: like, token: token);
    } on HttpNotFound {
      _emitReactionError(emit, reviewReactions, customerReactions,
          'Error while reacting to review');
    } catch (e) {
      dev.log('Error: $e', '_updateReviewReaction');
      _emitReactionError(emit, reviewReactions, customerReactions,
          'Error while reacting to review');
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

  void _emitReactionError(
      Emitter<DraggableArtistReviewSheetState> emit,
      Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      String errorMessage) {
    emit(ReviewReactionError(
        reviewReactions: reviewReactions,
        errorMessage: errorMessage,
        reviews: state.reviews,
        customerReactions: customerReactions));
  }
}
