// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draggable_artist_review_sheet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DraggableArtistReviewSheetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraggableArtistReviewSheetEventCopyWith<$Res> {
  factory $DraggableArtistReviewSheetEventCopyWith(
          DraggableArtistReviewSheetEvent value,
          $Res Function(DraggableArtistReviewSheetEvent) then) =
      _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
          DraggableArtistReviewSheetEvent>;
}

/// @nodoc
class _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        $Val extends DraggableArtistReviewSheetEvent>
    implements $DraggableArtistReviewSheetEventCopyWith<$Res> {
  _$DraggableArtistReviewSheetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DraggableArtistReviewSheetEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadReviewsImplCopyWith<$Res> {
  factory _$$LoadReviewsImplCopyWith(
          _$LoadReviewsImpl value, $Res Function(_$LoadReviewsImpl) then) =
      __$$LoadReviewsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int artistId});
}

/// @nodoc
class __$$LoadReviewsImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$LoadReviewsImpl> implements _$$LoadReviewsImplCopyWith<$Res> {
  __$$LoadReviewsImplCopyWithImpl(
      _$LoadReviewsImpl _value, $Res Function(_$LoadReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$LoadReviewsImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadReviewsImpl implements _LoadReviews {
  const _$LoadReviewsImpl({required this.artistId});

  @override
  final int artistId;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.loadReviews(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReviewsImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadReviewsImplCopyWith<_$LoadReviewsImpl> get copyWith =>
      __$$LoadReviewsImplCopyWithImpl<_$LoadReviewsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return loadReviews(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return loadReviews?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (loadReviews != null) {
      return loadReviews(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return loadReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return loadReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (loadReviews != null) {
      return loadReviews(this);
    }
    return orElse();
  }
}

abstract class _LoadReviews implements DraggableArtistReviewSheetEvent {
  const factory _LoadReviews({required final int artistId}) = _$LoadReviewsImpl;

  int get artistId;
  @JsonKey(ignore: true)
  _$$LoadReviewsImplCopyWith<_$LoadReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewsLoadingImplCopyWith<$Res> {
  factory _$$ReviewsLoadingImplCopyWith(_$ReviewsLoadingImpl value,
          $Res Function(_$ReviewsLoadingImpl) then) =
      __$$ReviewsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewsLoadingImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$ReviewsLoadingImpl> implements _$$ReviewsLoadingImplCopyWith<$Res> {
  __$$ReviewsLoadingImplCopyWithImpl(
      _$ReviewsLoadingImpl _value, $Res Function(_$ReviewsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewsLoadingImpl implements _ReviewsLoading {
  const _$ReviewsLoadingImpl();

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.reviewsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return reviewsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return reviewsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (reviewsLoading != null) {
      return reviewsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return reviewsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return reviewsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (reviewsLoading != null) {
      return reviewsLoading(this);
    }
    return orElse();
  }
}

abstract class _ReviewsLoading implements DraggableArtistReviewSheetEvent {
  const factory _ReviewsLoading() = _$ReviewsLoadingImpl;
}

/// @nodoc
abstract class _$$SetReviewReactionsImplCopyWith<$Res> {
  factory _$$SetReviewReactionsImplCopyWith(_$SetReviewReactionsImpl value,
          $Res Function(_$SetReviewReactionsImpl) then) =
      __$$SetReviewReactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$SetReviewReactionsImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$SetReviewReactionsImpl>
    implements _$$SetReviewReactionsImplCopyWith<$Res> {
  __$$SetReviewReactionsImplCopyWithImpl(_$SetReviewReactionsImpl _value,
      $Res Function(_$SetReviewReactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$SetReviewReactionsImpl(
      reviewReactions: null == reviewReactions
          ? _value._reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value._customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$SetReviewReactionsImpl implements _SetReviewReactions {
  const _$SetReviewReactionsImpl(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews})
      : _reviewReactions = reviewReactions,
        _customerReactions = customerReactions,
        _reviews = reviews;

  final Map<int, Reactions> _reviewReactions;
  @override
  Map<int, Reactions> get reviewReactions {
    if (_reviewReactions is EqualUnmodifiableMapView) return _reviewReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reviewReactions);
  }

  final Map<int, Reaction> _customerReactions;
  @override
  Map<int, Reaction> get customerReactions {
    if (_customerReactions is EqualUnmodifiableMapView)
      return _customerReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customerReactions);
  }

  final List<ReviewItem> _reviews;
  @override
  List<ReviewItem> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.setReviewReactions(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetReviewReactionsImpl &&
            const DeepCollectionEquality()
                .equals(other._reviewReactions, _reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other._customerReactions, _customerReactions) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reviewReactions),
      const DeepCollectionEquality().hash(_customerReactions),
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetReviewReactionsImplCopyWith<_$SetReviewReactionsImpl> get copyWith =>
      __$$SetReviewReactionsImplCopyWithImpl<_$SetReviewReactionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return setReviewReactions(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return setReviewReactions?.call(
        reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (setReviewReactions != null) {
      return setReviewReactions(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return setReviewReactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return setReviewReactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (setReviewReactions != null) {
      return setReviewReactions(this);
    }
    return orElse();
  }
}

abstract class _SetReviewReactions implements DraggableArtistReviewSheetEvent {
  const factory _SetReviewReactions(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$SetReviewReactionsImpl;

  Map<int, Reactions> get reviewReactions;
  Map<int, Reaction> get customerReactions;
  List<ReviewItem> get reviews;
  @JsonKey(ignore: true)
  _$$SetReviewReactionsImplCopyWith<_$SetReviewReactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewLikedImplCopyWith<$Res> {
  factory _$$ReviewLikedImplCopyWith(
          _$ReviewLikedImpl value, $Res Function(_$ReviewLikedImpl) then) =
      __$$ReviewLikedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewId, int customerId});
}

/// @nodoc
class __$$ReviewLikedImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$ReviewLikedImpl> implements _$$ReviewLikedImplCopyWith<$Res> {
  __$$ReviewLikedImplCopyWithImpl(
      _$ReviewLikedImpl _value, $Res Function(_$ReviewLikedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? customerId = null,
  }) {
    return _then(_$ReviewLikedImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewLikedImpl implements _ReviewLiked {
  const _$ReviewLikedImpl({required this.reviewId, required this.customerId});

  @override
  final int reviewId;
  @override
  final int customerId;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.reviewLiked(reviewId: $reviewId, customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewLikedImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewLikedImplCopyWith<_$ReviewLikedImpl> get copyWith =>
      __$$ReviewLikedImplCopyWithImpl<_$ReviewLikedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return reviewLiked(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return reviewLiked?.call(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (reviewLiked != null) {
      return reviewLiked(reviewId, customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return reviewLiked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return reviewLiked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (reviewLiked != null) {
      return reviewLiked(this);
    }
    return orElse();
  }
}

abstract class _ReviewLiked implements DraggableArtistReviewSheetEvent {
  const factory _ReviewLiked(
      {required final int reviewId,
      required final int customerId}) = _$ReviewLikedImpl;

  int get reviewId;
  int get customerId;
  @JsonKey(ignore: true)
  _$$ReviewLikedImplCopyWith<_$ReviewLikedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewDislikedImplCopyWith<$Res> {
  factory _$$ReviewDislikedImplCopyWith(_$ReviewDislikedImpl value,
          $Res Function(_$ReviewDislikedImpl) then) =
      __$$ReviewDislikedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewId, int customerId});
}

/// @nodoc
class __$$ReviewDislikedImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$ReviewDislikedImpl> implements _$$ReviewDislikedImplCopyWith<$Res> {
  __$$ReviewDislikedImplCopyWithImpl(
      _$ReviewDislikedImpl _value, $Res Function(_$ReviewDislikedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? customerId = null,
  }) {
    return _then(_$ReviewDislikedImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewDislikedImpl implements _ReviewDisliked {
  const _$ReviewDislikedImpl(
      {required this.reviewId, required this.customerId});

  @override
  final int reviewId;
  @override
  final int customerId;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.reviewDisliked(reviewId: $reviewId, customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDislikedImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDislikedImplCopyWith<_$ReviewDislikedImpl> get copyWith =>
      __$$ReviewDislikedImplCopyWithImpl<_$ReviewDislikedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return reviewDisliked(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return reviewDisliked?.call(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (reviewDisliked != null) {
      return reviewDisliked(reviewId, customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return reviewDisliked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return reviewDisliked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (reviewDisliked != null) {
      return reviewDisliked(this);
    }
    return orElse();
  }
}

abstract class _ReviewDisliked implements DraggableArtistReviewSheetEvent {
  const factory _ReviewDisliked(
      {required final int reviewId,
      required final int customerId}) = _$ReviewDislikedImpl;

  int get reviewId;
  int get customerId;
  @JsonKey(ignore: true)
  _$$ReviewDislikedImplCopyWith<_$ReviewDislikedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewLikeRemovedImplCopyWith<$Res> {
  factory _$$ReviewLikeRemovedImplCopyWith(_$ReviewLikeRemovedImpl value,
          $Res Function(_$ReviewLikeRemovedImpl) then) =
      __$$ReviewLikeRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewId, int customerId});
}

/// @nodoc
class __$$ReviewLikeRemovedImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$ReviewLikeRemovedImpl>
    implements _$$ReviewLikeRemovedImplCopyWith<$Res> {
  __$$ReviewLikeRemovedImplCopyWithImpl(_$ReviewLikeRemovedImpl _value,
      $Res Function(_$ReviewLikeRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? customerId = null,
  }) {
    return _then(_$ReviewLikeRemovedImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewLikeRemovedImpl implements _ReviewLikeRemoved {
  const _$ReviewLikeRemovedImpl(
      {required this.reviewId, required this.customerId});

  @override
  final int reviewId;
  @override
  final int customerId;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.reviewLikeRemoved(reviewId: $reviewId, customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewLikeRemovedImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewLikeRemovedImplCopyWith<_$ReviewLikeRemovedImpl> get copyWith =>
      __$$ReviewLikeRemovedImplCopyWithImpl<_$ReviewLikeRemovedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return reviewLikeRemoved(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return reviewLikeRemoved?.call(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (reviewLikeRemoved != null) {
      return reviewLikeRemoved(reviewId, customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return reviewLikeRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return reviewLikeRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (reviewLikeRemoved != null) {
      return reviewLikeRemoved(this);
    }
    return orElse();
  }
}

abstract class _ReviewLikeRemoved implements DraggableArtistReviewSheetEvent {
  const factory _ReviewLikeRemoved(
      {required final int reviewId,
      required final int customerId}) = _$ReviewLikeRemovedImpl;

  int get reviewId;
  int get customerId;
  @JsonKey(ignore: true)
  _$$ReviewLikeRemovedImplCopyWith<_$ReviewLikeRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewDislikedRemovedImplCopyWith<$Res> {
  factory _$$ReviewDislikedRemovedImplCopyWith(
          _$ReviewDislikedRemovedImpl value,
          $Res Function(_$ReviewDislikedRemovedImpl) then) =
      __$$ReviewDislikedRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewId, int customerId});
}

/// @nodoc
class __$$ReviewDislikedRemovedImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$ReviewDislikedRemovedImpl>
    implements _$$ReviewDislikedRemovedImplCopyWith<$Res> {
  __$$ReviewDislikedRemovedImplCopyWithImpl(_$ReviewDislikedRemovedImpl _value,
      $Res Function(_$ReviewDislikedRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? customerId = null,
  }) {
    return _then(_$ReviewDislikedRemovedImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewDislikedRemovedImpl implements _ReviewDislikedRemoved {
  const _$ReviewDislikedRemovedImpl(
      {required this.reviewId, required this.customerId});

  @override
  final int reviewId;
  @override
  final int customerId;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.reviewDislikedRemoved(reviewId: $reviewId, customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDislikedRemovedImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDislikedRemovedImplCopyWith<_$ReviewDislikedRemovedImpl>
      get copyWith => __$$ReviewDislikedRemovedImplCopyWithImpl<
          _$ReviewDislikedRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return reviewDislikedRemoved(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return reviewDislikedRemoved?.call(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (reviewDislikedRemoved != null) {
      return reviewDislikedRemoved(reviewId, customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return reviewDislikedRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return reviewDislikedRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (reviewDislikedRemoved != null) {
      return reviewDislikedRemoved(this);
    }
    return orElse();
  }
}

abstract class _ReviewDislikedRemoved
    implements DraggableArtistReviewSheetEvent {
  const factory _ReviewDislikedRemoved(
      {required final int reviewId,
      required final int customerId}) = _$ReviewDislikedRemovedImpl;

  int get reviewId;
  int get customerId;
  @JsonKey(ignore: true)
  _$$ReviewDislikedRemovedImplCopyWith<_$ReviewDislikedRemovedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchReviewReactionImplCopyWith<$Res> {
  factory _$$SwitchReviewReactionImplCopyWith(_$SwitchReviewReactionImpl value,
          $Res Function(_$SwitchReviewReactionImpl) then) =
      __$$SwitchReviewReactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewId, int customerId, bool liked, bool disliked});
}

/// @nodoc
class __$$SwitchReviewReactionImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$SwitchReviewReactionImpl>
    implements _$$SwitchReviewReactionImplCopyWith<$Res> {
  __$$SwitchReviewReactionImplCopyWithImpl(_$SwitchReviewReactionImpl _value,
      $Res Function(_$SwitchReviewReactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? customerId = null,
    Object? liked = null,
    Object? disliked = null,
  }) {
    return _then(_$SwitchReviewReactionImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      disliked: null == disliked
          ? _value.disliked
          : disliked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SwitchReviewReactionImpl implements _SwitchReviewReaction {
  const _$SwitchReviewReactionImpl(
      {required this.reviewId,
      required this.customerId,
      required this.liked,
      required this.disliked});

  @override
  final int reviewId;
  @override
  final int customerId;
  @override
  final bool liked;
  @override
  final bool disliked;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.switchReviewReaction(reviewId: $reviewId, customerId: $customerId, liked: $liked, disliked: $disliked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchReviewReactionImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.disliked, disliked) ||
                other.disliked == disliked));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, reviewId, customerId, liked, disliked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchReviewReactionImplCopyWith<_$SwitchReviewReactionImpl>
      get copyWith =>
          __$$SwitchReviewReactionImplCopyWithImpl<_$SwitchReviewReactionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return switchReviewReaction(reviewId, customerId, liked, disliked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return switchReviewReaction?.call(reviewId, customerId, liked, disliked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (switchReviewReaction != null) {
      return switchReviewReaction(reviewId, customerId, liked, disliked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return switchReviewReaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return switchReviewReaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (switchReviewReaction != null) {
      return switchReviewReaction(this);
    }
    return orElse();
  }
}

abstract class _SwitchReviewReaction
    implements DraggableArtistReviewSheetEvent {
  const factory _SwitchReviewReaction(
      {required final int reviewId,
      required final int customerId,
      required final bool liked,
      required final bool disliked}) = _$SwitchReviewReactionImpl;

  int get reviewId;
  int get customerId;
  bool get liked;
  bool get disliked;
  @JsonKey(ignore: true)
  _$$SwitchReviewReactionImplCopyWith<_$SwitchReviewReactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshReviewsImplCopyWith<$Res> {
  factory _$$RefreshReviewsImplCopyWith(_$RefreshReviewsImpl value,
          $Res Function(_$RefreshReviewsImpl) then) =
      __$$RefreshReviewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshReviewsImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$RefreshReviewsImpl> implements _$$RefreshReviewsImplCopyWith<$Res> {
  __$$RefreshReviewsImplCopyWithImpl(
      _$RefreshReviewsImpl _value, $Res Function(_$RefreshReviewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshReviewsImpl implements _RefreshReviews {
  const _$RefreshReviewsImpl();

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.refreshReviews()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshReviewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return refreshReviews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return refreshReviews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (refreshReviews != null) {
      return refreshReviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return refreshReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return refreshReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (refreshReviews != null) {
      return refreshReviews(this);
    }
    return orElse();
  }
}

abstract class _RefreshReviews implements DraggableArtistReviewSheetEvent {
  const factory _RefreshReviews() = _$RefreshReviewsImpl;
}

/// @nodoc
abstract class _$$RefreshReviewsErrorImplCopyWith<$Res> {
  factory _$$RefreshReviewsErrorImplCopyWith(_$RefreshReviewsErrorImpl value,
          $Res Function(_$RefreshReviewsErrorImpl) then) =
      __$$RefreshReviewsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$RefreshReviewsErrorImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$RefreshReviewsErrorImpl>
    implements _$$RefreshReviewsErrorImplCopyWith<$Res> {
  __$$RefreshReviewsErrorImplCopyWithImpl(_$RefreshReviewsErrorImpl _value,
      $Res Function(_$RefreshReviewsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$RefreshReviewsErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RefreshReviewsErrorImpl implements _RefreshReviewsError {
  const _$RefreshReviewsErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.refreshReviewsError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshReviewsErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshReviewsErrorImplCopyWith<_$RefreshReviewsErrorImpl> get copyWith =>
      __$$RefreshReviewsErrorImplCopyWithImpl<_$RefreshReviewsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return refreshReviewsError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return refreshReviewsError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (refreshReviewsError != null) {
      return refreshReviewsError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return refreshReviewsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return refreshReviewsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (refreshReviewsError != null) {
      return refreshReviewsError(this);
    }
    return orElse();
  }
}

abstract class _RefreshReviewsError implements DraggableArtistReviewSheetEvent {
  const factory _RefreshReviewsError({required final String errorMessage}) =
      _$RefreshReviewsErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$RefreshReviewsErrorImplCopyWith<_$RefreshReviewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearReviewsImplCopyWith<$Res> {
  factory _$$ClearReviewsImplCopyWith(
          _$ClearReviewsImpl value, $Res Function(_$ClearReviewsImpl) then) =
      __$$ClearReviewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearReviewsImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$ClearReviewsImpl> implements _$$ClearReviewsImplCopyWith<$Res> {
  __$$ClearReviewsImplCopyWithImpl(
      _$ClearReviewsImpl _value, $Res Function(_$ClearReviewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearReviewsImpl implements _ClearReviews {
  const _$ClearReviewsImpl();

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.clearReviews()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearReviewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int artistId) loadReviews,
    required TResult Function() reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        setReviewReactions,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
    required TResult Function() refreshReviews,
    required TResult Function(String errorMessage) refreshReviewsError,
    required TResult Function() clearReviews,
  }) {
    return clearReviews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function()? reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult? Function()? refreshReviews,
    TResult? Function(String errorMessage)? refreshReviewsError,
    TResult? Function()? clearReviews,
  }) {
    return clearReviews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int artistId)? loadReviews,
    TResult Function()? reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        setReviewReactions,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    TResult Function()? refreshReviews,
    TResult Function(String errorMessage)? refreshReviewsError,
    TResult Function()? clearReviews,
    required TResult orElse(),
  }) {
    if (clearReviews != null) {
      return clearReviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadReviews value) loadReviews,
    required TResult Function(_ReviewsLoading value) reviewsLoading,
    required TResult Function(_SetReviewReactions value) setReviewReactions,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(_RefreshReviews value) refreshReviews,
    required TResult Function(_RefreshReviewsError value) refreshReviewsError,
    required TResult Function(_ClearReviews value) clearReviews,
  }) {
    return clearReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadReviews value)? loadReviews,
    TResult? Function(_ReviewsLoading value)? reviewsLoading,
    TResult? Function(_SetReviewReactions value)? setReviewReactions,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(_RefreshReviews value)? refreshReviews,
    TResult? Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(_ClearReviews value)? clearReviews,
  }) {
    return clearReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadReviews value)? loadReviews,
    TResult Function(_ReviewsLoading value)? reviewsLoading,
    TResult Function(_SetReviewReactions value)? setReviewReactions,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(_RefreshReviews value)? refreshReviews,
    TResult Function(_RefreshReviewsError value)? refreshReviewsError,
    TResult Function(_ClearReviews value)? clearReviews,
    required TResult orElse(),
  }) {
    if (clearReviews != null) {
      return clearReviews(this);
    }
    return orElse();
  }
}

abstract class _ClearReviews implements DraggableArtistReviewSheetEvent {
  const factory _ClearReviews() = _$ClearReviewsImpl;
}

/// @nodoc
mixin _$DraggableArtistReviewSheetState {
  Map<int, Reactions> get reviewReactions => throw _privateConstructorUsedError;
  Map<int, Reaction> get customerReactions =>
      throw _privateConstructorUsedError;
  List<ReviewItem> get reviews => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DraggableArtistReviewSheetStateCopyWith<DraggableArtistReviewSheetState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory $DraggableArtistReviewSheetStateCopyWith(
          DraggableArtistReviewSheetState value,
          $Res Function(DraggableArtistReviewSheetState) then) =
      _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
          DraggableArtistReviewSheetState>;
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        $Val extends DraggableArtistReviewSheetState>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  _$DraggableArtistReviewSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DraggableArtistReviewSheetStateInitialImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$DraggableArtistReviewSheetStateInitialImplCopyWith(
          _$DraggableArtistReviewSheetStateInitialImpl value,
          $Res Function(_$DraggableArtistReviewSheetStateInitialImpl) then) =
      __$$DraggableArtistReviewSheetStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$DraggableArtistReviewSheetStateInitialImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$DraggableArtistReviewSheetStateInitialImpl>
    implements _$$DraggableArtistReviewSheetStateInitialImplCopyWith<$Res> {
  __$$DraggableArtistReviewSheetStateInitialImplCopyWithImpl(
      _$DraggableArtistReviewSheetStateInitialImpl _value,
      $Res Function(_$DraggableArtistReviewSheetStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$DraggableArtistReviewSheetStateInitialImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$DraggableArtistReviewSheetStateInitialImpl
    implements DraggableArtistReviewSheetStateInitial {
  const _$DraggableArtistReviewSheetStateInitialImpl(
      {this.reviewReactions = const {},
      this.customerReactions = const {},
      this.reviews = const []});

  @override
  @JsonKey()
  final Map<int, Reactions> reviewReactions;
  @override
  @JsonKey()
  final Map<int, Reaction> customerReactions;
  @override
  @JsonKey()
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.initial(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraggableArtistReviewSheetStateInitialImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DraggableArtistReviewSheetStateInitialImplCopyWith<
          _$DraggableArtistReviewSheetStateInitialImpl>
      get copyWith =>
          __$$DraggableArtistReviewSheetStateInitialImplCopyWithImpl<
              _$DraggableArtistReviewSheetStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return initial(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return initial?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DraggableArtistReviewSheetStateInitial
    implements DraggableArtistReviewSheetState {
  const factory DraggableArtistReviewSheetStateInitial(
          {final Map<int, Reactions> reviewReactions,
          final Map<int, Reaction> customerReactions,
          final List<ReviewItem> reviews}) =
      _$DraggableArtistReviewSheetStateInitialImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$DraggableArtistReviewSheetStateInitialImplCopyWith<
          _$DraggableArtistReviewSheetStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewSheetConfiguredImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ReviewSheetConfiguredImplCopyWith(
          _$ReviewSheetConfiguredImpl value,
          $Res Function(_$ReviewSheetConfiguredImpl) then) =
      __$$ReviewSheetConfiguredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ReviewSheetConfiguredImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ReviewSheetConfiguredImpl>
    implements _$$ReviewSheetConfiguredImplCopyWith<$Res> {
  __$$ReviewSheetConfiguredImplCopyWithImpl(_$ReviewSheetConfiguredImpl _value,
      $Res Function(_$ReviewSheetConfiguredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ReviewSheetConfiguredImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$ReviewSheetConfiguredImpl implements ReviewSheetConfigured {
  const _$ReviewSheetConfiguredImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.configured(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewSheetConfiguredImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewSheetConfiguredImplCopyWith<_$ReviewSheetConfiguredImpl>
      get copyWith => __$$ReviewSheetConfiguredImplCopyWithImpl<
          _$ReviewSheetConfiguredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return configured(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return configured?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (configured != null) {
      return configured(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return configured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return configured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (configured != null) {
      return configured(this);
    }
    return orElse();
  }
}

abstract class ReviewSheetConfigured
    implements DraggableArtistReviewSheetState {
  const factory ReviewSheetConfigured(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$ReviewSheetConfiguredImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewSheetConfiguredImplCopyWith<_$ReviewSheetConfiguredImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeReviewImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$LikeReviewImplCopyWith(
          _$LikeReviewImpl value, $Res Function(_$LikeReviewImpl) then) =
      __$$LikeReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$LikeReviewImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$LikeReviewImpl> implements _$$LikeReviewImplCopyWith<$Res> {
  __$$LikeReviewImplCopyWithImpl(
      _$LikeReviewImpl _value, $Res Function(_$LikeReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$LikeReviewImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$LikeReviewImpl implements LikeReview {
  const _$LikeReviewImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.likeReview(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeReviewImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeReviewImplCopyWith<_$LikeReviewImpl> get copyWith =>
      __$$LikeReviewImplCopyWithImpl<_$LikeReviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return likeReview(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return likeReview?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (likeReview != null) {
      return likeReview(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return likeReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return likeReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (likeReview != null) {
      return likeReview(this);
    }
    return orElse();
  }
}

abstract class LikeReview implements DraggableArtistReviewSheetState {
  const factory LikeReview(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$LikeReviewImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$LikeReviewImplCopyWith<_$LikeReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeReviewErrorImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$LikeReviewErrorImplCopyWith(_$LikeReviewErrorImpl value,
          $Res Function(_$LikeReviewErrorImpl) then) =
      __$$LikeReviewErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$LikeReviewErrorImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$LikeReviewErrorImpl> implements _$$LikeReviewErrorImplCopyWith<$Res> {
  __$$LikeReviewErrorImplCopyWithImpl(
      _$LikeReviewErrorImpl _value, $Res Function(_$LikeReviewErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LikeReviewErrorImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LikeReviewErrorImpl implements LikeReviewError {
  const _$LikeReviewErrorImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews,
      required this.errorMessage});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.likeReviewError(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeReviewErrorImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeReviewErrorImplCopyWith<_$LikeReviewErrorImpl> get copyWith =>
      __$$LikeReviewErrorImplCopyWithImpl<_$LikeReviewErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return likeReviewError(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return likeReviewError?.call(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (likeReviewError != null) {
      return likeReviewError(
          reviewReactions, customerReactions, reviews, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return likeReviewError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return likeReviewError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (likeReviewError != null) {
      return likeReviewError(this);
    }
    return orElse();
  }
}

abstract class LikeReviewError implements DraggableArtistReviewSheetState {
  const factory LikeReviewError(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews,
      required final String errorMessage}) = _$LikeReviewErrorImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LikeReviewErrorImplCopyWith<_$LikeReviewErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeReviewImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$DislikeReviewImplCopyWith(
          _$DislikeReviewImpl value, $Res Function(_$DislikeReviewImpl) then) =
      __$$DislikeReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$DislikeReviewImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$DislikeReviewImpl> implements _$$DislikeReviewImplCopyWith<$Res> {
  __$$DislikeReviewImplCopyWithImpl(
      _$DislikeReviewImpl _value, $Res Function(_$DislikeReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$DislikeReviewImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$DislikeReviewImpl implements DislikeReview {
  const _$DislikeReviewImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.dislikeReview(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DislikeReviewImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DislikeReviewImplCopyWith<_$DislikeReviewImpl> get copyWith =>
      __$$DislikeReviewImplCopyWithImpl<_$DislikeReviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return dislikeReview(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return dislikeReview?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (dislikeReview != null) {
      return dislikeReview(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return dislikeReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return dislikeReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (dislikeReview != null) {
      return dislikeReview(this);
    }
    return orElse();
  }
}

abstract class DislikeReview implements DraggableArtistReviewSheetState {
  const factory DislikeReview(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$DislikeReviewImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$DislikeReviewImplCopyWith<_$DislikeReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeReviewErrorImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$DislikeReviewErrorImplCopyWith(_$DislikeReviewErrorImpl value,
          $Res Function(_$DislikeReviewErrorImpl) then) =
      __$$DislikeReviewErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$DislikeReviewErrorImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$DislikeReviewErrorImpl>
    implements _$$DislikeReviewErrorImplCopyWith<$Res> {
  __$$DislikeReviewErrorImplCopyWithImpl(_$DislikeReviewErrorImpl _value,
      $Res Function(_$DislikeReviewErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$DislikeReviewErrorImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DislikeReviewErrorImpl implements DislikeReviewError {
  const _$DislikeReviewErrorImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews,
      required this.errorMessage});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.dislikeReviewError(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DislikeReviewErrorImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DislikeReviewErrorImplCopyWith<_$DislikeReviewErrorImpl> get copyWith =>
      __$$DislikeReviewErrorImplCopyWithImpl<_$DislikeReviewErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return dislikeReviewError(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return dislikeReviewError?.call(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (dislikeReviewError != null) {
      return dislikeReviewError(
          reviewReactions, customerReactions, reviews, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return dislikeReviewError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return dislikeReviewError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (dislikeReviewError != null) {
      return dislikeReviewError(this);
    }
    return orElse();
  }
}

abstract class DislikeReviewError implements DraggableArtistReviewSheetState {
  const factory DislikeReviewError(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews,
      required final String errorMessage}) = _$DislikeReviewErrorImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$DislikeReviewErrorImplCopyWith<_$DislikeReviewErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeRemovedImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$LikeRemovedImplCopyWith(
          _$LikeRemovedImpl value, $Res Function(_$LikeRemovedImpl) then) =
      __$$LikeRemovedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$LikeRemovedImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$LikeRemovedImpl> implements _$$LikeRemovedImplCopyWith<$Res> {
  __$$LikeRemovedImplCopyWithImpl(
      _$LikeRemovedImpl _value, $Res Function(_$LikeRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$LikeRemovedImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$LikeRemovedImpl implements LikeRemoved {
  const _$LikeRemovedImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.likeRemoved(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeRemovedImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeRemovedImplCopyWith<_$LikeRemovedImpl> get copyWith =>
      __$$LikeRemovedImplCopyWithImpl<_$LikeRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return likeRemoved(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return likeRemoved?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (likeRemoved != null) {
      return likeRemoved(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return likeRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return likeRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (likeRemoved != null) {
      return likeRemoved(this);
    }
    return orElse();
  }
}

abstract class LikeRemoved implements DraggableArtistReviewSheetState {
  const factory LikeRemoved(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$LikeRemovedImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$LikeRemovedImplCopyWith<_$LikeRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeRemovedErrorImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$LikeRemovedErrorImplCopyWith(_$LikeRemovedErrorImpl value,
          $Res Function(_$LikeRemovedErrorImpl) then) =
      __$$LikeRemovedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$LikeRemovedErrorImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$LikeRemovedErrorImpl>
    implements _$$LikeRemovedErrorImplCopyWith<$Res> {
  __$$LikeRemovedErrorImplCopyWithImpl(_$LikeRemovedErrorImpl _value,
      $Res Function(_$LikeRemovedErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LikeRemovedErrorImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LikeRemovedErrorImpl implements LikeRemovedError {
  const _$LikeRemovedErrorImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews,
      required this.errorMessage});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.likeRemovedError(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeRemovedErrorImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeRemovedErrorImplCopyWith<_$LikeRemovedErrorImpl> get copyWith =>
      __$$LikeRemovedErrorImplCopyWithImpl<_$LikeRemovedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return likeRemovedError(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return likeRemovedError?.call(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (likeRemovedError != null) {
      return likeRemovedError(
          reviewReactions, customerReactions, reviews, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return likeRemovedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return likeRemovedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (likeRemovedError != null) {
      return likeRemovedError(this);
    }
    return orElse();
  }
}

abstract class LikeRemovedError implements DraggableArtistReviewSheetState {
  const factory LikeRemovedError(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews,
      required final String errorMessage}) = _$LikeRemovedErrorImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LikeRemovedErrorImplCopyWith<_$LikeRemovedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeRemovedImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$DislikeRemovedImplCopyWith(_$DislikeRemovedImpl value,
          $Res Function(_$DislikeRemovedImpl) then) =
      __$$DislikeRemovedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$DislikeRemovedImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$DislikeRemovedImpl> implements _$$DislikeRemovedImplCopyWith<$Res> {
  __$$DislikeRemovedImplCopyWithImpl(
      _$DislikeRemovedImpl _value, $Res Function(_$DislikeRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$DislikeRemovedImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$DislikeRemovedImpl implements DislikeRemoved {
  const _$DislikeRemovedImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.dislikeRemoved(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DislikeRemovedImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DislikeRemovedImplCopyWith<_$DislikeRemovedImpl> get copyWith =>
      __$$DislikeRemovedImplCopyWithImpl<_$DislikeRemovedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return dislikeRemoved(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return dislikeRemoved?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (dislikeRemoved != null) {
      return dislikeRemoved(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return dislikeRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return dislikeRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (dislikeRemoved != null) {
      return dislikeRemoved(this);
    }
    return orElse();
  }
}

abstract class DislikeRemoved implements DraggableArtistReviewSheetState {
  const factory DislikeRemoved(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$DislikeRemovedImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$DislikeRemovedImplCopyWith<_$DislikeRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeRemovedErrorImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$DislikeRemovedErrorImplCopyWith(_$DislikeRemovedErrorImpl value,
          $Res Function(_$DislikeRemovedErrorImpl) then) =
      __$$DislikeRemovedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$DislikeRemovedErrorImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$DislikeRemovedErrorImpl>
    implements _$$DislikeRemovedErrorImplCopyWith<$Res> {
  __$$DislikeRemovedErrorImplCopyWithImpl(_$DislikeRemovedErrorImpl _value,
      $Res Function(_$DislikeRemovedErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$DislikeRemovedErrorImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DislikeRemovedErrorImpl implements DislikeRemovedError {
  const _$DislikeRemovedErrorImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews,
      required this.errorMessage});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.dislikeRemovedError(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DislikeRemovedErrorImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DislikeRemovedErrorImplCopyWith<_$DislikeRemovedErrorImpl> get copyWith =>
      __$$DislikeRemovedErrorImplCopyWithImpl<_$DislikeRemovedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return dislikeRemovedError(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return dislikeRemovedError?.call(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (dislikeRemovedError != null) {
      return dislikeRemovedError(
          reviewReactions, customerReactions, reviews, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return dislikeRemovedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return dislikeRemovedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (dislikeRemovedError != null) {
      return dislikeRemovedError(this);
    }
    return orElse();
  }
}

abstract class DislikeRemovedError implements DraggableArtistReviewSheetState {
  const factory DislikeRemovedError(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews,
      required final String errorMessage}) = _$DislikeRemovedErrorImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$DislikeRemovedErrorImplCopyWith<_$DislikeRemovedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewReactionImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ReviewReactionImplCopyWith(_$ReviewReactionImpl value,
          $Res Function(_$ReviewReactionImpl) then) =
      __$$ReviewReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ReviewReactionImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ReviewReactionImpl> implements _$$ReviewReactionImplCopyWith<$Res> {
  __$$ReviewReactionImplCopyWithImpl(
      _$ReviewReactionImpl _value, $Res Function(_$ReviewReactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ReviewReactionImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$ReviewReactionImpl implements ReviewReaction {
  const _$ReviewReactionImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.reviewReaction(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewReactionImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewReactionImplCopyWith<_$ReviewReactionImpl> get copyWith =>
      __$$ReviewReactionImplCopyWithImpl<_$ReviewReactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return reviewReaction(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return reviewReaction?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (reviewReaction != null) {
      return reviewReaction(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return reviewReaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return reviewReaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (reviewReaction != null) {
      return reviewReaction(this);
    }
    return orElse();
  }
}

abstract class ReviewReaction implements DraggableArtistReviewSheetState {
  const factory ReviewReaction(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$ReviewReactionImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewReactionImplCopyWith<_$ReviewReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewReactionErrorImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ReviewReactionErrorImplCopyWith(_$ReviewReactionErrorImpl value,
          $Res Function(_$ReviewReactionErrorImpl) then) =
      __$$ReviewReactionErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$ReviewReactionErrorImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ReviewReactionErrorImpl>
    implements _$$ReviewReactionErrorImplCopyWith<$Res> {
  __$$ReviewReactionErrorImplCopyWithImpl(_$ReviewReactionErrorImpl _value,
      $Res Function(_$ReviewReactionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ReviewReactionErrorImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReviewReactionErrorImpl implements ReviewReactionError {
  const _$ReviewReactionErrorImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews,
      required this.errorMessage});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.reviewReactionError(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewReactionErrorImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewReactionErrorImplCopyWith<_$ReviewReactionErrorImpl> get copyWith =>
      __$$ReviewReactionErrorImplCopyWithImpl<_$ReviewReactionErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return reviewReactionError(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return reviewReactionError?.call(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (reviewReactionError != null) {
      return reviewReactionError(
          reviewReactions, customerReactions, reviews, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return reviewReactionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return reviewReactionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (reviewReactionError != null) {
      return reviewReactionError(this);
    }
    return orElse();
  }
}

abstract class ReviewReactionError implements DraggableArtistReviewSheetState {
  const factory ReviewReactionError(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews,
      required final String errorMessage}) = _$ReviewReactionErrorImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ReviewReactionErrorImplCopyWith<_$ReviewReactionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchReviewReactionImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$SwitchReviewReactionImplCopyWith(_$SwitchReviewReactionImpl value,
          $Res Function(_$SwitchReviewReactionImpl) then) =
      __$$SwitchReviewReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$SwitchReviewReactionImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$SwitchReviewReactionImpl>
    implements _$$SwitchReviewReactionImplCopyWith<$Res> {
  __$$SwitchReviewReactionImplCopyWithImpl(_$SwitchReviewReactionImpl _value,
      $Res Function(_$SwitchReviewReactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$SwitchReviewReactionImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$SwitchReviewReactionImpl implements SwitchReviewReaction {
  const _$SwitchReviewReactionImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.switchReviewReaction(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchReviewReactionImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchReviewReactionImplCopyWith<_$SwitchReviewReactionImpl>
      get copyWith =>
          __$$SwitchReviewReactionImplCopyWithImpl<_$SwitchReviewReactionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return switchReviewReaction(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return switchReviewReaction?.call(
        reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (switchReviewReaction != null) {
      return switchReviewReaction(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return switchReviewReaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return switchReviewReaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (switchReviewReaction != null) {
      return switchReviewReaction(this);
    }
    return orElse();
  }
}

abstract class SwitchReviewReaction implements DraggableArtistReviewSheetState {
  const factory SwitchReviewReaction(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$SwitchReviewReactionImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$SwitchReviewReactionImplCopyWith<_$SwitchReviewReactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchReviewReactionErrorImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$SwitchReviewReactionErrorImplCopyWith(
          _$SwitchReviewReactionErrorImpl value,
          $Res Function(_$SwitchReviewReactionErrorImpl) then) =
      __$$SwitchReviewReactionErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$SwitchReviewReactionErrorImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$SwitchReviewReactionErrorImpl>
    implements _$$SwitchReviewReactionErrorImplCopyWith<$Res> {
  __$$SwitchReviewReactionErrorImplCopyWithImpl(
      _$SwitchReviewReactionErrorImpl _value,
      $Res Function(_$SwitchReviewReactionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SwitchReviewReactionErrorImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SwitchReviewReactionErrorImpl implements SwitchReviewReactionError {
  const _$SwitchReviewReactionErrorImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews,
      required this.errorMessage});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.switchReviewReactionError(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchReviewReactionErrorImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchReviewReactionErrorImplCopyWith<_$SwitchReviewReactionErrorImpl>
      get copyWith => __$$SwitchReviewReactionErrorImplCopyWithImpl<
          _$SwitchReviewReactionErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return switchReviewReactionError(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return switchReviewReactionError?.call(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (switchReviewReactionError != null) {
      return switchReviewReactionError(
          reviewReactions, customerReactions, reviews, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return switchReviewReactionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return switchReviewReactionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (switchReviewReactionError != null) {
      return switchReviewReactionError(this);
    }
    return orElse();
  }
}

abstract class SwitchReviewReactionError
    implements DraggableArtistReviewSheetState {
  const factory SwitchReviewReactionError(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews,
      required final String errorMessage}) = _$SwitchReviewReactionErrorImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SwitchReviewReactionErrorImplCopyWith<_$SwitchReviewReactionErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshReviewsImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$RefreshReviewsImplCopyWith(_$RefreshReviewsImpl value,
          $Res Function(_$RefreshReviewsImpl) then) =
      __$$RefreshReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$RefreshReviewsImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$RefreshReviewsImpl> implements _$$RefreshReviewsImplCopyWith<$Res> {
  __$$RefreshReviewsImplCopyWithImpl(
      _$RefreshReviewsImpl _value, $Res Function(_$RefreshReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$RefreshReviewsImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$RefreshReviewsImpl implements RefreshReviews {
  const _$RefreshReviewsImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.refreshReviews(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshReviewsImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshReviewsImplCopyWith<_$RefreshReviewsImpl> get copyWith =>
      __$$RefreshReviewsImplCopyWithImpl<_$RefreshReviewsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return refreshReviews(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return refreshReviews?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (refreshReviews != null) {
      return refreshReviews(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return refreshReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return refreshReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (refreshReviews != null) {
      return refreshReviews(this);
    }
    return orElse();
  }
}

abstract class RefreshReviews implements DraggableArtistReviewSheetState {
  const factory RefreshReviews(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$RefreshReviewsImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$RefreshReviewsImplCopyWith<_$RefreshReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshReviewsErrorImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$RefreshReviewsErrorImplCopyWith(_$RefreshReviewsErrorImpl value,
          $Res Function(_$RefreshReviewsErrorImpl) then) =
      __$$RefreshReviewsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$RefreshReviewsErrorImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$RefreshReviewsErrorImpl>
    implements _$$RefreshReviewsErrorImplCopyWith<$Res> {
  __$$RefreshReviewsErrorImplCopyWithImpl(_$RefreshReviewsErrorImpl _value,
      $Res Function(_$RefreshReviewsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$RefreshReviewsErrorImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RefreshReviewsErrorImpl implements RefreshReviewsError {
  const _$RefreshReviewsErrorImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews,
      required this.errorMessage});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.refreshReviewsError(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshReviewsErrorImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshReviewsErrorImplCopyWith<_$RefreshReviewsErrorImpl> get copyWith =>
      __$$RefreshReviewsErrorImplCopyWithImpl<_$RefreshReviewsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return refreshReviewsError(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return refreshReviewsError?.call(
        reviewReactions, customerReactions, reviews, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (refreshReviewsError != null) {
      return refreshReviewsError(
          reviewReactions, customerReactions, reviews, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return refreshReviewsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return refreshReviewsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (refreshReviewsError != null) {
      return refreshReviewsError(this);
    }
    return orElse();
  }
}

abstract class RefreshReviewsError implements DraggableArtistReviewSheetState {
  const factory RefreshReviewsError(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews,
      required final String errorMessage}) = _$RefreshReviewsErrorImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$RefreshReviewsErrorImplCopyWith<_$RefreshReviewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewsLoadingImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ReviewsLoadingImplCopyWith(_$ReviewsLoadingImpl value,
          $Res Function(_$ReviewsLoadingImpl) then) =
      __$$ReviewsLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ReviewsLoadingImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ReviewsLoadingImpl> implements _$$ReviewsLoadingImplCopyWith<$Res> {
  __$$ReviewsLoadingImplCopyWithImpl(
      _$ReviewsLoadingImpl _value, $Res Function(_$ReviewsLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ReviewsLoadingImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$ReviewsLoadingImpl implements ReviewsLoading {
  const _$ReviewsLoadingImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.reviewsLoading(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsLoadingImplCopyWith<_$ReviewsLoadingImpl> get copyWith =>
      __$$ReviewsLoadingImplCopyWithImpl<_$ReviewsLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return reviewsLoading(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return reviewsLoading?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (reviewsLoading != null) {
      return reviewsLoading(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return reviewsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return reviewsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (reviewsLoading != null) {
      return reviewsLoading(this);
    }
    return orElse();
  }
}

abstract class ReviewsLoading implements DraggableArtistReviewSheetState {
  const factory ReviewsLoading(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$ReviewsLoadingImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewsLoadingImplCopyWith<_$ReviewsLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewsLoadedImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ReviewsLoadedImplCopyWith(
          _$ReviewsLoadedImpl value, $Res Function(_$ReviewsLoadedImpl) then) =
      __$$ReviewsLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ReviewsLoadedImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ReviewsLoadedImpl> implements _$$ReviewsLoadedImplCopyWith<$Res> {
  __$$ReviewsLoadedImplCopyWithImpl(
      _$ReviewsLoadedImpl _value, $Res Function(_$ReviewsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ReviewsLoadedImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$ReviewsLoadedImpl implements ReviewsLoaded {
  const _$ReviewsLoadedImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.reviewsLoaded(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsLoadedImplCopyWith<_$ReviewsLoadedImpl> get copyWith =>
      __$$ReviewsLoadedImplCopyWithImpl<_$ReviewsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return reviewsLoaded(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return reviewsLoaded?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (reviewsLoaded != null) {
      return reviewsLoaded(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return reviewsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return reviewsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (reviewsLoaded != null) {
      return reviewsLoaded(this);
    }
    return orElse();
  }
}

abstract class ReviewsLoaded implements DraggableArtistReviewSheetState {
  const factory ReviewsLoaded(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$ReviewsLoadedImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewsLoadedImplCopyWith<_$ReviewsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearedReviewsImplCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ClearedReviewsImplCopyWith(_$ClearedReviewsImpl value,
          $Res Function(_$ClearedReviewsImpl) then) =
      __$$ClearedReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ClearedReviewsImplCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ClearedReviewsImpl> implements _$$ClearedReviewsImplCopyWith<$Res> {
  __$$ClearedReviewsImplCopyWithImpl(
      _$ClearedReviewsImpl _value, $Res Function(_$ClearedReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ClearedReviewsImpl(
      reviewReactions: null == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reactions>,
      customerReactions: null == customerReactions
          ? _value.customerReactions
          : customerReactions // ignore: cast_nullable_to_non_nullable
              as Map<int, Reaction>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>,
    ));
  }
}

/// @nodoc

class _$ClearedReviewsImpl implements ClearedReviews {
  const _$ClearedReviewsImpl(
      {required this.reviewReactions,
      required this.customerReactions,
      required this.reviews});

  @override
  final Map<int, Reactions> reviewReactions;
  @override
  final Map<int, Reaction> customerReactions;
  @override
  final List<ReviewItem> reviews;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetState.clearedReviews(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearedReviewsImpl &&
            const DeepCollectionEquality()
                .equals(other.reviewReactions, reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other.customerReactions, customerReactions) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewReactions),
      const DeepCollectionEquality().hash(customerReactions),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearedReviewsImplCopyWith<_$ClearedReviewsImpl> get copyWith =>
      __$$ClearedReviewsImplCopyWithImpl<_$ClearedReviewsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        configured,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeReview,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeReviewError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        likeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        likeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        dislikeRemoved,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        dislikeRemovedError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        reviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        switchReviewReaction,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        switchReviewReactionError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        refreshReviews,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)
        refreshReviewsError,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        reviewsLoaded,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        clearedReviews,
  }) {
    return clearedReviews(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
  }) {
    return clearedReviews?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        configured,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeReview,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeReviewError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        likeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        likeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        dislikeRemoved,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        dislikeRemovedError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        reviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        switchReviewReaction,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        switchReviewReactionError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        refreshReviews,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String errorMessage)?
        refreshReviewsError,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        reviewsLoaded,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        clearedReviews,
    required TResult orElse(),
  }) {
    if (clearedReviews != null) {
      return clearedReviews(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableArtistReviewSheetStateInitial value)
        initial,
    required TResult Function(ReviewSheetConfigured value) configured,
    required TResult Function(LikeReview value) likeReview,
    required TResult Function(LikeReviewError value) likeReviewError,
    required TResult Function(DislikeReview value) dislikeReview,
    required TResult Function(DislikeReviewError value) dislikeReviewError,
    required TResult Function(LikeRemoved value) likeRemoved,
    required TResult Function(LikeRemovedError value) likeRemovedError,
    required TResult Function(DislikeRemoved value) dislikeRemoved,
    required TResult Function(DislikeRemovedError value) dislikeRemovedError,
    required TResult Function(ReviewReaction value) reviewReaction,
    required TResult Function(ReviewReactionError value) reviewReactionError,
    required TResult Function(SwitchReviewReaction value) switchReviewReaction,
    required TResult Function(SwitchReviewReactionError value)
        switchReviewReactionError,
    required TResult Function(RefreshReviews value) refreshReviews,
    required TResult Function(RefreshReviewsError value) refreshReviewsError,
    required TResult Function(ReviewsLoading value) reviewsLoading,
    required TResult Function(ReviewsLoaded value) reviewsLoaded,
    required TResult Function(ClearedReviews value) clearedReviews,
  }) {
    return clearedReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult? Function(ReviewSheetConfigured value)? configured,
    TResult? Function(LikeReview value)? likeReview,
    TResult? Function(LikeReviewError value)? likeReviewError,
    TResult? Function(DislikeReview value)? dislikeReview,
    TResult? Function(DislikeReviewError value)? dislikeReviewError,
    TResult? Function(LikeRemoved value)? likeRemoved,
    TResult? Function(LikeRemovedError value)? likeRemovedError,
    TResult? Function(DislikeRemoved value)? dislikeRemoved,
    TResult? Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult? Function(ReviewReaction value)? reviewReaction,
    TResult? Function(ReviewReactionError value)? reviewReactionError,
    TResult? Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult? Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult? Function(RefreshReviews value)? refreshReviews,
    TResult? Function(RefreshReviewsError value)? refreshReviewsError,
    TResult? Function(ReviewsLoading value)? reviewsLoading,
    TResult? Function(ReviewsLoaded value)? reviewsLoaded,
    TResult? Function(ClearedReviews value)? clearedReviews,
  }) {
    return clearedReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableArtistReviewSheetStateInitial value)? initial,
    TResult Function(ReviewSheetConfigured value)? configured,
    TResult Function(LikeReview value)? likeReview,
    TResult Function(LikeReviewError value)? likeReviewError,
    TResult Function(DislikeReview value)? dislikeReview,
    TResult Function(DislikeReviewError value)? dislikeReviewError,
    TResult Function(LikeRemoved value)? likeRemoved,
    TResult Function(LikeRemovedError value)? likeRemovedError,
    TResult Function(DislikeRemoved value)? dislikeRemoved,
    TResult Function(DislikeRemovedError value)? dislikeRemovedError,
    TResult Function(ReviewReaction value)? reviewReaction,
    TResult Function(ReviewReactionError value)? reviewReactionError,
    TResult Function(SwitchReviewReaction value)? switchReviewReaction,
    TResult Function(SwitchReviewReactionError value)?
        switchReviewReactionError,
    TResult Function(RefreshReviews value)? refreshReviews,
    TResult Function(RefreshReviewsError value)? refreshReviewsError,
    TResult Function(ReviewsLoading value)? reviewsLoading,
    TResult Function(ReviewsLoaded value)? reviewsLoaded,
    TResult Function(ClearedReviews value)? clearedReviews,
    required TResult orElse(),
  }) {
    if (clearedReviews != null) {
      return clearedReviews(this);
    }
    return orElse();
  }
}

abstract class ClearedReviews implements DraggableArtistReviewSheetState {
  const factory ClearedReviews(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$ClearedReviewsImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ClearedReviewsImplCopyWith<_$ClearedReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
