// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'draggable_artist_review_sheet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
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
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_LoadReviewsCopyWith<$Res> {
  factory _$$_LoadReviewsCopyWith(
          _$_LoadReviews value, $Res Function(_$_LoadReviews) then) =
      __$$_LoadReviewsCopyWithImpl<$Res>;
  @useResult
  $Res call({int artistId});
}

/// @nodoc
class __$$_LoadReviewsCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res, _$_LoadReviews>
    implements _$$_LoadReviewsCopyWith<$Res> {
  __$$_LoadReviewsCopyWithImpl(
      _$_LoadReviews _value, $Res Function(_$_LoadReviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$_LoadReviews(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadReviews implements _LoadReviews {
  const _$_LoadReviews({required this.artistId});

  @override
  final int artistId;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.loadReviews(artistId: $artistId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadReviews &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadReviewsCopyWith<_$_LoadReviews> get copyWith =>
      __$$_LoadReviewsCopyWithImpl<_$_LoadReviews>(this, _$identity);

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
  const factory _LoadReviews({required final int artistId}) = _$_LoadReviews;

  int get artistId;
  @JsonKey(ignore: true)
  _$$_LoadReviewsCopyWith<_$_LoadReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewsLoadingCopyWith<$Res> {
  factory _$$_ReviewsLoadingCopyWith(
          _$_ReviewsLoading value, $Res Function(_$_ReviewsLoading) then) =
      __$$_ReviewsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReviewsLoadingCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$_ReviewsLoading> implements _$$_ReviewsLoadingCopyWith<$Res> {
  __$$_ReviewsLoadingCopyWithImpl(
      _$_ReviewsLoading _value, $Res Function(_$_ReviewsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReviewsLoading implements _ReviewsLoading {
  const _$_ReviewsLoading();

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.reviewsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReviewsLoading);
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
  const factory _ReviewsLoading() = _$_ReviewsLoading;
}

/// @nodoc
abstract class _$$_SetReviewReactionsCopyWith<$Res> {
  factory _$$_SetReviewReactionsCopyWith(_$_SetReviewReactions value,
          $Res Function(_$_SetReviewReactions) then) =
      __$$_SetReviewReactionsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$_SetReviewReactionsCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$_SetReviewReactions> implements _$$_SetReviewReactionsCopyWith<$Res> {
  __$$_SetReviewReactionsCopyWithImpl(
      _$_SetReviewReactions _value, $Res Function(_$_SetReviewReactions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$_SetReviewReactions(
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

class _$_SetReviewReactions implements _SetReviewReactions {
  const _$_SetReviewReactions(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews})
      : _reviewReactions = reviewReactions,
        _customerReactions = customerReactions,
        _reviews = reviews;

  final Map<int, Reactions> _reviewReactions;
  @override
  Map<int, Reactions> get reviewReactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reviewReactions);
  }

  final Map<int, Reaction> _customerReactions;
  @override
  Map<int, Reaction> get customerReactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customerReactions);
  }

  final List<ReviewItem> _reviews;
  @override
  List<ReviewItem> get reviews {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.setReviewReactions(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetReviewReactions &&
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
  _$$_SetReviewReactionsCopyWith<_$_SetReviewReactions> get copyWith =>
      __$$_SetReviewReactionsCopyWithImpl<_$_SetReviewReactions>(
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
      required final List<ReviewItem> reviews}) = _$_SetReviewReactions;

  Map<int, Reactions> get reviewReactions;
  Map<int, Reaction> get customerReactions;
  List<ReviewItem> get reviews;
  @JsonKey(ignore: true)
  _$$_SetReviewReactionsCopyWith<_$_SetReviewReactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewLikedCopyWith<$Res> {
  factory _$$_ReviewLikedCopyWith(
          _$_ReviewLiked value, $Res Function(_$_ReviewLiked) then) =
      __$$_ReviewLikedCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewId, int customerId});
}

/// @nodoc
class __$$_ReviewLikedCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res, _$_ReviewLiked>
    implements _$$_ReviewLikedCopyWith<$Res> {
  __$$_ReviewLikedCopyWithImpl(
      _$_ReviewLiked _value, $Res Function(_$_ReviewLiked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? customerId = null,
  }) {
    return _then(_$_ReviewLiked(
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

class _$_ReviewLiked implements _ReviewLiked {
  const _$_ReviewLiked({required this.reviewId, required this.customerId});

  @override
  final int reviewId;
  @override
  final int customerId;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.reviewLiked(reviewId: $reviewId, customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewLiked &&
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
  _$$_ReviewLikedCopyWith<_$_ReviewLiked> get copyWith =>
      __$$_ReviewLikedCopyWithImpl<_$_ReviewLiked>(this, _$identity);

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
      required final int customerId}) = _$_ReviewLiked;

  int get reviewId;
  int get customerId;
  @JsonKey(ignore: true)
  _$$_ReviewLikedCopyWith<_$_ReviewLiked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewDislikedCopyWith<$Res> {
  factory _$$_ReviewDislikedCopyWith(
          _$_ReviewDisliked value, $Res Function(_$_ReviewDisliked) then) =
      __$$_ReviewDislikedCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewId, int customerId});
}

/// @nodoc
class __$$_ReviewDislikedCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$_ReviewDisliked> implements _$$_ReviewDislikedCopyWith<$Res> {
  __$$_ReviewDislikedCopyWithImpl(
      _$_ReviewDisliked _value, $Res Function(_$_ReviewDisliked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? customerId = null,
  }) {
    return _then(_$_ReviewDisliked(
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

class _$_ReviewDisliked implements _ReviewDisliked {
  const _$_ReviewDisliked({required this.reviewId, required this.customerId});

  @override
  final int reviewId;
  @override
  final int customerId;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.reviewDisliked(reviewId: $reviewId, customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDisliked &&
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
  _$$_ReviewDislikedCopyWith<_$_ReviewDisliked> get copyWith =>
      __$$_ReviewDislikedCopyWithImpl<_$_ReviewDisliked>(this, _$identity);

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
      required final int customerId}) = _$_ReviewDisliked;

  int get reviewId;
  int get customerId;
  @JsonKey(ignore: true)
  _$$_ReviewDislikedCopyWith<_$_ReviewDisliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewLikeRemovedCopyWith<$Res> {
  factory _$$_ReviewLikeRemovedCopyWith(_$_ReviewLikeRemoved value,
          $Res Function(_$_ReviewLikeRemoved) then) =
      __$$_ReviewLikeRemovedCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewId, int customerId});
}

/// @nodoc
class __$$_ReviewLikeRemovedCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$_ReviewLikeRemoved> implements _$$_ReviewLikeRemovedCopyWith<$Res> {
  __$$_ReviewLikeRemovedCopyWithImpl(
      _$_ReviewLikeRemoved _value, $Res Function(_$_ReviewLikeRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? customerId = null,
  }) {
    return _then(_$_ReviewLikeRemoved(
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

class _$_ReviewLikeRemoved implements _ReviewLikeRemoved {
  const _$_ReviewLikeRemoved(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewLikeRemoved &&
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
  _$$_ReviewLikeRemovedCopyWith<_$_ReviewLikeRemoved> get copyWith =>
      __$$_ReviewLikeRemovedCopyWithImpl<_$_ReviewLikeRemoved>(
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
      required final int customerId}) = _$_ReviewLikeRemoved;

  int get reviewId;
  int get customerId;
  @JsonKey(ignore: true)
  _$$_ReviewLikeRemovedCopyWith<_$_ReviewLikeRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewDislikedRemovedCopyWith<$Res> {
  factory _$$_ReviewDislikedRemovedCopyWith(_$_ReviewDislikedRemoved value,
          $Res Function(_$_ReviewDislikedRemoved) then) =
      __$$_ReviewDislikedRemovedCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewId, int customerId});
}

/// @nodoc
class __$$_ReviewDislikedRemovedCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$_ReviewDislikedRemoved>
    implements _$$_ReviewDislikedRemovedCopyWith<$Res> {
  __$$_ReviewDislikedRemovedCopyWithImpl(_$_ReviewDislikedRemoved _value,
      $Res Function(_$_ReviewDislikedRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? customerId = null,
  }) {
    return _then(_$_ReviewDislikedRemoved(
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

class _$_ReviewDislikedRemoved implements _ReviewDislikedRemoved {
  const _$_ReviewDislikedRemoved(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDislikedRemoved &&
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
  _$$_ReviewDislikedRemovedCopyWith<_$_ReviewDislikedRemoved> get copyWith =>
      __$$_ReviewDislikedRemovedCopyWithImpl<_$_ReviewDislikedRemoved>(
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
      required final int customerId}) = _$_ReviewDislikedRemoved;

  int get reviewId;
  int get customerId;
  @JsonKey(ignore: true)
  _$$_ReviewDislikedRemovedCopyWith<_$_ReviewDislikedRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SwitchReviewReactionCopyWith<$Res> {
  factory _$$_SwitchReviewReactionCopyWith(_$_SwitchReviewReaction value,
          $Res Function(_$_SwitchReviewReaction) then) =
      __$$_SwitchReviewReactionCopyWithImpl<$Res>;
  @useResult
  $Res call({int reviewId, int customerId, bool liked, bool disliked});
}

/// @nodoc
class __$$_SwitchReviewReactionCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$_SwitchReviewReaction>
    implements _$$_SwitchReviewReactionCopyWith<$Res> {
  __$$_SwitchReviewReactionCopyWithImpl(_$_SwitchReviewReaction _value,
      $Res Function(_$_SwitchReviewReaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? customerId = null,
    Object? liked = null,
    Object? disliked = null,
  }) {
    return _then(_$_SwitchReviewReaction(
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

class _$_SwitchReviewReaction implements _SwitchReviewReaction {
  const _$_SwitchReviewReaction(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchReviewReaction &&
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
  _$$_SwitchReviewReactionCopyWith<_$_SwitchReviewReaction> get copyWith =>
      __$$_SwitchReviewReactionCopyWithImpl<_$_SwitchReviewReaction>(
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
      required final bool disliked}) = _$_SwitchReviewReaction;

  int get reviewId;
  int get customerId;
  bool get liked;
  bool get disliked;
  @JsonKey(ignore: true)
  _$$_SwitchReviewReactionCopyWith<_$_SwitchReviewReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshReviewsCopyWith<$Res> {
  factory _$$_RefreshReviewsCopyWith(
          _$_RefreshReviews value, $Res Function(_$_RefreshReviews) then) =
      __$$_RefreshReviewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshReviewsCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$_RefreshReviews> implements _$$_RefreshReviewsCopyWith<$Res> {
  __$$_RefreshReviewsCopyWithImpl(
      _$_RefreshReviews _value, $Res Function(_$_RefreshReviews) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshReviews implements _RefreshReviews {
  const _$_RefreshReviews();

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.refreshReviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshReviews);
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
  const factory _RefreshReviews() = _$_RefreshReviews;
}

/// @nodoc
abstract class _$$_RefreshReviewsErrorCopyWith<$Res> {
  factory _$$_RefreshReviewsErrorCopyWith(_$_RefreshReviewsError value,
          $Res Function(_$_RefreshReviewsError) then) =
      __$$_RefreshReviewsErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_RefreshReviewsErrorCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res,
        _$_RefreshReviewsError>
    implements _$$_RefreshReviewsErrorCopyWith<$Res> {
  __$$_RefreshReviewsErrorCopyWithImpl(_$_RefreshReviewsError _value,
      $Res Function(_$_RefreshReviewsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_RefreshReviewsError(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RefreshReviewsError implements _RefreshReviewsError {
  const _$_RefreshReviewsError({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.refreshReviewsError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshReviewsError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshReviewsErrorCopyWith<_$_RefreshReviewsError> get copyWith =>
      __$$_RefreshReviewsErrorCopyWithImpl<_$_RefreshReviewsError>(
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
      _$_RefreshReviewsError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_RefreshReviewsErrorCopyWith<_$_RefreshReviewsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearReviewsCopyWith<$Res> {
  factory _$$_ClearReviewsCopyWith(
          _$_ClearReviews value, $Res Function(_$_ClearReviews) then) =
      __$$_ClearReviewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearReviewsCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetEventCopyWithImpl<$Res, _$_ClearReviews>
    implements _$$_ClearReviewsCopyWith<$Res> {
  __$$_ClearReviewsCopyWithImpl(
      _$_ClearReviews _value, $Res Function(_$_ClearReviews) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearReviews implements _ClearReviews {
  const _$_ClearReviews();

  @override
  String toString() {
    return 'DraggableArtistReviewSheetEvent.clearReviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearReviews);
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
  const factory _ClearReviews() = _$_ClearReviews;
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
abstract class _$$DraggableArtistReviewSheetStateInitialCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$DraggableArtistReviewSheetStateInitialCopyWith(
          _$DraggableArtistReviewSheetStateInitial value,
          $Res Function(_$DraggableArtistReviewSheetStateInitial) then) =
      __$$DraggableArtistReviewSheetStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$DraggableArtistReviewSheetStateInitialCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$DraggableArtistReviewSheetStateInitial>
    implements _$$DraggableArtistReviewSheetStateInitialCopyWith<$Res> {
  __$$DraggableArtistReviewSheetStateInitialCopyWithImpl(
      _$DraggableArtistReviewSheetStateInitial _value,
      $Res Function(_$DraggableArtistReviewSheetStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$DraggableArtistReviewSheetStateInitial(
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

class _$DraggableArtistReviewSheetStateInitial
    implements DraggableArtistReviewSheetStateInitial {
  const _$DraggableArtistReviewSheetStateInitial(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraggableArtistReviewSheetStateInitial &&
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
  _$$DraggableArtistReviewSheetStateInitialCopyWith<
          _$DraggableArtistReviewSheetStateInitial>
      get copyWith => __$$DraggableArtistReviewSheetStateInitialCopyWithImpl<
          _$DraggableArtistReviewSheetStateInitial>(this, _$identity);

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
      _$DraggableArtistReviewSheetStateInitial;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$DraggableArtistReviewSheetStateInitialCopyWith<
          _$DraggableArtistReviewSheetStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewSheetConfiguredCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ReviewSheetConfiguredCopyWith(_$ReviewSheetConfigured value,
          $Res Function(_$ReviewSheetConfigured) then) =
      __$$ReviewSheetConfiguredCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ReviewSheetConfiguredCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ReviewSheetConfigured>
    implements _$$ReviewSheetConfiguredCopyWith<$Res> {
  __$$ReviewSheetConfiguredCopyWithImpl(_$ReviewSheetConfigured _value,
      $Res Function(_$ReviewSheetConfigured) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ReviewSheetConfigured(
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

class _$ReviewSheetConfigured implements ReviewSheetConfigured {
  const _$ReviewSheetConfigured(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewSheetConfigured &&
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
  _$$ReviewSheetConfiguredCopyWith<_$ReviewSheetConfigured> get copyWith =>
      __$$ReviewSheetConfiguredCopyWithImpl<_$ReviewSheetConfigured>(
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
      required final List<ReviewItem> reviews}) = _$ReviewSheetConfigured;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewSheetConfiguredCopyWith<_$ReviewSheetConfigured> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeReviewCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$LikeReviewCopyWith(
          _$LikeReview value, $Res Function(_$LikeReview) then) =
      __$$LikeReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$LikeReviewCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res, _$LikeReview>
    implements _$$LikeReviewCopyWith<$Res> {
  __$$LikeReviewCopyWithImpl(
      _$LikeReview _value, $Res Function(_$LikeReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$LikeReview(
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

class _$LikeReview implements LikeReview {
  const _$LikeReview(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeReview &&
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
  _$$LikeReviewCopyWith<_$LikeReview> get copyWith =>
      __$$LikeReviewCopyWithImpl<_$LikeReview>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$LikeReview;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$LikeReviewCopyWith<_$LikeReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeReviewErrorCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$LikeReviewErrorCopyWith(
          _$LikeReviewError value, $Res Function(_$LikeReviewError) then) =
      __$$LikeReviewErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$LikeReviewErrorCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$LikeReviewError> implements _$$LikeReviewErrorCopyWith<$Res> {
  __$$LikeReviewErrorCopyWithImpl(
      _$LikeReviewError _value, $Res Function(_$LikeReviewError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LikeReviewError(
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

class _$LikeReviewError implements LikeReviewError {
  const _$LikeReviewError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeReviewError &&
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
  _$$LikeReviewErrorCopyWith<_$LikeReviewError> get copyWith =>
      __$$LikeReviewErrorCopyWithImpl<_$LikeReviewError>(this, _$identity);

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
      required final String errorMessage}) = _$LikeReviewError;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LikeReviewErrorCopyWith<_$LikeReviewError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeReviewCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$DislikeReviewCopyWith(
          _$DislikeReview value, $Res Function(_$DislikeReview) then) =
      __$$DislikeReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$DislikeReviewCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res, _$DislikeReview>
    implements _$$DislikeReviewCopyWith<$Res> {
  __$$DislikeReviewCopyWithImpl(
      _$DislikeReview _value, $Res Function(_$DislikeReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$DislikeReview(
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

class _$DislikeReview implements DislikeReview {
  const _$DislikeReview(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DislikeReview &&
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
  _$$DislikeReviewCopyWith<_$DislikeReview> get copyWith =>
      __$$DislikeReviewCopyWithImpl<_$DislikeReview>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$DislikeReview;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$DislikeReviewCopyWith<_$DislikeReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeReviewErrorCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$DislikeReviewErrorCopyWith(_$DislikeReviewError value,
          $Res Function(_$DislikeReviewError) then) =
      __$$DislikeReviewErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$DislikeReviewErrorCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$DislikeReviewError> implements _$$DislikeReviewErrorCopyWith<$Res> {
  __$$DislikeReviewErrorCopyWithImpl(
      _$DislikeReviewError _value, $Res Function(_$DislikeReviewError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$DislikeReviewError(
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

class _$DislikeReviewError implements DislikeReviewError {
  const _$DislikeReviewError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DislikeReviewError &&
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
  _$$DislikeReviewErrorCopyWith<_$DislikeReviewError> get copyWith =>
      __$$DislikeReviewErrorCopyWithImpl<_$DislikeReviewError>(
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
      required final String errorMessage}) = _$DislikeReviewError;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$DislikeReviewErrorCopyWith<_$DislikeReviewError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeRemovedCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$LikeRemovedCopyWith(
          _$LikeRemoved value, $Res Function(_$LikeRemoved) then) =
      __$$LikeRemovedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$LikeRemovedCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res, _$LikeRemoved>
    implements _$$LikeRemovedCopyWith<$Res> {
  __$$LikeRemovedCopyWithImpl(
      _$LikeRemoved _value, $Res Function(_$LikeRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$LikeRemoved(
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

class _$LikeRemoved implements LikeRemoved {
  const _$LikeRemoved(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeRemoved &&
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
  _$$LikeRemovedCopyWith<_$LikeRemoved> get copyWith =>
      __$$LikeRemovedCopyWithImpl<_$LikeRemoved>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$LikeRemoved;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$LikeRemovedCopyWith<_$LikeRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeRemovedErrorCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$LikeRemovedErrorCopyWith(
          _$LikeRemovedError value, $Res Function(_$LikeRemovedError) then) =
      __$$LikeRemovedErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$LikeRemovedErrorCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$LikeRemovedError> implements _$$LikeRemovedErrorCopyWith<$Res> {
  __$$LikeRemovedErrorCopyWithImpl(
      _$LikeRemovedError _value, $Res Function(_$LikeRemovedError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LikeRemovedError(
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

class _$LikeRemovedError implements LikeRemovedError {
  const _$LikeRemovedError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeRemovedError &&
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
  _$$LikeRemovedErrorCopyWith<_$LikeRemovedError> get copyWith =>
      __$$LikeRemovedErrorCopyWithImpl<_$LikeRemovedError>(this, _$identity);

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
      required final String errorMessage}) = _$LikeRemovedError;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LikeRemovedErrorCopyWith<_$LikeRemovedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeRemovedCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$DislikeRemovedCopyWith(
          _$DislikeRemoved value, $Res Function(_$DislikeRemoved) then) =
      __$$DislikeRemovedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$DislikeRemovedCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$DislikeRemoved> implements _$$DislikeRemovedCopyWith<$Res> {
  __$$DislikeRemovedCopyWithImpl(
      _$DislikeRemoved _value, $Res Function(_$DislikeRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$DislikeRemoved(
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

class _$DislikeRemoved implements DislikeRemoved {
  const _$DislikeRemoved(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DislikeRemoved &&
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
  _$$DislikeRemovedCopyWith<_$DislikeRemoved> get copyWith =>
      __$$DislikeRemovedCopyWithImpl<_$DislikeRemoved>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$DislikeRemoved;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$DislikeRemovedCopyWith<_$DislikeRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeRemovedErrorCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$DislikeRemovedErrorCopyWith(_$DislikeRemovedError value,
          $Res Function(_$DislikeRemovedError) then) =
      __$$DislikeRemovedErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$DislikeRemovedErrorCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$DislikeRemovedError> implements _$$DislikeRemovedErrorCopyWith<$Res> {
  __$$DislikeRemovedErrorCopyWithImpl(
      _$DislikeRemovedError _value, $Res Function(_$DislikeRemovedError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$DislikeRemovedError(
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

class _$DislikeRemovedError implements DislikeRemovedError {
  const _$DislikeRemovedError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DislikeRemovedError &&
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
  _$$DislikeRemovedErrorCopyWith<_$DislikeRemovedError> get copyWith =>
      __$$DislikeRemovedErrorCopyWithImpl<_$DislikeRemovedError>(
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
      required final String errorMessage}) = _$DislikeRemovedError;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$DislikeRemovedErrorCopyWith<_$DislikeRemovedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewReactionCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ReviewReactionCopyWith(
          _$ReviewReaction value, $Res Function(_$ReviewReaction) then) =
      __$$ReviewReactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ReviewReactionCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ReviewReaction> implements _$$ReviewReactionCopyWith<$Res> {
  __$$ReviewReactionCopyWithImpl(
      _$ReviewReaction _value, $Res Function(_$ReviewReaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ReviewReaction(
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

class _$ReviewReaction implements ReviewReaction {
  const _$ReviewReaction(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewReaction &&
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
  _$$ReviewReactionCopyWith<_$ReviewReaction> get copyWith =>
      __$$ReviewReactionCopyWithImpl<_$ReviewReaction>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$ReviewReaction;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewReactionCopyWith<_$ReviewReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewReactionErrorCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ReviewReactionErrorCopyWith(_$ReviewReactionError value,
          $Res Function(_$ReviewReactionError) then) =
      __$$ReviewReactionErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$ReviewReactionErrorCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ReviewReactionError> implements _$$ReviewReactionErrorCopyWith<$Res> {
  __$$ReviewReactionErrorCopyWithImpl(
      _$ReviewReactionError _value, $Res Function(_$ReviewReactionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ReviewReactionError(
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

class _$ReviewReactionError implements ReviewReactionError {
  const _$ReviewReactionError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewReactionError &&
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
  _$$ReviewReactionErrorCopyWith<_$ReviewReactionError> get copyWith =>
      __$$ReviewReactionErrorCopyWithImpl<_$ReviewReactionError>(
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
      required final String errorMessage}) = _$ReviewReactionError;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ReviewReactionErrorCopyWith<_$ReviewReactionError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchReviewReactionCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$SwitchReviewReactionCopyWith(_$SwitchReviewReaction value,
          $Res Function(_$SwitchReviewReaction) then) =
      __$$SwitchReviewReactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$SwitchReviewReactionCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$SwitchReviewReaction>
    implements _$$SwitchReviewReactionCopyWith<$Res> {
  __$$SwitchReviewReactionCopyWithImpl(_$SwitchReviewReaction _value,
      $Res Function(_$SwitchReviewReaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$SwitchReviewReaction(
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

class _$SwitchReviewReaction implements SwitchReviewReaction {
  const _$SwitchReviewReaction(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchReviewReaction &&
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
  _$$SwitchReviewReactionCopyWith<_$SwitchReviewReaction> get copyWith =>
      __$$SwitchReviewReactionCopyWithImpl<_$SwitchReviewReaction>(
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
      required final List<ReviewItem> reviews}) = _$SwitchReviewReaction;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$SwitchReviewReactionCopyWith<_$SwitchReviewReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchReviewReactionErrorCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$SwitchReviewReactionErrorCopyWith(
          _$SwitchReviewReactionError value,
          $Res Function(_$SwitchReviewReactionError) then) =
      __$$SwitchReviewReactionErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$SwitchReviewReactionErrorCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$SwitchReviewReactionError>
    implements _$$SwitchReviewReactionErrorCopyWith<$Res> {
  __$$SwitchReviewReactionErrorCopyWithImpl(_$SwitchReviewReactionError _value,
      $Res Function(_$SwitchReviewReactionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SwitchReviewReactionError(
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

class _$SwitchReviewReactionError implements SwitchReviewReactionError {
  const _$SwitchReviewReactionError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchReviewReactionError &&
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
  _$$SwitchReviewReactionErrorCopyWith<_$SwitchReviewReactionError>
      get copyWith => __$$SwitchReviewReactionErrorCopyWithImpl<
          _$SwitchReviewReactionError>(this, _$identity);

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
      required final String errorMessage}) = _$SwitchReviewReactionError;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SwitchReviewReactionErrorCopyWith<_$SwitchReviewReactionError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshReviewsCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$RefreshReviewsCopyWith(
          _$RefreshReviews value, $Res Function(_$RefreshReviews) then) =
      __$$RefreshReviewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$RefreshReviewsCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$RefreshReviews> implements _$$RefreshReviewsCopyWith<$Res> {
  __$$RefreshReviewsCopyWithImpl(
      _$RefreshReviews _value, $Res Function(_$RefreshReviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$RefreshReviews(
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

class _$RefreshReviews implements RefreshReviews {
  const _$RefreshReviews(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshReviews &&
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
  _$$RefreshReviewsCopyWith<_$RefreshReviews> get copyWith =>
      __$$RefreshReviewsCopyWithImpl<_$RefreshReviews>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$RefreshReviews;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$RefreshReviewsCopyWith<_$RefreshReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshReviewsErrorCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$RefreshReviewsErrorCopyWith(_$RefreshReviewsError value,
          $Res Function(_$RefreshReviewsError) then) =
      __$$RefreshReviewsErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String errorMessage});
}

/// @nodoc
class __$$RefreshReviewsErrorCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$RefreshReviewsError> implements _$$RefreshReviewsErrorCopyWith<$Res> {
  __$$RefreshReviewsErrorCopyWithImpl(
      _$RefreshReviewsError _value, $Res Function(_$RefreshReviewsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? errorMessage = null,
  }) {
    return _then(_$RefreshReviewsError(
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

class _$RefreshReviewsError implements RefreshReviewsError {
  const _$RefreshReviewsError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshReviewsError &&
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
  _$$RefreshReviewsErrorCopyWith<_$RefreshReviewsError> get copyWith =>
      __$$RefreshReviewsErrorCopyWithImpl<_$RefreshReviewsError>(
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
      required final String errorMessage}) = _$RefreshReviewsError;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$RefreshReviewsErrorCopyWith<_$RefreshReviewsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewsLoadingCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ReviewsLoadingCopyWith(
          _$ReviewsLoading value, $Res Function(_$ReviewsLoading) then) =
      __$$ReviewsLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ReviewsLoadingCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ReviewsLoading> implements _$$ReviewsLoadingCopyWith<$Res> {
  __$$ReviewsLoadingCopyWithImpl(
      _$ReviewsLoading _value, $Res Function(_$ReviewsLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ReviewsLoading(
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

class _$ReviewsLoading implements ReviewsLoading {
  const _$ReviewsLoading(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsLoading &&
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
  _$$ReviewsLoadingCopyWith<_$ReviewsLoading> get copyWith =>
      __$$ReviewsLoadingCopyWithImpl<_$ReviewsLoading>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$ReviewsLoading;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewsLoadingCopyWith<_$ReviewsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewsLoadedCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ReviewsLoadedCopyWith(
          _$ReviewsLoaded value, $Res Function(_$ReviewsLoaded) then) =
      __$$ReviewsLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ReviewsLoadedCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res, _$ReviewsLoaded>
    implements _$$ReviewsLoadedCopyWith<$Res> {
  __$$ReviewsLoadedCopyWithImpl(
      _$ReviewsLoaded _value, $Res Function(_$ReviewsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ReviewsLoaded(
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

class _$ReviewsLoaded implements ReviewsLoaded {
  const _$ReviewsLoaded(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsLoaded &&
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
  _$$ReviewsLoadedCopyWith<_$ReviewsLoaded> get copyWith =>
      __$$ReviewsLoadedCopyWithImpl<_$ReviewsLoaded>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$ReviewsLoaded;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewsLoadedCopyWith<_$ReviewsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearedReviewsCopyWith<$Res>
    implements $DraggableArtistReviewSheetStateCopyWith<$Res> {
  factory _$$ClearedReviewsCopyWith(
          _$ClearedReviews value, $Res Function(_$ClearedReviews) then) =
      __$$ClearedReviewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ClearedReviewsCopyWithImpl<$Res>
    extends _$DraggableArtistReviewSheetStateCopyWithImpl<$Res,
        _$ClearedReviews> implements _$$ClearedReviewsCopyWith<$Res> {
  __$$ClearedReviewsCopyWithImpl(
      _$ClearedReviews _value, $Res Function(_$ClearedReviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ClearedReviews(
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

class _$ClearedReviews implements ClearedReviews {
  const _$ClearedReviews(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearedReviews &&
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
  _$$ClearedReviewsCopyWith<_$ClearedReviews> get copyWith =>
      __$$ClearedReviewsCopyWithImpl<_$ClearedReviews>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$ClearedReviews;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ClearedReviewsCopyWith<_$ClearedReviews> get copyWith =>
      throw _privateConstructorUsedError;
}
