// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_reviews_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArtistReviewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistReviewsEventCopyWith<$Res> {
  factory $ArtistReviewsEventCopyWith(
          ArtistReviewsEvent value, $Res Function(ArtistReviewsEvent) then) =
      _$ArtistReviewsEventCopyWithImpl<$Res, ArtistReviewsEvent>;
}

/// @nodoc
class _$ArtistReviewsEventCopyWithImpl<$Res, $Val extends ArtistReviewsEvent>
    implements $ArtistReviewsEventCopyWith<$Res> {
  _$ArtistReviewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialEventCopyWith<$Res> {
  factory _$$_InitialEventCopyWith(
          _$_InitialEvent value, $Res Function(_$_InitialEvent) then) =
      __$$_InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialEventCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_InitialEvent>
    implements _$$_InitialEventCopyWith<$Res> {
  __$$_InitialEventCopyWithImpl(
      _$_InitialEvent _value, $Res Function(_$_InitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent();

  @override
  String toString() {
    return 'ArtistReviewsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements ArtistReviewsEvent {
  const factory _InitialEvent() = _$_InitialEvent;
}

/// @nodoc
abstract class _$$_LoadingEventCopyWith<$Res> {
  factory _$$_LoadingEventCopyWith(
          _$_LoadingEvent value, $Res Function(_$_LoadingEvent) then) =
      __$$_LoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingEventCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_LoadingEvent>
    implements _$$_LoadingEventCopyWith<$Res> {
  __$$_LoadingEventCopyWithImpl(
      _$_LoadingEvent _value, $Res Function(_$_LoadingEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingEvent implements _LoadingEvent {
  const _$_LoadingEvent();

  @override
  String toString() {
    return 'ArtistReviewsEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingEvent implements ArtistReviewsEvent {
  const factory _LoadingEvent() = _$_LoadingEvent;
}

/// @nodoc
abstract class _$$_LoadReviewsEventCopyWith<$Res> {
  factory _$$_LoadReviewsEventCopyWith(
          _$_LoadReviewsEvent value, $Res Function(_$_LoadReviewsEvent) then) =
      __$$_LoadReviewsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int artistId});
}

/// @nodoc
class __$$_LoadReviewsEventCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_LoadReviewsEvent>
    implements _$$_LoadReviewsEventCopyWith<$Res> {
  __$$_LoadReviewsEventCopyWithImpl(
      _$_LoadReviewsEvent _value, $Res Function(_$_LoadReviewsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$_LoadReviewsEvent(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadReviewsEvent implements _LoadReviewsEvent {
  const _$_LoadReviewsEvent(this.artistId);

  @override
  final int artistId;

  @override
  String toString() {
    return 'ArtistReviewsEvent.loadReviews(artistId: $artistId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadReviewsEvent &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadReviewsEventCopyWith<_$_LoadReviewsEvent> get copyWith =>
      __$$_LoadReviewsEventCopyWithImpl<_$_LoadReviewsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return loadReviews(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return loadReviews?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
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
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return loadReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return loadReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (loadReviews != null) {
      return loadReviews(this);
    }
    return orElse();
  }
}

abstract class _LoadReviewsEvent implements ArtistReviewsEvent {
  const factory _LoadReviewsEvent(final int artistId) = _$_LoadReviewsEvent;

  int get artistId;
  @JsonKey(ignore: true)
  _$$_LoadReviewsEventCopyWith<_$_LoadReviewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadReviewsSuccessEventCopyWith<$Res> {
  factory _$$_LoadReviewsSuccessEventCopyWith(_$_LoadReviewsSuccessEvent value,
          $Res Function(_$_LoadReviewsSuccessEvent) then) =
      __$$_LoadReviewsSuccessEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$_LoadReviewsSuccessEventCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_LoadReviewsSuccessEvent>
    implements _$$_LoadReviewsSuccessEventCopyWith<$Res> {
  __$$_LoadReviewsSuccessEventCopyWithImpl(_$_LoadReviewsSuccessEvent _value,
      $Res Function(_$_LoadReviewsSuccessEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$_LoadReviewsSuccessEvent(
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

class _$_LoadReviewsSuccessEvent implements _LoadReviewsSuccessEvent {
  const _$_LoadReviewsSuccessEvent(
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
    return 'ArtistReviewsEvent.loadReviewsSuccess(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadReviewsSuccessEvent &&
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
  _$$_LoadReviewsSuccessEventCopyWith<_$_LoadReviewsSuccessEvent>
      get copyWith =>
          __$$_LoadReviewsSuccessEventCopyWithImpl<_$_LoadReviewsSuccessEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return loadReviewsSuccess(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return loadReviewsSuccess?.call(
        reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    required TResult orElse(),
  }) {
    if (loadReviewsSuccess != null) {
      return loadReviewsSuccess(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return loadReviewsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return loadReviewsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (loadReviewsSuccess != null) {
      return loadReviewsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadReviewsSuccessEvent implements ArtistReviewsEvent {
  const factory _LoadReviewsSuccessEvent(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$_LoadReviewsSuccessEvent;

  Map<int, Reactions> get reviewReactions;
  Map<int, Reaction> get customerReactions;
  List<ReviewItem> get reviews;
  @JsonKey(ignore: true)
  _$$_LoadReviewsSuccessEventCopyWith<_$_LoadReviewsSuccessEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadReviewsErrorEventCopyWith<$Res> {
  factory _$$_LoadReviewsErrorEventCopyWith(_$_LoadReviewsErrorEvent value,
          $Res Function(_$_LoadReviewsErrorEvent) then) =
      __$$_LoadReviewsErrorEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LoadReviewsErrorEventCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_LoadReviewsErrorEvent>
    implements _$$_LoadReviewsErrorEventCopyWith<$Res> {
  __$$_LoadReviewsErrorEventCopyWithImpl(_$_LoadReviewsErrorEvent _value,
      $Res Function(_$_LoadReviewsErrorEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LoadReviewsErrorEvent(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadReviewsErrorEvent implements _LoadReviewsErrorEvent {
  const _$_LoadReviewsErrorEvent(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ArtistReviewsEvent.loadReviewsError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadReviewsErrorEvent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadReviewsErrorEventCopyWith<_$_LoadReviewsErrorEvent> get copyWith =>
      __$$_LoadReviewsErrorEventCopyWithImpl<_$_LoadReviewsErrorEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return loadReviewsError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return loadReviewsError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    required TResult orElse(),
  }) {
    if (loadReviewsError != null) {
      return loadReviewsError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return loadReviewsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return loadReviewsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (loadReviewsError != null) {
      return loadReviewsError(this);
    }
    return orElse();
  }
}

abstract class _LoadReviewsErrorEvent implements ArtistReviewsEvent {
  const factory _LoadReviewsErrorEvent(final String message) =
      _$_LoadReviewsErrorEvent;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoadReviewsErrorEventCopyWith<_$_LoadReviewsErrorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreReviewsEventCopyWith<$Res> {
  factory _$$_LoadMoreReviewsEventCopyWith(_$_LoadMoreReviewsEvent value,
          $Res Function(_$_LoadMoreReviewsEvent) then) =
      __$$_LoadMoreReviewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMoreReviewsEventCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_LoadMoreReviewsEvent>
    implements _$$_LoadMoreReviewsEventCopyWith<$Res> {
  __$$_LoadMoreReviewsEventCopyWithImpl(_$_LoadMoreReviewsEvent _value,
      $Res Function(_$_LoadMoreReviewsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMoreReviewsEvent implements _LoadMoreReviewsEvent {
  const _$_LoadMoreReviewsEvent();

  @override
  String toString() {
    return 'ArtistReviewsEvent.loadMoreReviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMoreReviewsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return loadMoreReviews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return loadMoreReviews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    required TResult orElse(),
  }) {
    if (loadMoreReviews != null) {
      return loadMoreReviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return loadMoreReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return loadMoreReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (loadMoreReviews != null) {
      return loadMoreReviews(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreReviewsEvent implements ArtistReviewsEvent {
  const factory _LoadMoreReviewsEvent() = _$_LoadMoreReviewsEvent;
}

/// @nodoc
abstract class _$$_NoMoreDataEventCopyWith<$Res> {
  factory _$$_NoMoreDataEventCopyWith(
          _$_NoMoreDataEvent value, $Res Function(_$_NoMoreDataEvent) then) =
      __$$_NoMoreDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoMoreDataEventCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_NoMoreDataEvent>
    implements _$$_NoMoreDataEventCopyWith<$Res> {
  __$$_NoMoreDataEventCopyWithImpl(
      _$_NoMoreDataEvent _value, $Res Function(_$_NoMoreDataEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoMoreDataEvent implements _NoMoreDataEvent {
  const _$_NoMoreDataEvent();

  @override
  String toString() {
    return 'ArtistReviewsEvent.noMoreData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoMoreDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return noMoreData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return noMoreData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
    required TResult orElse(),
  }) {
    if (noMoreData != null) {
      return noMoreData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return noMoreData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return noMoreData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (noMoreData != null) {
      return noMoreData(this);
    }
    return orElse();
  }
}

abstract class _NoMoreDataEvent implements ArtistReviewsEvent {
  const factory _NoMoreDataEvent() = _$_NoMoreDataEvent;
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
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_ReviewLiked>
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
    return 'ArtistReviewsEvent.reviewLiked(reviewId: $reviewId, customerId: $customerId)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return reviewLiked(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return reviewLiked?.call(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
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
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return reviewLiked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return reviewLiked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (reviewLiked != null) {
      return reviewLiked(this);
    }
    return orElse();
  }
}

abstract class _ReviewLiked implements ArtistReviewsEvent {
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
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_ReviewDisliked>
    implements _$$_ReviewDislikedCopyWith<$Res> {
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
    return 'ArtistReviewsEvent.reviewDisliked(reviewId: $reviewId, customerId: $customerId)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return reviewDisliked(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return reviewDisliked?.call(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
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
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return reviewDisliked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return reviewDisliked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (reviewDisliked != null) {
      return reviewDisliked(this);
    }
    return orElse();
  }
}

abstract class _ReviewDisliked implements ArtistReviewsEvent {
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
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_ReviewLikeRemoved>
    implements _$$_ReviewLikeRemovedCopyWith<$Res> {
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
    return 'ArtistReviewsEvent.reviewLikeRemoved(reviewId: $reviewId, customerId: $customerId)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return reviewLikeRemoved(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return reviewLikeRemoved?.call(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
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
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return reviewLikeRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return reviewLikeRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (reviewLikeRemoved != null) {
      return reviewLikeRemoved(this);
    }
    return orElse();
  }
}

abstract class _ReviewLikeRemoved implements ArtistReviewsEvent {
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
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_ReviewDislikedRemoved>
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
    return 'ArtistReviewsEvent.reviewDislikedRemoved(reviewId: $reviewId, customerId: $customerId)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return reviewDislikedRemoved(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return reviewDislikedRemoved?.call(reviewId, customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
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
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return reviewDislikedRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return reviewDislikedRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (reviewDislikedRemoved != null) {
      return reviewDislikedRemoved(this);
    }
    return orElse();
  }
}

abstract class _ReviewDislikedRemoved implements ArtistReviewsEvent {
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
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$_SwitchReviewReaction>
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
    return 'ArtistReviewsEvent.switchReviewReaction(reviewId: $reviewId, customerId: $customerId, liked: $liked, disliked: $disliked)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int artistId) loadReviews,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadReviewsSuccess,
    required TResult Function(String message) loadReviewsError,
    required TResult Function() loadMoreReviews,
    required TResult Function() noMoreData,
    required TResult Function(int reviewId, int customerId) reviewLiked,
    required TResult Function(int reviewId, int customerId) reviewDisliked,
    required TResult Function(int reviewId, int customerId) reviewLikeRemoved,
    required TResult Function(int reviewId, int customerId)
        reviewDislikedRemoved,
    required TResult Function(
            int reviewId, int customerId, bool liked, bool disliked)
        switchReviewReaction,
  }) {
    return switchReviewReaction(reviewId, customerId, liked, disliked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int artistId)? loadReviews,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult? Function(String message)? loadReviewsError,
    TResult? Function()? loadMoreReviews,
    TResult? Function()? noMoreData,
    TResult? Function(int reviewId, int customerId)? reviewLiked,
    TResult? Function(int reviewId, int customerId)? reviewDisliked,
    TResult? Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult? Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult? Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
  }) {
    return switchReviewReaction?.call(reviewId, customerId, liked, disliked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int artistId)? loadReviews,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadReviewsSuccess,
    TResult Function(String message)? loadReviewsError,
    TResult Function()? loadMoreReviews,
    TResult Function()? noMoreData,
    TResult Function(int reviewId, int customerId)? reviewLiked,
    TResult Function(int reviewId, int customerId)? reviewDisliked,
    TResult Function(int reviewId, int customerId)? reviewLikeRemoved,
    TResult Function(int reviewId, int customerId)? reviewDislikedRemoved,
    TResult Function(int reviewId, int customerId, bool liked, bool disliked)?
        switchReviewReaction,
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
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_LoadReviewsEvent value) loadReviews,
    required TResult Function(_LoadReviewsSuccessEvent value)
        loadReviewsSuccess,
    required TResult Function(_LoadReviewsErrorEvent value) loadReviewsError,
    required TResult Function(_LoadMoreReviewsEvent value) loadMoreReviews,
    required TResult Function(_NoMoreDataEvent value) noMoreData,
    required TResult Function(_ReviewLiked value) reviewLiked,
    required TResult Function(_ReviewDisliked value) reviewDisliked,
    required TResult Function(_ReviewLikeRemoved value) reviewLikeRemoved,
    required TResult Function(_ReviewDislikedRemoved value)
        reviewDislikedRemoved,
    required TResult Function(_SwitchReviewReaction value) switchReviewReaction,
  }) {
    return switchReviewReaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_LoadingEvent value)? loading,
    TResult? Function(_LoadReviewsEvent value)? loadReviews,
    TResult? Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult? Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult? Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult? Function(_NoMoreDataEvent value)? noMoreData,
    TResult? Function(_ReviewLiked value)? reviewLiked,
    TResult? Function(_ReviewDisliked value)? reviewDisliked,
    TResult? Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult? Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult? Function(_SwitchReviewReaction value)? switchReviewReaction,
  }) {
    return switchReviewReaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_LoadReviewsEvent value)? loadReviews,
    TResult Function(_LoadReviewsSuccessEvent value)? loadReviewsSuccess,
    TResult Function(_LoadReviewsErrorEvent value)? loadReviewsError,
    TResult Function(_LoadMoreReviewsEvent value)? loadMoreReviews,
    TResult Function(_NoMoreDataEvent value)? noMoreData,
    TResult Function(_ReviewLiked value)? reviewLiked,
    TResult Function(_ReviewDisliked value)? reviewDisliked,
    TResult Function(_ReviewLikeRemoved value)? reviewLikeRemoved,
    TResult Function(_ReviewDislikedRemoved value)? reviewDislikedRemoved,
    TResult Function(_SwitchReviewReaction value)? switchReviewReaction,
    required TResult orElse(),
  }) {
    if (switchReviewReaction != null) {
      return switchReviewReaction(this);
    }
    return orElse();
  }
}

abstract class _SwitchReviewReaction implements ArtistReviewsEvent {
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
mixin _$ArtistReviewsState {
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
        loading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loaded,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)
        error,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noData,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadedMore,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noMoreData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistReviewsInitial value) initial,
    required TResult Function(ArtistReviewsLoading value) loading,
    required TResult Function(ArtistReviewsLoaded value) loaded,
    required TResult Function(ArtistReviewsError value) error,
    required TResult Function(ArtistReviewsNoData value) noData,
    required TResult Function(ArtistReviewsLoadedMore value) loadedMore,
    required TResult Function(ArtistReviewsNoMoreData value) noMoreData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistReviewsInitial value)? initial,
    TResult? Function(ArtistReviewsLoading value)? loading,
    TResult? Function(ArtistReviewsLoaded value)? loaded,
    TResult? Function(ArtistReviewsError value)? error,
    TResult? Function(ArtistReviewsNoData value)? noData,
    TResult? Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult? Function(ArtistReviewsNoMoreData value)? noMoreData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistReviewsInitial value)? initial,
    TResult Function(ArtistReviewsLoading value)? loading,
    TResult Function(ArtistReviewsLoaded value)? loaded,
    TResult Function(ArtistReviewsError value)? error,
    TResult Function(ArtistReviewsNoData value)? noData,
    TResult Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult Function(ArtistReviewsNoMoreData value)? noMoreData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistReviewsStateCopyWith<ArtistReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistReviewsStateCopyWith<$Res> {
  factory $ArtistReviewsStateCopyWith(
          ArtistReviewsState value, $Res Function(ArtistReviewsState) then) =
      _$ArtistReviewsStateCopyWithImpl<$Res, ArtistReviewsState>;
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class _$ArtistReviewsStateCopyWithImpl<$Res, $Val extends ArtistReviewsState>
    implements $ArtistReviewsStateCopyWith<$Res> {
  _$ArtistReviewsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ArtistReviewsInitialCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsInitialCopyWith(_$ArtistReviewsInitial value,
          $Res Function(_$ArtistReviewsInitial) then) =
      __$$ArtistReviewsInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsInitialCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsInitial>
    implements _$$ArtistReviewsInitialCopyWith<$Res> {
  __$$ArtistReviewsInitialCopyWithImpl(_$ArtistReviewsInitial _value,
      $Res Function(_$ArtistReviewsInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsInitial(
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

class _$ArtistReviewsInitial implements ArtistReviewsInitial {
  const _$ArtistReviewsInitial(
      {final Map<int, Reactions> reviewReactions = const {},
      final Map<int, Reaction> customerReactions = const {},
      final List<ReviewItem> reviews = const []})
      : _reviewReactions = reviewReactions,
        _customerReactions = customerReactions,
        _reviews = reviews;

  final Map<int, Reactions> _reviewReactions;
  @override
  @JsonKey()
  Map<int, Reactions> get reviewReactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reviewReactions);
  }

  final Map<int, Reaction> _customerReactions;
  @override
  @JsonKey()
  Map<int, Reaction> get customerReactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customerReactions);
  }

  final List<ReviewItem> _reviews;
  @override
  @JsonKey()
  List<ReviewItem> get reviews {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'ArtistReviewsState.initial(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsInitial &&
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
  _$$ArtistReviewsInitialCopyWith<_$ArtistReviewsInitial> get copyWith =>
      __$$ArtistReviewsInitialCopyWithImpl<_$ArtistReviewsInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loaded,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)
        error,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noData,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadedMore,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noMoreData,
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
        loading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
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
        loading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
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
    required TResult Function(ArtistReviewsInitial value) initial,
    required TResult Function(ArtistReviewsLoading value) loading,
    required TResult Function(ArtistReviewsLoaded value) loaded,
    required TResult Function(ArtistReviewsError value) error,
    required TResult Function(ArtistReviewsNoData value) noData,
    required TResult Function(ArtistReviewsLoadedMore value) loadedMore,
    required TResult Function(ArtistReviewsNoMoreData value) noMoreData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistReviewsInitial value)? initial,
    TResult? Function(ArtistReviewsLoading value)? loading,
    TResult? Function(ArtistReviewsLoaded value)? loaded,
    TResult? Function(ArtistReviewsError value)? error,
    TResult? Function(ArtistReviewsNoData value)? noData,
    TResult? Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult? Function(ArtistReviewsNoMoreData value)? noMoreData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistReviewsInitial value)? initial,
    TResult Function(ArtistReviewsLoading value)? loading,
    TResult Function(ArtistReviewsLoaded value)? loaded,
    TResult Function(ArtistReviewsError value)? error,
    TResult Function(ArtistReviewsNoData value)? noData,
    TResult Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult Function(ArtistReviewsNoMoreData value)? noMoreData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ArtistReviewsInitial implements ArtistReviewsState {
  const factory ArtistReviewsInitial(
      {final Map<int, Reactions> reviewReactions,
      final Map<int, Reaction> customerReactions,
      final List<ReviewItem> reviews}) = _$ArtistReviewsInitial;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsInitialCopyWith<_$ArtistReviewsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsLoadingCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsLoadingCopyWith(_$ArtistReviewsLoading value,
          $Res Function(_$ArtistReviewsLoading) then) =
      __$$ArtistReviewsLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsLoadingCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsLoading>
    implements _$$ArtistReviewsLoadingCopyWith<$Res> {
  __$$ArtistReviewsLoadingCopyWithImpl(_$ArtistReviewsLoading _value,
      $Res Function(_$ArtistReviewsLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsLoading(
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

class _$ArtistReviewsLoading implements ArtistReviewsLoading {
  const _$ArtistReviewsLoading(
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
    return 'ArtistReviewsState.loading(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsLoading &&
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
  _$$ArtistReviewsLoadingCopyWith<_$ArtistReviewsLoading> get copyWith =>
      __$$ArtistReviewsLoadingCopyWithImpl<_$ArtistReviewsLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loaded,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)
        error,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noData,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadedMore,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noMoreData,
  }) {
    return loading(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
  }) {
    return loading?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistReviewsInitial value) initial,
    required TResult Function(ArtistReviewsLoading value) loading,
    required TResult Function(ArtistReviewsLoaded value) loaded,
    required TResult Function(ArtistReviewsError value) error,
    required TResult Function(ArtistReviewsNoData value) noData,
    required TResult Function(ArtistReviewsLoadedMore value) loadedMore,
    required TResult Function(ArtistReviewsNoMoreData value) noMoreData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistReviewsInitial value)? initial,
    TResult? Function(ArtistReviewsLoading value)? loading,
    TResult? Function(ArtistReviewsLoaded value)? loaded,
    TResult? Function(ArtistReviewsError value)? error,
    TResult? Function(ArtistReviewsNoData value)? noData,
    TResult? Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult? Function(ArtistReviewsNoMoreData value)? noMoreData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistReviewsInitial value)? initial,
    TResult Function(ArtistReviewsLoading value)? loading,
    TResult Function(ArtistReviewsLoaded value)? loaded,
    TResult Function(ArtistReviewsError value)? error,
    TResult Function(ArtistReviewsNoData value)? noData,
    TResult Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult Function(ArtistReviewsNoMoreData value)? noMoreData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ArtistReviewsLoading implements ArtistReviewsState {
  const factory ArtistReviewsLoading(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$ArtistReviewsLoading;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsLoadingCopyWith<_$ArtistReviewsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsLoadedCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsLoadedCopyWith(_$ArtistReviewsLoaded value,
          $Res Function(_$ArtistReviewsLoaded) then) =
      __$$ArtistReviewsLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsLoadedCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsLoaded>
    implements _$$ArtistReviewsLoadedCopyWith<$Res> {
  __$$ArtistReviewsLoadedCopyWithImpl(
      _$ArtistReviewsLoaded _value, $Res Function(_$ArtistReviewsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsLoaded(
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

class _$ArtistReviewsLoaded implements ArtistReviewsLoaded {
  const _$ArtistReviewsLoaded(
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
    return 'ArtistReviewsState.loaded(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsLoaded &&
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
  _$$ArtistReviewsLoadedCopyWith<_$ArtistReviewsLoaded> get copyWith =>
      __$$ArtistReviewsLoadedCopyWithImpl<_$ArtistReviewsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loaded,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)
        error,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noData,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadedMore,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noMoreData,
  }) {
    return loaded(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
  }) {
    return loaded?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistReviewsInitial value) initial,
    required TResult Function(ArtistReviewsLoading value) loading,
    required TResult Function(ArtistReviewsLoaded value) loaded,
    required TResult Function(ArtistReviewsError value) error,
    required TResult Function(ArtistReviewsNoData value) noData,
    required TResult Function(ArtistReviewsLoadedMore value) loadedMore,
    required TResult Function(ArtistReviewsNoMoreData value) noMoreData,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistReviewsInitial value)? initial,
    TResult? Function(ArtistReviewsLoading value)? loading,
    TResult? Function(ArtistReviewsLoaded value)? loaded,
    TResult? Function(ArtistReviewsError value)? error,
    TResult? Function(ArtistReviewsNoData value)? noData,
    TResult? Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult? Function(ArtistReviewsNoMoreData value)? noMoreData,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistReviewsInitial value)? initial,
    TResult Function(ArtistReviewsLoading value)? loading,
    TResult Function(ArtistReviewsLoaded value)? loaded,
    TResult Function(ArtistReviewsError value)? error,
    TResult Function(ArtistReviewsNoData value)? noData,
    TResult Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult Function(ArtistReviewsNoMoreData value)? noMoreData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ArtistReviewsLoaded implements ArtistReviewsState {
  const factory ArtistReviewsLoaded(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$ArtistReviewsLoaded;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsLoadedCopyWith<_$ArtistReviewsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsErrorCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsErrorCopyWith(_$ArtistReviewsError value,
          $Res Function(_$ArtistReviewsError) then) =
      __$$ArtistReviewsErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String message});
}

/// @nodoc
class __$$ArtistReviewsErrorCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsError>
    implements _$$ArtistReviewsErrorCopyWith<$Res> {
  __$$ArtistReviewsErrorCopyWithImpl(
      _$ArtistReviewsError _value, $Res Function(_$ArtistReviewsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? message = null,
  }) {
    return _then(_$ArtistReviewsError(
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArtistReviewsError implements ArtistReviewsError {
  const _$ArtistReviewsError(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews,
      required this.message})
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
  final String message;

  @override
  String toString() {
    return 'ArtistReviewsState.error(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsError &&
            const DeepCollectionEquality()
                .equals(other._reviewReactions, _reviewReactions) &&
            const DeepCollectionEquality()
                .equals(other._customerReactions, _customerReactions) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reviewReactions),
      const DeepCollectionEquality().hash(_customerReactions),
      const DeepCollectionEquality().hash(_reviews),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistReviewsErrorCopyWith<_$ArtistReviewsError> get copyWith =>
      __$$ArtistReviewsErrorCopyWithImpl<_$ArtistReviewsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loaded,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)
        error,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noData,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadedMore,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noMoreData,
  }) {
    return error(reviewReactions, customerReactions, reviews, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
  }) {
    return error?.call(reviewReactions, customerReactions, reviews, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(reviewReactions, customerReactions, reviews, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistReviewsInitial value) initial,
    required TResult Function(ArtistReviewsLoading value) loading,
    required TResult Function(ArtistReviewsLoaded value) loaded,
    required TResult Function(ArtistReviewsError value) error,
    required TResult Function(ArtistReviewsNoData value) noData,
    required TResult Function(ArtistReviewsLoadedMore value) loadedMore,
    required TResult Function(ArtistReviewsNoMoreData value) noMoreData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistReviewsInitial value)? initial,
    TResult? Function(ArtistReviewsLoading value)? loading,
    TResult? Function(ArtistReviewsLoaded value)? loaded,
    TResult? Function(ArtistReviewsError value)? error,
    TResult? Function(ArtistReviewsNoData value)? noData,
    TResult? Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult? Function(ArtistReviewsNoMoreData value)? noMoreData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistReviewsInitial value)? initial,
    TResult Function(ArtistReviewsLoading value)? loading,
    TResult Function(ArtistReviewsLoaded value)? loaded,
    TResult Function(ArtistReviewsError value)? error,
    TResult Function(ArtistReviewsNoData value)? noData,
    TResult Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult Function(ArtistReviewsNoMoreData value)? noMoreData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ArtistReviewsError implements ArtistReviewsState {
  const factory ArtistReviewsError(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews,
      required final String message}) = _$ArtistReviewsError;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsErrorCopyWith<_$ArtistReviewsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsNoDataCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsNoDataCopyWith(_$ArtistReviewsNoData value,
          $Res Function(_$ArtistReviewsNoData) then) =
      __$$ArtistReviewsNoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsNoDataCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsNoData>
    implements _$$ArtistReviewsNoDataCopyWith<$Res> {
  __$$ArtistReviewsNoDataCopyWithImpl(
      _$ArtistReviewsNoData _value, $Res Function(_$ArtistReviewsNoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsNoData(
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

class _$ArtistReviewsNoData implements ArtistReviewsNoData {
  const _$ArtistReviewsNoData(
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
    return 'ArtistReviewsState.noData(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsNoData &&
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
  _$$ArtistReviewsNoDataCopyWith<_$ArtistReviewsNoData> get copyWith =>
      __$$ArtistReviewsNoDataCopyWithImpl<_$ArtistReviewsNoData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loaded,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)
        error,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noData,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadedMore,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noMoreData,
  }) {
    return noData(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
  }) {
    return noData?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistReviewsInitial value) initial,
    required TResult Function(ArtistReviewsLoading value) loading,
    required TResult Function(ArtistReviewsLoaded value) loaded,
    required TResult Function(ArtistReviewsError value) error,
    required TResult Function(ArtistReviewsNoData value) noData,
    required TResult Function(ArtistReviewsLoadedMore value) loadedMore,
    required TResult Function(ArtistReviewsNoMoreData value) noMoreData,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistReviewsInitial value)? initial,
    TResult? Function(ArtistReviewsLoading value)? loading,
    TResult? Function(ArtistReviewsLoaded value)? loaded,
    TResult? Function(ArtistReviewsError value)? error,
    TResult? Function(ArtistReviewsNoData value)? noData,
    TResult? Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult? Function(ArtistReviewsNoMoreData value)? noMoreData,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistReviewsInitial value)? initial,
    TResult Function(ArtistReviewsLoading value)? loading,
    TResult Function(ArtistReviewsLoaded value)? loaded,
    TResult Function(ArtistReviewsError value)? error,
    TResult Function(ArtistReviewsNoData value)? noData,
    TResult Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult Function(ArtistReviewsNoMoreData value)? noMoreData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class ArtistReviewsNoData implements ArtistReviewsState {
  const factory ArtistReviewsNoData(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$ArtistReviewsNoData;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsNoDataCopyWith<_$ArtistReviewsNoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsLoadedMoreCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsLoadedMoreCopyWith(_$ArtistReviewsLoadedMore value,
          $Res Function(_$ArtistReviewsLoadedMore) then) =
      __$$ArtistReviewsLoadedMoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsLoadedMoreCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsLoadedMore>
    implements _$$ArtistReviewsLoadedMoreCopyWith<$Res> {
  __$$ArtistReviewsLoadedMoreCopyWithImpl(_$ArtistReviewsLoadedMore _value,
      $Res Function(_$ArtistReviewsLoadedMore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsLoadedMore(
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

class _$ArtistReviewsLoadedMore implements ArtistReviewsLoadedMore {
  const _$ArtistReviewsLoadedMore(
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
    return 'ArtistReviewsState.loadedMore(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsLoadedMore &&
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
  _$$ArtistReviewsLoadedMoreCopyWith<_$ArtistReviewsLoadedMore> get copyWith =>
      __$$ArtistReviewsLoadedMoreCopyWithImpl<_$ArtistReviewsLoadedMore>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loaded,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)
        error,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noData,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadedMore,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noMoreData,
  }) {
    return loadedMore(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
  }) {
    return loadedMore?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
    required TResult orElse(),
  }) {
    if (loadedMore != null) {
      return loadedMore(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistReviewsInitial value) initial,
    required TResult Function(ArtistReviewsLoading value) loading,
    required TResult Function(ArtistReviewsLoaded value) loaded,
    required TResult Function(ArtistReviewsError value) error,
    required TResult Function(ArtistReviewsNoData value) noData,
    required TResult Function(ArtistReviewsLoadedMore value) loadedMore,
    required TResult Function(ArtistReviewsNoMoreData value) noMoreData,
  }) {
    return loadedMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistReviewsInitial value)? initial,
    TResult? Function(ArtistReviewsLoading value)? loading,
    TResult? Function(ArtistReviewsLoaded value)? loaded,
    TResult? Function(ArtistReviewsError value)? error,
    TResult? Function(ArtistReviewsNoData value)? noData,
    TResult? Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult? Function(ArtistReviewsNoMoreData value)? noMoreData,
  }) {
    return loadedMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistReviewsInitial value)? initial,
    TResult Function(ArtistReviewsLoading value)? loading,
    TResult Function(ArtistReviewsLoaded value)? loaded,
    TResult Function(ArtistReviewsError value)? error,
    TResult Function(ArtistReviewsNoData value)? noData,
    TResult Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult Function(ArtistReviewsNoMoreData value)? noMoreData,
    required TResult orElse(),
  }) {
    if (loadedMore != null) {
      return loadedMore(this);
    }
    return orElse();
  }
}

abstract class ArtistReviewsLoadedMore implements ArtistReviewsState {
  const factory ArtistReviewsLoadedMore(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$ArtistReviewsLoadedMore;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsLoadedMoreCopyWith<_$ArtistReviewsLoadedMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsNoMoreDataCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsNoMoreDataCopyWith(_$ArtistReviewsNoMoreData value,
          $Res Function(_$ArtistReviewsNoMoreData) then) =
      __$$ArtistReviewsNoMoreDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsNoMoreDataCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsNoMoreData>
    implements _$$ArtistReviewsNoMoreDataCopyWith<$Res> {
  __$$ArtistReviewsNoMoreDataCopyWithImpl(_$ArtistReviewsNoMoreData _value,
      $Res Function(_$ArtistReviewsNoMoreData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsNoMoreData(
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

class _$ArtistReviewsNoMoreData implements ArtistReviewsNoMoreData {
  const _$ArtistReviewsNoMoreData(
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
    return 'ArtistReviewsState.noMoreData(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsNoMoreData &&
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
  _$$ArtistReviewsNoMoreDataCopyWith<_$ArtistReviewsNoMoreData> get copyWith =>
      __$$ArtistReviewsNoMoreDataCopyWithImpl<_$ArtistReviewsNoMoreData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        initial,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loading,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loaded,
    required TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)
        error,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noData,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        loadedMore,
    required TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)
        noMoreData,
  }) {
    return noMoreData(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult? Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult? Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
  }) {
    return noMoreData?.call(reviewReactions, customerReactions, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        initial,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loading,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loaded,
    TResult Function(
            Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions,
            List<ReviewItem> reviews,
            String message)?
        error,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noData,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        loadedMore,
    TResult Function(Map<int, Reactions> reviewReactions,
            Map<int, Reaction> customerReactions, List<ReviewItem> reviews)?
        noMoreData,
    required TResult orElse(),
  }) {
    if (noMoreData != null) {
      return noMoreData(reviewReactions, customerReactions, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistReviewsInitial value) initial,
    required TResult Function(ArtistReviewsLoading value) loading,
    required TResult Function(ArtistReviewsLoaded value) loaded,
    required TResult Function(ArtistReviewsError value) error,
    required TResult Function(ArtistReviewsNoData value) noData,
    required TResult Function(ArtistReviewsLoadedMore value) loadedMore,
    required TResult Function(ArtistReviewsNoMoreData value) noMoreData,
  }) {
    return noMoreData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistReviewsInitial value)? initial,
    TResult? Function(ArtistReviewsLoading value)? loading,
    TResult? Function(ArtistReviewsLoaded value)? loaded,
    TResult? Function(ArtistReviewsError value)? error,
    TResult? Function(ArtistReviewsNoData value)? noData,
    TResult? Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult? Function(ArtistReviewsNoMoreData value)? noMoreData,
  }) {
    return noMoreData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistReviewsInitial value)? initial,
    TResult Function(ArtistReviewsLoading value)? loading,
    TResult Function(ArtistReviewsLoaded value)? loaded,
    TResult Function(ArtistReviewsError value)? error,
    TResult Function(ArtistReviewsNoData value)? noData,
    TResult Function(ArtistReviewsLoadedMore value)? loadedMore,
    TResult Function(ArtistReviewsNoMoreData value)? noMoreData,
    required TResult orElse(),
  }) {
    if (noMoreData != null) {
      return noMoreData(this);
    }
    return orElse();
  }
}

abstract class ArtistReviewsNoMoreData implements ArtistReviewsState {
  const factory ArtistReviewsNoMoreData(
      {required final Map<int, Reactions> reviewReactions,
      required final Map<int, Reaction> customerReactions,
      required final List<ReviewItem> reviews}) = _$ArtistReviewsNoMoreData;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsNoMoreDataCopyWith<_$ArtistReviewsNoMoreData> get copyWith =>
      throw _privateConstructorUsedError;
}
