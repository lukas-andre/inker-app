import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/data/api/review/dtos/get_reviews_response.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/models/review_reaction_map.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/models/reviewed_map.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/errors/remote/http_not_found.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/domain/services/review/review_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'draggable_artist_review_sheet_event.dart';
part 'draggable_artist_review_sheet_state.dart';
part 'draggable_artist_review_sheet_bloc.freezed.dart';

class DraggableArtistReviewSheetBloc extends Bloc<
    DraggableArtistReviewSheetEvent, DraggableArtistReviewSheetState> {
  final MapBloc _mapBloc;
  final ReviewService _reviewService;
  final LocalSessionService _localSessionService;
  final Stream<MapState> _mapBlocStream;

  final int _limit = 3;
  int _page = 1;
  int? _totalPages;
  int? _currentArtistId;

  DraggableArtistReviewSheetBloc(
      {required MapBloc mapBloc,
      required ReviewService reviewService,
      required LocalSessionService localSessionService})
      : _mapBloc = mapBloc,
        _reviewService = reviewService,
        _localSessionService = localSessionService,
        _mapBlocStream = mapBloc.stream,
        super(const DraggableArtistReviewSheetStateInitial()) {
    _mapBlocStream.listen((mapBlocsState) {
      if (state is ReviewSheetConfigured &&
          _currentArtistId != mapBloc.selectedArtist!.id) {
        add(const DraggableArtistReviewSheetEvent.clearReviews());
        add(DraggableArtistReviewSheetEvent.loadReviews(
            artistId: mapBloc.selectedArtist!.id!));
      }
    });

    on<DraggableArtistReviewSheetEvent>((event, emit) async {
      event.when(
        started: (() => {}),
        loadReviews: (artistId) => _loadReviews(artistId, emit),
        reviewsLoading: () => emit(ReviewsLoading(
            reviewReactions: state.reviewReactions,
            customerReactions: state.customerReactions,
            reviews: state.reviews)),
        clearReviews: () => _configureReviewSheet(emit),
        refreshReviews: () => _refreshReviews(emit),
        setReviewReactions: (reviewReactions, customerReactions, reviews) {
          emit(ReviewSheetConfigured(
              reviewReactions: reviewReactions,
              customerReactions: customerReactions,
              reviews: reviews));
        },
        reviewLiked: (reviewId, customerId) =>
            _reviewLiked(reviewId, customerId, emit),
        reviewDisliked: (reviewId, customerId) =>
            _reviewDisliked(reviewId, customerId, emit),
        reviewLikeRemoved: (int reviewId, int customerId) {
          _reviewLikeRemoved(reviewId, customerId, emit);
        },
        reviewDislikedRemoved: (int reviewId, int customerId) {
          _reviewDislikedRemoved(reviewId, customerId, emit);
        },
        switchReviewReaction:
            (int reviewId, int customerId, bool liked, bool disliked) {
          _switchReviewReaction(reviewId, customerId, liked, disliked, emit);
        },
        refreshReviewsError: (errorMessage) => emit(
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
    _page = 1;
    _totalPages = null;
    emit(const DraggableArtistReviewSheetStateInitial());
  }

  Future<void> _loadReviews(
      int artistId, Emitter<DraggableArtistReviewSheetState> emit) async {
    _currentArtistId = artistId;

    if (state is ReviewSheetConfigured) {
      return;
    }

    if (state is ReviewsLoading) {
      return;
    }

    add(const DraggableArtistReviewSheetEvent.reviewsLoading());

    _page = 1;
    _totalPages = null;

    final token = await _localSessionService.getSessionToken(UserType.customer);

    if (token == null) {
      add(const DraggableArtistReviewSheetEvent.refreshReviewsError(
          errorMessage: 'Token is null'));
      return;
    }

    try {
      final reviews = await _reviewService.getReviews(
          artistId: artistId, page: _page, limit: _limit, token: token);

      _totalPages ??= reviews.meta?.totalPages;

      final reviewsMap = <int, Reactions>{};
      final customerReactions = <int, Reaction>{};

      reviews.items?.forEach((review) {
        reviewsMap[review.id!] = Reactions(
            likes: review.reviewReactions!.likes!,
            dislikes: review.reviewReactions!.dislikes!);

        if (review.customerReactionDetail != null) {
          customerReactions[review.id!] = Reaction(
            liked: review.customerReactionDetail?.liked ?? false,
            disliked: review.customerReactionDetail?.disliked ?? false,
          );
        }
      });

      add(DraggableArtistReviewSheetEvent.setReviewReactions(
          reviewReactions: reviewsMap,
          customerReactions: customerReactions,
          reviews: reviews.items ?? []));

      _page++;
    } catch (e) {
      add(DraggableArtistReviewSheetEvent.refreshReviewsError(
          errorMessage: e.toString()));
    }
  }

  Future<void> _refreshReviews(
      Emitter<DraggableArtistReviewSheetState> emit) async {
    if (_totalPages != null && _page > _totalPages!) {
      return;
    }

    if (state is ReviewsLoading) {
      return;
    }

    add(const DraggableArtistReviewSheetEvent.reviewsLoading());

    // This is a hack to avoid multiple requests
    await Future.delayed(const Duration(milliseconds: 300));

    final token = await _localSessionService.getSessionToken(UserType.customer);

    if (token == null) {
      emit(RefreshReviewsError(
          errorMessage: 'Token is null',
          reviewReactions: state.reviewReactions,
          customerReactions: state.customerReactions,
          reviews: state.reviews));
      return;
    }

    final artistId = _mapBloc.selectedArtist?.id;

    if (artistId == null) {
      emit(RefreshReviewsError(
          errorMessage: 'Artist id is null',
          reviewReactions: state.reviewReactions,
          customerReactions: state.customerReactions,
          reviews: state.reviews));
      return;
    }

    try {
      final reviews = await _reviewService.getReviews(
          artistId: artistId, page: _page, limit: _limit, token: token);

      _totalPages ??= reviews.meta?.totalPages;

      final reviewsMap = <int, Reactions>{};
      final customerReactions = <int, Reaction>{};

      reviews.items?.forEach((review) {
        reviewsMap[review.id!] = Reactions(
            likes: review.reviewReactions!.likes!,
            dislikes: review.reviewReactions!.dislikes!);

        if (review.customerReactionDetail != null) {
          customerReactions[review.id!] = Reaction(
            liked: review.customerReactionDetail?.liked ?? false,
            disliked: review.customerReactionDetail?.disliked ?? false,
          );
        }
      });

      add(DraggableArtistReviewSheetEvent.setReviewReactions(
          reviewReactions: {...state.reviewReactions, ...reviewsMap},
          customerReactions: {...state.customerReactions, ...customerReactions},
          reviews: [...state.reviews, ...reviews.items ?? []]));

      _page++;
    } catch (e) {
      add(DraggableArtistReviewSheetEvent.refreshReviewsError(
          errorMessage: e.toString()));
    }
  }

  Future<void> _reviewLiked(int reviewId, int customerId,
      Emitter<DraggableArtistReviewSheetState> emit) async {
    Map<int, Reactions> reviewReactions = Map.from(state.reviewReactions);
    if (reviewReactions.containsKey(reviewId)) {
      Reactions reactions = reviewReactions[reviewId]!;
      reactions =
          Reactions(likes: reactions.likes + 1, dislikes: reactions.dislikes);
      reviewReactions[reviewId] = reactions;
    }

    Map<int, Reaction> customerReaction = Map.from(state.customerReactions);
    if (customerReaction.containsKey(reviewId)) {
      Reaction reaction = customerReaction[reviewId]!;
      reaction = Reaction(liked: true, disliked: false);
      customerReaction[reviewId] = reaction;
    } else {
      customerReaction[reviewId] = Reaction(liked: true, disliked: false);
    }

    // This is for update the UI immediately
    emit(LikeReview(
        reviewReactions: reviewReactions,
        customerReactions: customerReaction,
        reviews: state.reviews));

    String? errorsMessage;

    try {
      final token = await _localSessionService.getActiveSessionToken() ?? '';

      await _reviewService.reactToReview(
          customerId: customerId, reviewId: reviewId, like: true, token: token);
    } on HttpNotFound {
      errorsMessage = 'Error while reacting to review';
    } catch (e) {
      errorsMessage = 'Error while reacting to review';
      dev.log('Error: $e', '_reviewLiked');
    }

    if (errorsMessage != null) {
      emit(LikeReviewError(
          reviewReactions: reviewReactions,
          errorMessage: errorsMessage,
          reviews: state.reviews,
          customerReactions: state.customerReactions));
    }
  }

  Future<void> _reviewLikeRemoved(int reviewId, int customerId,
      Emitter<DraggableArtistReviewSheetState> emit) async {
    Map<int, Reactions> reviewReactions = Map.from(state.reviewReactions);
    if (reviewReactions.containsKey(reviewId)) {
      Reactions reactions = reviewReactions[reviewId]!;
      reactions =
          Reactions(likes: reactions.likes - 1, dislikes: reactions.dislikes);
      reviewReactions[reviewId] = reactions;
    }

    Map<int, Reaction> customerReaction = Map.from(state.customerReactions);
    if (customerReaction.containsKey(reviewId)) {
      Reaction reaction = customerReaction[reviewId]!;
      reaction = Reaction(liked: false, disliked: reaction.disliked);
      customerReaction[reviewId] = reaction;
    }

    String? errorsMessage;

    // This is for update the UI immediately
    emit(LikeRemoved(
        reviews: state.reviews,
        reviewReactions: reviewReactions,
        customerReactions: customerReaction));

    try {
      final token = await _localSessionService.getActiveSessionToken() ?? '';

      await _reviewService.reactToReview(
          customerId: customerId, reviewId: reviewId, like: true, token: token);
    } on HttpNotFound {
      errorsMessage = 'Error while reacting to review';
    } catch (e) {
      errorsMessage = 'Error while reacting to review';
      dev.log('Error: $e', '_reviewLikeRemoved');
    }

    if (errorsMessage != null) {
      emit(LikeRemovedError(
          reviews: state.reviews,
          reviewReactions: reviewReactions,
          errorMessage: errorsMessage,
          customerReactions: state.customerReactions));
    }
  }

  Future<void> _reviewDisliked(int reviewId, int customerId,
      Emitter<DraggableArtistReviewSheetState> emit) async {
    Map<int, Reactions> reviewReactions = Map.from(state.reviewReactions);
    if (reviewReactions.containsKey(reviewId)) {
      Reactions reactions = reviewReactions[reviewId]!;
      reactions =
          Reactions(likes: reactions.likes, dislikes: reactions.dislikes + 1);
      reviewReactions[reviewId] = reactions;
    }

    Map<int, Reaction> customerReaction = Map.from(state.customerReactions);
    if (customerReaction.containsKey(reviewId)) {
      Reaction reaction = customerReaction[reviewId]!;
      reaction = Reaction(liked: false, disliked: true);
      customerReaction[reviewId] = reaction;
    } else {
      customerReaction[reviewId] = Reaction(liked: false, disliked: true);
    }

    // This is for update the UI immediately
    emit(DislikeReview(
        reviews: state.reviews,
        reviewReactions: reviewReactions,
        customerReactions: customerReaction));

    String? errorsMessage;

    try {
      final token = await _localSessionService.getActiveSessionToken() ?? '';

      await _reviewService.reactToReview(
          customerId: customerId,
          reviewId: reviewId,
          like: false,
          token: token);
    } on HttpNotFound {
      errorsMessage = 'Error while reacting to review';
    } catch (e) {
      errorsMessage = 'Error while reacting to review';
      dev.log('Error: $e', '_reviewLiked');
    }

    if (errorsMessage != null) {
      emit(DislikeReviewError(
          reviews: state.reviews,
          reviewReactions: reviewReactions,
          errorMessage: errorsMessage,
          customerReactions: state.customerReactions));
    }
  }

  Future<void> _reviewDislikedRemoved(int reviewId, int customerId,
      Emitter<DraggableArtistReviewSheetState> emit) async {
    Map<int, Reactions> reviewReactions = Map.from(state.reviewReactions);
    if (reviewReactions.containsKey(reviewId)) {
      Reactions reactions = reviewReactions[reviewId]!;
      reactions =
          Reactions(likes: reactions.likes, dislikes: reactions.dislikes - 1);
      reviewReactions[reviewId] = reactions;
    }

    Map<int, Reaction> customerReaction = Map.from(state.customerReactions);
    if (customerReaction.containsKey(reviewId)) {
      Reaction reaction = customerReaction[reviewId]!;
      reaction = Reaction(liked: reaction.liked, disliked: false);
      customerReaction[reviewId] = reaction;
    }

    String? errorsMessage;

    // This is for update the UI immediately
    emit(DislikeRemoved(
        reviews: state.reviews,
        reviewReactions: reviewReactions,
        customerReactions: customerReaction));

    try {
      final token = await _localSessionService.getActiveSessionToken() ?? '';

      await _reviewService.reactToReview(
          customerId: customerId,
          reviewId: reviewId,
          like: false,
          token: token);
    } on HttpNotFound {
      errorsMessage = 'Error while reacting to review';
    } catch (e) {
      errorsMessage = 'Error while reacting to review';
      dev.log('Error: $e', '_reviewLikeRemoved');
    }

    if (errorsMessage != null) {
      emit(DislikeRemovedError(
          reviews: state.reviews,
          reviewReactions: reviewReactions,
          errorMessage: errorsMessage,
          customerReactions: state.customerReactions));
    }
  }

  _switchReviewReaction(int reviewId, int customerId, bool liked, bool disliked,
      Emitter<DraggableArtistReviewSheetState> emit) async {
    Map<int, Reactions> reviewReactions = Map.from(state.reviewReactions);

    if (liked) {
      if (reviewReactions.containsKey(reviewId)) {
        Reactions reactions = reviewReactions[reviewId]!;
        reactions = Reactions(
            likes: reactions.likes + 1, dislikes: reactions.dislikes - 1);
        reviewReactions[reviewId] = reactions;
      }
    }

    if (disliked) {
      if (reviewReactions.containsKey(reviewId)) {
        Reactions reactions = reviewReactions[reviewId]!;
        reactions = Reactions(
            likes: reactions.likes - 1, dislikes: reactions.dislikes + 1);
        reviewReactions[reviewId] = reactions;
      }
    }

    Map<int, Reaction> customerReaction = Map.from(state.customerReactions);
    if (customerReaction.containsKey(reviewId)) {
      Reaction reaction = customerReaction[reviewId]!;
      reaction = Reaction(liked: liked, disliked: disliked);
      customerReaction[reviewId] = reaction;
    }

    String? errorsMessage;

    // This is for update the UI immediately
    emit(SwitchReviewReaction(
      reviews: state.reviews,
      reviewReactions: reviewReactions,
      customerReactions: customerReaction,
    ));

    try {
      final token = await _localSessionService.getActiveSessionToken() ?? '';

      await _reviewService.reactToReview(
          customerId: customerId,
          reviewId: reviewId,
          like: liked,
          token: token);
    } on HttpNotFound {
      errorsMessage = 'Error while reacting to review';
    } catch (e) {
      errorsMessage = 'Error while reacting to review';
      dev.log('Error: $e', '_reviewLikeRemoved');
    }

    if (errorsMessage != null) {
      emit(SwitchReviewReactionError(
          reviews: state.reviews,
          reviewReactions: reviewReactions,
          errorMessage: errorsMessage,
          customerReactions: state.customerReactions));
    }
  }
}
