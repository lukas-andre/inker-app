// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_reviews_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialEventImpl implements _InitialEvent {
  const _$InitialEventImpl();

  @override
  String toString() {
    return 'ArtistReviewsEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialEventImpl);
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
  const factory _InitialEvent() = _$InitialEventImpl;
}

/// @nodoc
abstract class _$$LoadingEventImplCopyWith<$Res> {
  factory _$$LoadingEventImplCopyWith(
          _$LoadingEventImpl value, $Res Function(_$LoadingEventImpl) then) =
      __$$LoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingEventImplCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$LoadingEventImpl>
    implements _$$LoadingEventImplCopyWith<$Res> {
  __$$LoadingEventImplCopyWithImpl(
      _$LoadingEventImpl _value, $Res Function(_$LoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingEventImpl implements _LoadingEvent {
  const _$LoadingEventImpl();

  @override
  String toString() {
    return 'ArtistReviewsEvent.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingEventImpl);
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
  const factory _LoadingEvent() = _$LoadingEventImpl;
}

/// @nodoc
abstract class _$$LoadReviewsEventImplCopyWith<$Res> {
  factory _$$LoadReviewsEventImplCopyWith(_$LoadReviewsEventImpl value,
          $Res Function(_$LoadReviewsEventImpl) then) =
      __$$LoadReviewsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int artistId});
}

/// @nodoc
class __$$LoadReviewsEventImplCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$LoadReviewsEventImpl>
    implements _$$LoadReviewsEventImplCopyWith<$Res> {
  __$$LoadReviewsEventImplCopyWithImpl(_$LoadReviewsEventImpl _value,
      $Res Function(_$LoadReviewsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$LoadReviewsEventImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadReviewsEventImpl implements _LoadReviewsEvent {
  const _$LoadReviewsEventImpl(this.artistId);

  @override
  final int artistId;

  @override
  String toString() {
    return 'ArtistReviewsEvent.loadReviews(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReviewsEventImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadReviewsEventImplCopyWith<_$LoadReviewsEventImpl> get copyWith =>
      __$$LoadReviewsEventImplCopyWithImpl<_$LoadReviewsEventImpl>(
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
  const factory _LoadReviewsEvent(final int artistId) = _$LoadReviewsEventImpl;

  int get artistId;
  @JsonKey(ignore: true)
  _$$LoadReviewsEventImplCopyWith<_$LoadReviewsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadReviewsSuccessEventImplCopyWith<$Res> {
  factory _$$LoadReviewsSuccessEventImplCopyWith(
          _$LoadReviewsSuccessEventImpl value,
          $Res Function(_$LoadReviewsSuccessEventImpl) then) =
      __$$LoadReviewsSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$LoadReviewsSuccessEventImplCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res,
        _$LoadReviewsSuccessEventImpl>
    implements _$$LoadReviewsSuccessEventImplCopyWith<$Res> {
  __$$LoadReviewsSuccessEventImplCopyWithImpl(
      _$LoadReviewsSuccessEventImpl _value,
      $Res Function(_$LoadReviewsSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$LoadReviewsSuccessEventImpl(
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

class _$LoadReviewsSuccessEventImpl implements _LoadReviewsSuccessEvent {
  const _$LoadReviewsSuccessEventImpl(
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
    return 'ArtistReviewsEvent.loadReviewsSuccess(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReviewsSuccessEventImpl &&
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
  _$$LoadReviewsSuccessEventImplCopyWith<_$LoadReviewsSuccessEventImpl>
      get copyWith => __$$LoadReviewsSuccessEventImplCopyWithImpl<
          _$LoadReviewsSuccessEventImpl>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$LoadReviewsSuccessEventImpl;

  Map<int, Reactions> get reviewReactions;
  Map<int, Reaction> get customerReactions;
  List<ReviewItem> get reviews;
  @JsonKey(ignore: true)
  _$$LoadReviewsSuccessEventImplCopyWith<_$LoadReviewsSuccessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadReviewsErrorEventImplCopyWith<$Res> {
  factory _$$LoadReviewsErrorEventImplCopyWith(
          _$LoadReviewsErrorEventImpl value,
          $Res Function(_$LoadReviewsErrorEventImpl) then) =
      __$$LoadReviewsErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadReviewsErrorEventImplCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$LoadReviewsErrorEventImpl>
    implements _$$LoadReviewsErrorEventImplCopyWith<$Res> {
  __$$LoadReviewsErrorEventImplCopyWithImpl(_$LoadReviewsErrorEventImpl _value,
      $Res Function(_$LoadReviewsErrorEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadReviewsErrorEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadReviewsErrorEventImpl implements _LoadReviewsErrorEvent {
  const _$LoadReviewsErrorEventImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ArtistReviewsEvent.loadReviewsError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReviewsErrorEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadReviewsErrorEventImplCopyWith<_$LoadReviewsErrorEventImpl>
      get copyWith => __$$LoadReviewsErrorEventImplCopyWithImpl<
          _$LoadReviewsErrorEventImpl>(this, _$identity);

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
      _$LoadReviewsErrorEventImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadReviewsErrorEventImplCopyWith<_$LoadReviewsErrorEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreReviewsEventImplCopyWith<$Res> {
  factory _$$LoadMoreReviewsEventImplCopyWith(_$LoadMoreReviewsEventImpl value,
          $Res Function(_$LoadMoreReviewsEventImpl) then) =
      __$$LoadMoreReviewsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreReviewsEventImplCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$LoadMoreReviewsEventImpl>
    implements _$$LoadMoreReviewsEventImplCopyWith<$Res> {
  __$$LoadMoreReviewsEventImplCopyWithImpl(_$LoadMoreReviewsEventImpl _value,
      $Res Function(_$LoadMoreReviewsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreReviewsEventImpl implements _LoadMoreReviewsEvent {
  const _$LoadMoreReviewsEventImpl();

  @override
  String toString() {
    return 'ArtistReviewsEvent.loadMoreReviews()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreReviewsEventImpl);
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
  const factory _LoadMoreReviewsEvent() = _$LoadMoreReviewsEventImpl;
}

/// @nodoc
abstract class _$$NoMoreDataEventImplCopyWith<$Res> {
  factory _$$NoMoreDataEventImplCopyWith(_$NoMoreDataEventImpl value,
          $Res Function(_$NoMoreDataEventImpl) then) =
      __$$NoMoreDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoMoreDataEventImplCopyWithImpl<$Res>
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$NoMoreDataEventImpl>
    implements _$$NoMoreDataEventImplCopyWith<$Res> {
  __$$NoMoreDataEventImplCopyWithImpl(
      _$NoMoreDataEventImpl _value, $Res Function(_$NoMoreDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoMoreDataEventImpl implements _NoMoreDataEvent {
  const _$NoMoreDataEventImpl();

  @override
  String toString() {
    return 'ArtistReviewsEvent.noMoreData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoMoreDataEventImpl);
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
  const factory _NoMoreDataEvent() = _$NoMoreDataEventImpl;
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
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$ReviewLikedImpl>
    implements _$$ReviewLikedImplCopyWith<$Res> {
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
    return 'ArtistReviewsEvent.reviewLiked(reviewId: $reviewId, customerId: $customerId)';
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
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$ReviewDislikedImpl>
    implements _$$ReviewDislikedImplCopyWith<$Res> {
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
    return 'ArtistReviewsEvent.reviewDisliked(reviewId: $reviewId, customerId: $customerId)';
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
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$ReviewLikeRemovedImpl>
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
    return 'ArtistReviewsEvent.reviewLikeRemoved(reviewId: $reviewId, customerId: $customerId)';
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
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$ReviewDislikedRemovedImpl>
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
    return 'ArtistReviewsEvent.reviewDislikedRemoved(reviewId: $reviewId, customerId: $customerId)';
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
    extends _$ArtistReviewsEventCopyWithImpl<$Res, _$SwitchReviewReactionImpl>
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
    return 'ArtistReviewsEvent.switchReviewReaction(reviewId: $reviewId, customerId: $customerId, liked: $liked, disliked: $disliked)';
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
abstract class _$$ArtistReviewsInitialImplCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsInitialImplCopyWith(_$ArtistReviewsInitialImpl value,
          $Res Function(_$ArtistReviewsInitialImpl) then) =
      __$$ArtistReviewsInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsInitialImplCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsInitialImpl>
    implements _$$ArtistReviewsInitialImplCopyWith<$Res> {
  __$$ArtistReviewsInitialImplCopyWithImpl(_$ArtistReviewsInitialImpl _value,
      $Res Function(_$ArtistReviewsInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsInitialImpl(
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

class _$ArtistReviewsInitialImpl implements ArtistReviewsInitial {
  const _$ArtistReviewsInitialImpl(
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
    if (_reviewReactions is EqualUnmodifiableMapView) return _reviewReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reviewReactions);
  }

  final Map<int, Reaction> _customerReactions;
  @override
  @JsonKey()
  Map<int, Reaction> get customerReactions {
    if (_customerReactions is EqualUnmodifiableMapView)
      return _customerReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customerReactions);
  }

  final List<ReviewItem> _reviews;
  @override
  @JsonKey()
  List<ReviewItem> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'ArtistReviewsState.initial(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsInitialImpl &&
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
  _$$ArtistReviewsInitialImplCopyWith<_$ArtistReviewsInitialImpl>
      get copyWith =>
          __$$ArtistReviewsInitialImplCopyWithImpl<_$ArtistReviewsInitialImpl>(
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
      final List<ReviewItem> reviews}) = _$ArtistReviewsInitialImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsInitialImplCopyWith<_$ArtistReviewsInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsLoadingImplCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsLoadingImplCopyWith(_$ArtistReviewsLoadingImpl value,
          $Res Function(_$ArtistReviewsLoadingImpl) then) =
      __$$ArtistReviewsLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsLoadingImplCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsLoadingImpl>
    implements _$$ArtistReviewsLoadingImplCopyWith<$Res> {
  __$$ArtistReviewsLoadingImplCopyWithImpl(_$ArtistReviewsLoadingImpl _value,
      $Res Function(_$ArtistReviewsLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsLoadingImpl(
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

class _$ArtistReviewsLoadingImpl implements ArtistReviewsLoading {
  const _$ArtistReviewsLoadingImpl(
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
    return 'ArtistReviewsState.loading(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsLoadingImpl &&
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
  _$$ArtistReviewsLoadingImplCopyWith<_$ArtistReviewsLoadingImpl>
      get copyWith =>
          __$$ArtistReviewsLoadingImplCopyWithImpl<_$ArtistReviewsLoadingImpl>(
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
      required final List<ReviewItem> reviews}) = _$ArtistReviewsLoadingImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsLoadingImplCopyWith<_$ArtistReviewsLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsLoadedImplCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsLoadedImplCopyWith(_$ArtistReviewsLoadedImpl value,
          $Res Function(_$ArtistReviewsLoadedImpl) then) =
      __$$ArtistReviewsLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsLoadedImplCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsLoadedImpl>
    implements _$$ArtistReviewsLoadedImplCopyWith<$Res> {
  __$$ArtistReviewsLoadedImplCopyWithImpl(_$ArtistReviewsLoadedImpl _value,
      $Res Function(_$ArtistReviewsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsLoadedImpl(
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

class _$ArtistReviewsLoadedImpl implements ArtistReviewsLoaded {
  const _$ArtistReviewsLoadedImpl(
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
    return 'ArtistReviewsState.loaded(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsLoadedImpl &&
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
  _$$ArtistReviewsLoadedImplCopyWith<_$ArtistReviewsLoadedImpl> get copyWith =>
      __$$ArtistReviewsLoadedImplCopyWithImpl<_$ArtistReviewsLoadedImpl>(
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
      required final List<ReviewItem> reviews}) = _$ArtistReviewsLoadedImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsLoadedImplCopyWith<_$ArtistReviewsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsErrorImplCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsErrorImplCopyWith(_$ArtistReviewsErrorImpl value,
          $Res Function(_$ArtistReviewsErrorImpl) then) =
      __$$ArtistReviewsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews,
      String message});
}

/// @nodoc
class __$$ArtistReviewsErrorImplCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsErrorImpl>
    implements _$$ArtistReviewsErrorImplCopyWith<$Res> {
  __$$ArtistReviewsErrorImplCopyWithImpl(_$ArtistReviewsErrorImpl _value,
      $Res Function(_$ArtistReviewsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
    Object? message = null,
  }) {
    return _then(_$ArtistReviewsErrorImpl(
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

class _$ArtistReviewsErrorImpl implements ArtistReviewsError {
  const _$ArtistReviewsErrorImpl(
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
  final String message;

  @override
  String toString() {
    return 'ArtistReviewsState.error(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsErrorImpl &&
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
  _$$ArtistReviewsErrorImplCopyWith<_$ArtistReviewsErrorImpl> get copyWith =>
      __$$ArtistReviewsErrorImplCopyWithImpl<_$ArtistReviewsErrorImpl>(
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
      required final String message}) = _$ArtistReviewsErrorImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsErrorImplCopyWith<_$ArtistReviewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsNoDataImplCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsNoDataImplCopyWith(_$ArtistReviewsNoDataImpl value,
          $Res Function(_$ArtistReviewsNoDataImpl) then) =
      __$$ArtistReviewsNoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsNoDataImplCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res, _$ArtistReviewsNoDataImpl>
    implements _$$ArtistReviewsNoDataImplCopyWith<$Res> {
  __$$ArtistReviewsNoDataImplCopyWithImpl(_$ArtistReviewsNoDataImpl _value,
      $Res Function(_$ArtistReviewsNoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsNoDataImpl(
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

class _$ArtistReviewsNoDataImpl implements ArtistReviewsNoData {
  const _$ArtistReviewsNoDataImpl(
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
    return 'ArtistReviewsState.noData(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsNoDataImpl &&
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
  _$$ArtistReviewsNoDataImplCopyWith<_$ArtistReviewsNoDataImpl> get copyWith =>
      __$$ArtistReviewsNoDataImplCopyWithImpl<_$ArtistReviewsNoDataImpl>(
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
      required final List<ReviewItem> reviews}) = _$ArtistReviewsNoDataImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsNoDataImplCopyWith<_$ArtistReviewsNoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsLoadedMoreImplCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsLoadedMoreImplCopyWith(
          _$ArtistReviewsLoadedMoreImpl value,
          $Res Function(_$ArtistReviewsLoadedMoreImpl) then) =
      __$$ArtistReviewsLoadedMoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsLoadedMoreImplCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res,
        _$ArtistReviewsLoadedMoreImpl>
    implements _$$ArtistReviewsLoadedMoreImplCopyWith<$Res> {
  __$$ArtistReviewsLoadedMoreImplCopyWithImpl(
      _$ArtistReviewsLoadedMoreImpl _value,
      $Res Function(_$ArtistReviewsLoadedMoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsLoadedMoreImpl(
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

class _$ArtistReviewsLoadedMoreImpl implements ArtistReviewsLoadedMore {
  const _$ArtistReviewsLoadedMoreImpl(
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
    return 'ArtistReviewsState.loadedMore(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsLoadedMoreImpl &&
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
  _$$ArtistReviewsLoadedMoreImplCopyWith<_$ArtistReviewsLoadedMoreImpl>
      get copyWith => __$$ArtistReviewsLoadedMoreImplCopyWithImpl<
          _$ArtistReviewsLoadedMoreImpl>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$ArtistReviewsLoadedMoreImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsLoadedMoreImplCopyWith<_$ArtistReviewsLoadedMoreImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistReviewsNoMoreDataImplCopyWith<$Res>
    implements $ArtistReviewsStateCopyWith<$Res> {
  factory _$$ArtistReviewsNoMoreDataImplCopyWith(
          _$ArtistReviewsNoMoreDataImpl value,
          $Res Function(_$ArtistReviewsNoMoreDataImpl) then) =
      __$$ArtistReviewsNoMoreDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, Reactions> reviewReactions,
      Map<int, Reaction> customerReactions,
      List<ReviewItem> reviews});
}

/// @nodoc
class __$$ArtistReviewsNoMoreDataImplCopyWithImpl<$Res>
    extends _$ArtistReviewsStateCopyWithImpl<$Res,
        _$ArtistReviewsNoMoreDataImpl>
    implements _$$ArtistReviewsNoMoreDataImplCopyWith<$Res> {
  __$$ArtistReviewsNoMoreDataImplCopyWithImpl(
      _$ArtistReviewsNoMoreDataImpl _value,
      $Res Function(_$ArtistReviewsNoMoreDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactions = null,
    Object? customerReactions = null,
    Object? reviews = null,
  }) {
    return _then(_$ArtistReviewsNoMoreDataImpl(
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

class _$ArtistReviewsNoMoreDataImpl implements ArtistReviewsNoMoreData {
  const _$ArtistReviewsNoMoreDataImpl(
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
    return 'ArtistReviewsState.noMoreData(reviewReactions: $reviewReactions, customerReactions: $customerReactions, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistReviewsNoMoreDataImpl &&
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
  _$$ArtistReviewsNoMoreDataImplCopyWith<_$ArtistReviewsNoMoreDataImpl>
      get copyWith => __$$ArtistReviewsNoMoreDataImplCopyWithImpl<
          _$ArtistReviewsNoMoreDataImpl>(this, _$identity);

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
      required final List<ReviewItem> reviews}) = _$ArtistReviewsNoMoreDataImpl;

  @override
  Map<int, Reactions> get reviewReactions;
  @override
  Map<int, Reaction> get customerReactions;
  @override
  List<ReviewItem> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ArtistReviewsNoMoreDataImplCopyWith<_$ArtistReviewsNoMoreDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
