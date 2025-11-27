// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnalyticsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)
        recordContentView,
    required TResult Function(String contentId, ContentType contentType)
        recordContentLike,
    required TResult Function(String contentId, ContentType contentType)
        recordContentImpression,
    required TResult Function(String artistId) recordArtistView,
    required TResult Function(String artistId, bool fromContentView)
        recordArtistFollow,
    required TResult Function(String contentId, ContentType contentType)
        getContentMetrics,
    required TResult Function(String artistId) getArtistMetrics,
    required TResult Function(List<String> contentIds, ContentType contentType)
        getBatchContentMetrics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult? Function(String artistId)? recordArtistView,
    TResult? Function(String artistId, bool fromContentView)?
        recordArtistFollow,
    TResult? Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult? Function(String artistId)? getArtistMetrics,
    TResult? Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult Function(String artistId)? recordArtistView,
    TResult Function(String artistId, bool fromContentView)? recordArtistFollow,
    TResult Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult Function(String artistId)? getArtistMetrics,
    TResult Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordContentView value) recordContentView,
    required TResult Function(_RecordContentLike value) recordContentLike,
    required TResult Function(_RecordContentImpression value)
        recordContentImpression,
    required TResult Function(_RecordArtistView value) recordArtistView,
    required TResult Function(_RecordArtistFollow value) recordArtistFollow,
    required TResult Function(_GetContentMetrics value) getContentMetrics,
    required TResult Function(_GetArtistMetrics value) getArtistMetrics,
    required TResult Function(_GetBatchContentMetrics value)
        getBatchContentMetrics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordContentView value)? recordContentView,
    TResult? Function(_RecordContentLike value)? recordContentLike,
    TResult? Function(_RecordContentImpression value)? recordContentImpression,
    TResult? Function(_RecordArtistView value)? recordArtistView,
    TResult? Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult? Function(_GetContentMetrics value)? getContentMetrics,
    TResult? Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult? Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordContentView value)? recordContentView,
    TResult Function(_RecordContentLike value)? recordContentLike,
    TResult Function(_RecordContentImpression value)? recordContentImpression,
    TResult Function(_RecordArtistView value)? recordArtistView,
    TResult Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult Function(_GetContentMetrics value)? getContentMetrics,
    TResult Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsEventCopyWith<$Res> {
  factory $AnalyticsEventCopyWith(
          AnalyticsEvent value, $Res Function(AnalyticsEvent) then) =
      _$AnalyticsEventCopyWithImpl<$Res, AnalyticsEvent>;
}

/// @nodoc
class _$AnalyticsEventCopyWithImpl<$Res, $Val extends AnalyticsEvent>
    implements $AnalyticsEventCopyWith<$Res> {
  _$AnalyticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecordContentViewImplCopyWith<$Res> {
  factory _$$RecordContentViewImplCopyWith(_$RecordContentViewImpl value,
          $Res Function(_$RecordContentViewImpl) then) =
      __$$RecordContentViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String contentId,
      ContentType contentType,
      ViewSource? viewSource,
      int? viewDurationSeconds});
}

/// @nodoc
class __$$RecordContentViewImplCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$RecordContentViewImpl>
    implements _$$RecordContentViewImplCopyWith<$Res> {
  __$$RecordContentViewImplCopyWithImpl(_$RecordContentViewImpl _value,
      $Res Function(_$RecordContentViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
    Object? viewSource = freezed,
    Object? viewDurationSeconds = freezed,
  }) {
    return _then(_$RecordContentViewImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      viewSource: freezed == viewSource
          ? _value.viewSource
          : viewSource // ignore: cast_nullable_to_non_nullable
              as ViewSource?,
      viewDurationSeconds: freezed == viewDurationSeconds
          ? _value.viewDurationSeconds
          : viewDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RecordContentViewImpl implements _RecordContentView {
  const _$RecordContentViewImpl(
      {required this.contentId,
      required this.contentType,
      this.viewSource,
      this.viewDurationSeconds});

  @override
  final String contentId;
  @override
  final ContentType contentType;
  @override
  final ViewSource? viewSource;
  @override
  final int? viewDurationSeconds;

  @override
  String toString() {
    return 'AnalyticsEvent.recordContentView(contentId: $contentId, contentType: $contentType, viewSource: $viewSource, viewDurationSeconds: $viewDurationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordContentViewImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.viewSource, viewSource) ||
                other.viewSource == viewSource) &&
            (identical(other.viewDurationSeconds, viewDurationSeconds) ||
                other.viewDurationSeconds == viewDurationSeconds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, contentId, contentType, viewSource, viewDurationSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordContentViewImplCopyWith<_$RecordContentViewImpl> get copyWith =>
      __$$RecordContentViewImplCopyWithImpl<_$RecordContentViewImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)
        recordContentView,
    required TResult Function(String contentId, ContentType contentType)
        recordContentLike,
    required TResult Function(String contentId, ContentType contentType)
        recordContentImpression,
    required TResult Function(String artistId) recordArtistView,
    required TResult Function(String artistId, bool fromContentView)
        recordArtistFollow,
    required TResult Function(String contentId, ContentType contentType)
        getContentMetrics,
    required TResult Function(String artistId) getArtistMetrics,
    required TResult Function(List<String> contentIds, ContentType contentType)
        getBatchContentMetrics,
  }) {
    return recordContentView(
        contentId, contentType, viewSource, viewDurationSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult? Function(String artistId)? recordArtistView,
    TResult? Function(String artistId, bool fromContentView)?
        recordArtistFollow,
    TResult? Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult? Function(String artistId)? getArtistMetrics,
    TResult? Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
  }) {
    return recordContentView?.call(
        contentId, contentType, viewSource, viewDurationSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult Function(String artistId)? recordArtistView,
    TResult Function(String artistId, bool fromContentView)? recordArtistFollow,
    TResult Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult Function(String artistId)? getArtistMetrics,
    TResult Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (recordContentView != null) {
      return recordContentView(
          contentId, contentType, viewSource, viewDurationSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordContentView value) recordContentView,
    required TResult Function(_RecordContentLike value) recordContentLike,
    required TResult Function(_RecordContentImpression value)
        recordContentImpression,
    required TResult Function(_RecordArtistView value) recordArtistView,
    required TResult Function(_RecordArtistFollow value) recordArtistFollow,
    required TResult Function(_GetContentMetrics value) getContentMetrics,
    required TResult Function(_GetArtistMetrics value) getArtistMetrics,
    required TResult Function(_GetBatchContentMetrics value)
        getBatchContentMetrics,
  }) {
    return recordContentView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordContentView value)? recordContentView,
    TResult? Function(_RecordContentLike value)? recordContentLike,
    TResult? Function(_RecordContentImpression value)? recordContentImpression,
    TResult? Function(_RecordArtistView value)? recordArtistView,
    TResult? Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult? Function(_GetContentMetrics value)? getContentMetrics,
    TResult? Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult? Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
  }) {
    return recordContentView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordContentView value)? recordContentView,
    TResult Function(_RecordContentLike value)? recordContentLike,
    TResult Function(_RecordContentImpression value)? recordContentImpression,
    TResult Function(_RecordArtistView value)? recordArtistView,
    TResult Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult Function(_GetContentMetrics value)? getContentMetrics,
    TResult Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (recordContentView != null) {
      return recordContentView(this);
    }
    return orElse();
  }
}

abstract class _RecordContentView implements AnalyticsEvent {
  const factory _RecordContentView(
      {required final String contentId,
      required final ContentType contentType,
      final ViewSource? viewSource,
      final int? viewDurationSeconds}) = _$RecordContentViewImpl;

  String get contentId;
  ContentType get contentType;
  ViewSource? get viewSource;
  int? get viewDurationSeconds;
  @JsonKey(ignore: true)
  _$$RecordContentViewImplCopyWith<_$RecordContentViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordContentLikeImplCopyWith<$Res> {
  factory _$$RecordContentLikeImplCopyWith(_$RecordContentLikeImpl value,
          $Res Function(_$RecordContentLikeImpl) then) =
      __$$RecordContentLikeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contentId, ContentType contentType});
}

/// @nodoc
class __$$RecordContentLikeImplCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$RecordContentLikeImpl>
    implements _$$RecordContentLikeImplCopyWith<$Res> {
  __$$RecordContentLikeImplCopyWithImpl(_$RecordContentLikeImpl _value,
      $Res Function(_$RecordContentLikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
  }) {
    return _then(_$RecordContentLikeImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
    ));
  }
}

/// @nodoc

class _$RecordContentLikeImpl implements _RecordContentLike {
  const _$RecordContentLikeImpl(
      {required this.contentId, required this.contentType});

  @override
  final String contentId;
  @override
  final ContentType contentType;

  @override
  String toString() {
    return 'AnalyticsEvent.recordContentLike(contentId: $contentId, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordContentLikeImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentId, contentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordContentLikeImplCopyWith<_$RecordContentLikeImpl> get copyWith =>
      __$$RecordContentLikeImplCopyWithImpl<_$RecordContentLikeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)
        recordContentView,
    required TResult Function(String contentId, ContentType contentType)
        recordContentLike,
    required TResult Function(String contentId, ContentType contentType)
        recordContentImpression,
    required TResult Function(String artistId) recordArtistView,
    required TResult Function(String artistId, bool fromContentView)
        recordArtistFollow,
    required TResult Function(String contentId, ContentType contentType)
        getContentMetrics,
    required TResult Function(String artistId) getArtistMetrics,
    required TResult Function(List<String> contentIds, ContentType contentType)
        getBatchContentMetrics,
  }) {
    return recordContentLike(contentId, contentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult? Function(String artistId)? recordArtistView,
    TResult? Function(String artistId, bool fromContentView)?
        recordArtistFollow,
    TResult? Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult? Function(String artistId)? getArtistMetrics,
    TResult? Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
  }) {
    return recordContentLike?.call(contentId, contentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult Function(String artistId)? recordArtistView,
    TResult Function(String artistId, bool fromContentView)? recordArtistFollow,
    TResult Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult Function(String artistId)? getArtistMetrics,
    TResult Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (recordContentLike != null) {
      return recordContentLike(contentId, contentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordContentView value) recordContentView,
    required TResult Function(_RecordContentLike value) recordContentLike,
    required TResult Function(_RecordContentImpression value)
        recordContentImpression,
    required TResult Function(_RecordArtistView value) recordArtistView,
    required TResult Function(_RecordArtistFollow value) recordArtistFollow,
    required TResult Function(_GetContentMetrics value) getContentMetrics,
    required TResult Function(_GetArtistMetrics value) getArtistMetrics,
    required TResult Function(_GetBatchContentMetrics value)
        getBatchContentMetrics,
  }) {
    return recordContentLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordContentView value)? recordContentView,
    TResult? Function(_RecordContentLike value)? recordContentLike,
    TResult? Function(_RecordContentImpression value)? recordContentImpression,
    TResult? Function(_RecordArtistView value)? recordArtistView,
    TResult? Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult? Function(_GetContentMetrics value)? getContentMetrics,
    TResult? Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult? Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
  }) {
    return recordContentLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordContentView value)? recordContentView,
    TResult Function(_RecordContentLike value)? recordContentLike,
    TResult Function(_RecordContentImpression value)? recordContentImpression,
    TResult Function(_RecordArtistView value)? recordArtistView,
    TResult Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult Function(_GetContentMetrics value)? getContentMetrics,
    TResult Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (recordContentLike != null) {
      return recordContentLike(this);
    }
    return orElse();
  }
}

abstract class _RecordContentLike implements AnalyticsEvent {
  const factory _RecordContentLike(
      {required final String contentId,
      required final ContentType contentType}) = _$RecordContentLikeImpl;

  String get contentId;
  ContentType get contentType;
  @JsonKey(ignore: true)
  _$$RecordContentLikeImplCopyWith<_$RecordContentLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordContentImpressionImplCopyWith<$Res> {
  factory _$$RecordContentImpressionImplCopyWith(
          _$RecordContentImpressionImpl value,
          $Res Function(_$RecordContentImpressionImpl) then) =
      __$$RecordContentImpressionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contentId, ContentType contentType});
}

/// @nodoc
class __$$RecordContentImpressionImplCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$RecordContentImpressionImpl>
    implements _$$RecordContentImpressionImplCopyWith<$Res> {
  __$$RecordContentImpressionImplCopyWithImpl(
      _$RecordContentImpressionImpl _value,
      $Res Function(_$RecordContentImpressionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
  }) {
    return _then(_$RecordContentImpressionImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
    ));
  }
}

/// @nodoc

class _$RecordContentImpressionImpl implements _RecordContentImpression {
  const _$RecordContentImpressionImpl(
      {required this.contentId, required this.contentType});

  @override
  final String contentId;
  @override
  final ContentType contentType;

  @override
  String toString() {
    return 'AnalyticsEvent.recordContentImpression(contentId: $contentId, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordContentImpressionImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentId, contentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordContentImpressionImplCopyWith<_$RecordContentImpressionImpl>
      get copyWith => __$$RecordContentImpressionImplCopyWithImpl<
          _$RecordContentImpressionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)
        recordContentView,
    required TResult Function(String contentId, ContentType contentType)
        recordContentLike,
    required TResult Function(String contentId, ContentType contentType)
        recordContentImpression,
    required TResult Function(String artistId) recordArtistView,
    required TResult Function(String artistId, bool fromContentView)
        recordArtistFollow,
    required TResult Function(String contentId, ContentType contentType)
        getContentMetrics,
    required TResult Function(String artistId) getArtistMetrics,
    required TResult Function(List<String> contentIds, ContentType contentType)
        getBatchContentMetrics,
  }) {
    return recordContentImpression(contentId, contentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult? Function(String artistId)? recordArtistView,
    TResult? Function(String artistId, bool fromContentView)?
        recordArtistFollow,
    TResult? Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult? Function(String artistId)? getArtistMetrics,
    TResult? Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
  }) {
    return recordContentImpression?.call(contentId, contentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult Function(String artistId)? recordArtistView,
    TResult Function(String artistId, bool fromContentView)? recordArtistFollow,
    TResult Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult Function(String artistId)? getArtistMetrics,
    TResult Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (recordContentImpression != null) {
      return recordContentImpression(contentId, contentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordContentView value) recordContentView,
    required TResult Function(_RecordContentLike value) recordContentLike,
    required TResult Function(_RecordContentImpression value)
        recordContentImpression,
    required TResult Function(_RecordArtistView value) recordArtistView,
    required TResult Function(_RecordArtistFollow value) recordArtistFollow,
    required TResult Function(_GetContentMetrics value) getContentMetrics,
    required TResult Function(_GetArtistMetrics value) getArtistMetrics,
    required TResult Function(_GetBatchContentMetrics value)
        getBatchContentMetrics,
  }) {
    return recordContentImpression(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordContentView value)? recordContentView,
    TResult? Function(_RecordContentLike value)? recordContentLike,
    TResult? Function(_RecordContentImpression value)? recordContentImpression,
    TResult? Function(_RecordArtistView value)? recordArtistView,
    TResult? Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult? Function(_GetContentMetrics value)? getContentMetrics,
    TResult? Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult? Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
  }) {
    return recordContentImpression?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordContentView value)? recordContentView,
    TResult Function(_RecordContentLike value)? recordContentLike,
    TResult Function(_RecordContentImpression value)? recordContentImpression,
    TResult Function(_RecordArtistView value)? recordArtistView,
    TResult Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult Function(_GetContentMetrics value)? getContentMetrics,
    TResult Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (recordContentImpression != null) {
      return recordContentImpression(this);
    }
    return orElse();
  }
}

abstract class _RecordContentImpression implements AnalyticsEvent {
  const factory _RecordContentImpression(
      {required final String contentId,
      required final ContentType contentType}) = _$RecordContentImpressionImpl;

  String get contentId;
  ContentType get contentType;
  @JsonKey(ignore: true)
  _$$RecordContentImpressionImplCopyWith<_$RecordContentImpressionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordArtistViewImplCopyWith<$Res> {
  factory _$$RecordArtistViewImplCopyWith(_$RecordArtistViewImpl value,
          $Res Function(_$RecordArtistViewImpl) then) =
      __$$RecordArtistViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class __$$RecordArtistViewImplCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$RecordArtistViewImpl>
    implements _$$RecordArtistViewImplCopyWith<$Res> {
  __$$RecordArtistViewImplCopyWithImpl(_$RecordArtistViewImpl _value,
      $Res Function(_$RecordArtistViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$RecordArtistViewImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecordArtistViewImpl implements _RecordArtistView {
  const _$RecordArtistViewImpl({required this.artistId});

  @override
  final String artistId;

  @override
  String toString() {
    return 'AnalyticsEvent.recordArtistView(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordArtistViewImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordArtistViewImplCopyWith<_$RecordArtistViewImpl> get copyWith =>
      __$$RecordArtistViewImplCopyWithImpl<_$RecordArtistViewImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)
        recordContentView,
    required TResult Function(String contentId, ContentType contentType)
        recordContentLike,
    required TResult Function(String contentId, ContentType contentType)
        recordContentImpression,
    required TResult Function(String artistId) recordArtistView,
    required TResult Function(String artistId, bool fromContentView)
        recordArtistFollow,
    required TResult Function(String contentId, ContentType contentType)
        getContentMetrics,
    required TResult Function(String artistId) getArtistMetrics,
    required TResult Function(List<String> contentIds, ContentType contentType)
        getBatchContentMetrics,
  }) {
    return recordArtistView(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult? Function(String artistId)? recordArtistView,
    TResult? Function(String artistId, bool fromContentView)?
        recordArtistFollow,
    TResult? Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult? Function(String artistId)? getArtistMetrics,
    TResult? Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
  }) {
    return recordArtistView?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult Function(String artistId)? recordArtistView,
    TResult Function(String artistId, bool fromContentView)? recordArtistFollow,
    TResult Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult Function(String artistId)? getArtistMetrics,
    TResult Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (recordArtistView != null) {
      return recordArtistView(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordContentView value) recordContentView,
    required TResult Function(_RecordContentLike value) recordContentLike,
    required TResult Function(_RecordContentImpression value)
        recordContentImpression,
    required TResult Function(_RecordArtistView value) recordArtistView,
    required TResult Function(_RecordArtistFollow value) recordArtistFollow,
    required TResult Function(_GetContentMetrics value) getContentMetrics,
    required TResult Function(_GetArtistMetrics value) getArtistMetrics,
    required TResult Function(_GetBatchContentMetrics value)
        getBatchContentMetrics,
  }) {
    return recordArtistView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordContentView value)? recordContentView,
    TResult? Function(_RecordContentLike value)? recordContentLike,
    TResult? Function(_RecordContentImpression value)? recordContentImpression,
    TResult? Function(_RecordArtistView value)? recordArtistView,
    TResult? Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult? Function(_GetContentMetrics value)? getContentMetrics,
    TResult? Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult? Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
  }) {
    return recordArtistView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordContentView value)? recordContentView,
    TResult Function(_RecordContentLike value)? recordContentLike,
    TResult Function(_RecordContentImpression value)? recordContentImpression,
    TResult Function(_RecordArtistView value)? recordArtistView,
    TResult Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult Function(_GetContentMetrics value)? getContentMetrics,
    TResult Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (recordArtistView != null) {
      return recordArtistView(this);
    }
    return orElse();
  }
}

abstract class _RecordArtistView implements AnalyticsEvent {
  const factory _RecordArtistView({required final String artistId}) =
      _$RecordArtistViewImpl;

  String get artistId;
  @JsonKey(ignore: true)
  _$$RecordArtistViewImplCopyWith<_$RecordArtistViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordArtistFollowImplCopyWith<$Res> {
  factory _$$RecordArtistFollowImplCopyWith(_$RecordArtistFollowImpl value,
          $Res Function(_$RecordArtistFollowImpl) then) =
      __$$RecordArtistFollowImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId, bool fromContentView});
}

/// @nodoc
class __$$RecordArtistFollowImplCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$RecordArtistFollowImpl>
    implements _$$RecordArtistFollowImplCopyWith<$Res> {
  __$$RecordArtistFollowImplCopyWithImpl(_$RecordArtistFollowImpl _value,
      $Res Function(_$RecordArtistFollowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? fromContentView = null,
  }) {
    return _then(_$RecordArtistFollowImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      fromContentView: null == fromContentView
          ? _value.fromContentView
          : fromContentView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecordArtistFollowImpl implements _RecordArtistFollow {
  const _$RecordArtistFollowImpl(
      {required this.artistId, this.fromContentView = false});

  @override
  final String artistId;
  @override
  @JsonKey()
  final bool fromContentView;

  @override
  String toString() {
    return 'AnalyticsEvent.recordArtistFollow(artistId: $artistId, fromContentView: $fromContentView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordArtistFollowImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.fromContentView, fromContentView) ||
                other.fromContentView == fromContentView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId, fromContentView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordArtistFollowImplCopyWith<_$RecordArtistFollowImpl> get copyWith =>
      __$$RecordArtistFollowImplCopyWithImpl<_$RecordArtistFollowImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)
        recordContentView,
    required TResult Function(String contentId, ContentType contentType)
        recordContentLike,
    required TResult Function(String contentId, ContentType contentType)
        recordContentImpression,
    required TResult Function(String artistId) recordArtistView,
    required TResult Function(String artistId, bool fromContentView)
        recordArtistFollow,
    required TResult Function(String contentId, ContentType contentType)
        getContentMetrics,
    required TResult Function(String artistId) getArtistMetrics,
    required TResult Function(List<String> contentIds, ContentType contentType)
        getBatchContentMetrics,
  }) {
    return recordArtistFollow(artistId, fromContentView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult? Function(String artistId)? recordArtistView,
    TResult? Function(String artistId, bool fromContentView)?
        recordArtistFollow,
    TResult? Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult? Function(String artistId)? getArtistMetrics,
    TResult? Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
  }) {
    return recordArtistFollow?.call(artistId, fromContentView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult Function(String artistId)? recordArtistView,
    TResult Function(String artistId, bool fromContentView)? recordArtistFollow,
    TResult Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult Function(String artistId)? getArtistMetrics,
    TResult Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (recordArtistFollow != null) {
      return recordArtistFollow(artistId, fromContentView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordContentView value) recordContentView,
    required TResult Function(_RecordContentLike value) recordContentLike,
    required TResult Function(_RecordContentImpression value)
        recordContentImpression,
    required TResult Function(_RecordArtistView value) recordArtistView,
    required TResult Function(_RecordArtistFollow value) recordArtistFollow,
    required TResult Function(_GetContentMetrics value) getContentMetrics,
    required TResult Function(_GetArtistMetrics value) getArtistMetrics,
    required TResult Function(_GetBatchContentMetrics value)
        getBatchContentMetrics,
  }) {
    return recordArtistFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordContentView value)? recordContentView,
    TResult? Function(_RecordContentLike value)? recordContentLike,
    TResult? Function(_RecordContentImpression value)? recordContentImpression,
    TResult? Function(_RecordArtistView value)? recordArtistView,
    TResult? Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult? Function(_GetContentMetrics value)? getContentMetrics,
    TResult? Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult? Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
  }) {
    return recordArtistFollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordContentView value)? recordContentView,
    TResult Function(_RecordContentLike value)? recordContentLike,
    TResult Function(_RecordContentImpression value)? recordContentImpression,
    TResult Function(_RecordArtistView value)? recordArtistView,
    TResult Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult Function(_GetContentMetrics value)? getContentMetrics,
    TResult Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (recordArtistFollow != null) {
      return recordArtistFollow(this);
    }
    return orElse();
  }
}

abstract class _RecordArtistFollow implements AnalyticsEvent {
  const factory _RecordArtistFollow(
      {required final String artistId,
      final bool fromContentView}) = _$RecordArtistFollowImpl;

  String get artistId;
  bool get fromContentView;
  @JsonKey(ignore: true)
  _$$RecordArtistFollowImplCopyWith<_$RecordArtistFollowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetContentMetricsImplCopyWith<$Res> {
  factory _$$GetContentMetricsImplCopyWith(_$GetContentMetricsImpl value,
          $Res Function(_$GetContentMetricsImpl) then) =
      __$$GetContentMetricsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contentId, ContentType contentType});
}

/// @nodoc
class __$$GetContentMetricsImplCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$GetContentMetricsImpl>
    implements _$$GetContentMetricsImplCopyWith<$Res> {
  __$$GetContentMetricsImplCopyWithImpl(_$GetContentMetricsImpl _value,
      $Res Function(_$GetContentMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
  }) {
    return _then(_$GetContentMetricsImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
    ));
  }
}

/// @nodoc

class _$GetContentMetricsImpl implements _GetContentMetrics {
  const _$GetContentMetricsImpl(
      {required this.contentId, required this.contentType});

  @override
  final String contentId;
  @override
  final ContentType contentType;

  @override
  String toString() {
    return 'AnalyticsEvent.getContentMetrics(contentId: $contentId, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContentMetricsImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentId, contentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetContentMetricsImplCopyWith<_$GetContentMetricsImpl> get copyWith =>
      __$$GetContentMetricsImplCopyWithImpl<_$GetContentMetricsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)
        recordContentView,
    required TResult Function(String contentId, ContentType contentType)
        recordContentLike,
    required TResult Function(String contentId, ContentType contentType)
        recordContentImpression,
    required TResult Function(String artistId) recordArtistView,
    required TResult Function(String artistId, bool fromContentView)
        recordArtistFollow,
    required TResult Function(String contentId, ContentType contentType)
        getContentMetrics,
    required TResult Function(String artistId) getArtistMetrics,
    required TResult Function(List<String> contentIds, ContentType contentType)
        getBatchContentMetrics,
  }) {
    return getContentMetrics(contentId, contentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult? Function(String artistId)? recordArtistView,
    TResult? Function(String artistId, bool fromContentView)?
        recordArtistFollow,
    TResult? Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult? Function(String artistId)? getArtistMetrics,
    TResult? Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
  }) {
    return getContentMetrics?.call(contentId, contentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult Function(String artistId)? recordArtistView,
    TResult Function(String artistId, bool fromContentView)? recordArtistFollow,
    TResult Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult Function(String artistId)? getArtistMetrics,
    TResult Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (getContentMetrics != null) {
      return getContentMetrics(contentId, contentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordContentView value) recordContentView,
    required TResult Function(_RecordContentLike value) recordContentLike,
    required TResult Function(_RecordContentImpression value)
        recordContentImpression,
    required TResult Function(_RecordArtistView value) recordArtistView,
    required TResult Function(_RecordArtistFollow value) recordArtistFollow,
    required TResult Function(_GetContentMetrics value) getContentMetrics,
    required TResult Function(_GetArtistMetrics value) getArtistMetrics,
    required TResult Function(_GetBatchContentMetrics value)
        getBatchContentMetrics,
  }) {
    return getContentMetrics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordContentView value)? recordContentView,
    TResult? Function(_RecordContentLike value)? recordContentLike,
    TResult? Function(_RecordContentImpression value)? recordContentImpression,
    TResult? Function(_RecordArtistView value)? recordArtistView,
    TResult? Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult? Function(_GetContentMetrics value)? getContentMetrics,
    TResult? Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult? Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
  }) {
    return getContentMetrics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordContentView value)? recordContentView,
    TResult Function(_RecordContentLike value)? recordContentLike,
    TResult Function(_RecordContentImpression value)? recordContentImpression,
    TResult Function(_RecordArtistView value)? recordArtistView,
    TResult Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult Function(_GetContentMetrics value)? getContentMetrics,
    TResult Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (getContentMetrics != null) {
      return getContentMetrics(this);
    }
    return orElse();
  }
}

abstract class _GetContentMetrics implements AnalyticsEvent {
  const factory _GetContentMetrics(
      {required final String contentId,
      required final ContentType contentType}) = _$GetContentMetricsImpl;

  String get contentId;
  ContentType get contentType;
  @JsonKey(ignore: true)
  _$$GetContentMetricsImplCopyWith<_$GetContentMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetArtistMetricsImplCopyWith<$Res> {
  factory _$$GetArtistMetricsImplCopyWith(_$GetArtistMetricsImpl value,
          $Res Function(_$GetArtistMetricsImpl) then) =
      __$$GetArtistMetricsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class __$$GetArtistMetricsImplCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$GetArtistMetricsImpl>
    implements _$$GetArtistMetricsImplCopyWith<$Res> {
  __$$GetArtistMetricsImplCopyWithImpl(_$GetArtistMetricsImpl _value,
      $Res Function(_$GetArtistMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$GetArtistMetricsImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetArtistMetricsImpl implements _GetArtistMetrics {
  const _$GetArtistMetricsImpl({required this.artistId});

  @override
  final String artistId;

  @override
  String toString() {
    return 'AnalyticsEvent.getArtistMetrics(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArtistMetricsImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArtistMetricsImplCopyWith<_$GetArtistMetricsImpl> get copyWith =>
      __$$GetArtistMetricsImplCopyWithImpl<_$GetArtistMetricsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)
        recordContentView,
    required TResult Function(String contentId, ContentType contentType)
        recordContentLike,
    required TResult Function(String contentId, ContentType contentType)
        recordContentImpression,
    required TResult Function(String artistId) recordArtistView,
    required TResult Function(String artistId, bool fromContentView)
        recordArtistFollow,
    required TResult Function(String contentId, ContentType contentType)
        getContentMetrics,
    required TResult Function(String artistId) getArtistMetrics,
    required TResult Function(List<String> contentIds, ContentType contentType)
        getBatchContentMetrics,
  }) {
    return getArtistMetrics(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult? Function(String artistId)? recordArtistView,
    TResult? Function(String artistId, bool fromContentView)?
        recordArtistFollow,
    TResult? Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult? Function(String artistId)? getArtistMetrics,
    TResult? Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
  }) {
    return getArtistMetrics?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult Function(String artistId)? recordArtistView,
    TResult Function(String artistId, bool fromContentView)? recordArtistFollow,
    TResult Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult Function(String artistId)? getArtistMetrics,
    TResult Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (getArtistMetrics != null) {
      return getArtistMetrics(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordContentView value) recordContentView,
    required TResult Function(_RecordContentLike value) recordContentLike,
    required TResult Function(_RecordContentImpression value)
        recordContentImpression,
    required TResult Function(_RecordArtistView value) recordArtistView,
    required TResult Function(_RecordArtistFollow value) recordArtistFollow,
    required TResult Function(_GetContentMetrics value) getContentMetrics,
    required TResult Function(_GetArtistMetrics value) getArtistMetrics,
    required TResult Function(_GetBatchContentMetrics value)
        getBatchContentMetrics,
  }) {
    return getArtistMetrics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordContentView value)? recordContentView,
    TResult? Function(_RecordContentLike value)? recordContentLike,
    TResult? Function(_RecordContentImpression value)? recordContentImpression,
    TResult? Function(_RecordArtistView value)? recordArtistView,
    TResult? Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult? Function(_GetContentMetrics value)? getContentMetrics,
    TResult? Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult? Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
  }) {
    return getArtistMetrics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordContentView value)? recordContentView,
    TResult Function(_RecordContentLike value)? recordContentLike,
    TResult Function(_RecordContentImpression value)? recordContentImpression,
    TResult Function(_RecordArtistView value)? recordArtistView,
    TResult Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult Function(_GetContentMetrics value)? getContentMetrics,
    TResult Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (getArtistMetrics != null) {
      return getArtistMetrics(this);
    }
    return orElse();
  }
}

abstract class _GetArtistMetrics implements AnalyticsEvent {
  const factory _GetArtistMetrics({required final String artistId}) =
      _$GetArtistMetricsImpl;

  String get artistId;
  @JsonKey(ignore: true)
  _$$GetArtistMetricsImplCopyWith<_$GetArtistMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBatchContentMetricsImplCopyWith<$Res> {
  factory _$$GetBatchContentMetricsImplCopyWith(
          _$GetBatchContentMetricsImpl value,
          $Res Function(_$GetBatchContentMetricsImpl) then) =
      __$$GetBatchContentMetricsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> contentIds, ContentType contentType});
}

/// @nodoc
class __$$GetBatchContentMetricsImplCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$GetBatchContentMetricsImpl>
    implements _$$GetBatchContentMetricsImplCopyWith<$Res> {
  __$$GetBatchContentMetricsImplCopyWithImpl(
      _$GetBatchContentMetricsImpl _value,
      $Res Function(_$GetBatchContentMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentIds = null,
    Object? contentType = null,
  }) {
    return _then(_$GetBatchContentMetricsImpl(
      contentIds: null == contentIds
          ? _value._contentIds
          : contentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
    ));
  }
}

/// @nodoc

class _$GetBatchContentMetricsImpl implements _GetBatchContentMetrics {
  const _$GetBatchContentMetricsImpl(
      {required final List<String> contentIds, required this.contentType})
      : _contentIds = contentIds;

  final List<String> _contentIds;
  @override
  List<String> get contentIds {
    if (_contentIds is EqualUnmodifiableListView) return _contentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contentIds);
  }

  @override
  final ContentType contentType;

  @override
  String toString() {
    return 'AnalyticsEvent.getBatchContentMetrics(contentIds: $contentIds, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBatchContentMetricsImpl &&
            const DeepCollectionEquality()
                .equals(other._contentIds, _contentIds) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_contentIds), contentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBatchContentMetricsImplCopyWith<_$GetBatchContentMetricsImpl>
      get copyWith => __$$GetBatchContentMetricsImplCopyWithImpl<
          _$GetBatchContentMetricsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)
        recordContentView,
    required TResult Function(String contentId, ContentType contentType)
        recordContentLike,
    required TResult Function(String contentId, ContentType contentType)
        recordContentImpression,
    required TResult Function(String artistId) recordArtistView,
    required TResult Function(String artistId, bool fromContentView)
        recordArtistFollow,
    required TResult Function(String contentId, ContentType contentType)
        getContentMetrics,
    required TResult Function(String artistId) getArtistMetrics,
    required TResult Function(List<String> contentIds, ContentType contentType)
        getBatchContentMetrics,
  }) {
    return getBatchContentMetrics(contentIds, contentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult? Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult? Function(String artistId)? recordArtistView,
    TResult? Function(String artistId, bool fromContentView)?
        recordArtistFollow,
    TResult? Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult? Function(String artistId)? getArtistMetrics,
    TResult? Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
  }) {
    return getBatchContentMetrics?.call(contentIds, contentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, ContentType contentType,
            ViewSource? viewSource, int? viewDurationSeconds)?
        recordContentView,
    TResult Function(String contentId, ContentType contentType)?
        recordContentLike,
    TResult Function(String contentId, ContentType contentType)?
        recordContentImpression,
    TResult Function(String artistId)? recordArtistView,
    TResult Function(String artistId, bool fromContentView)? recordArtistFollow,
    TResult Function(String contentId, ContentType contentType)?
        getContentMetrics,
    TResult Function(String artistId)? getArtistMetrics,
    TResult Function(List<String> contentIds, ContentType contentType)?
        getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (getBatchContentMetrics != null) {
      return getBatchContentMetrics(contentIds, contentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordContentView value) recordContentView,
    required TResult Function(_RecordContentLike value) recordContentLike,
    required TResult Function(_RecordContentImpression value)
        recordContentImpression,
    required TResult Function(_RecordArtistView value) recordArtistView,
    required TResult Function(_RecordArtistFollow value) recordArtistFollow,
    required TResult Function(_GetContentMetrics value) getContentMetrics,
    required TResult Function(_GetArtistMetrics value) getArtistMetrics,
    required TResult Function(_GetBatchContentMetrics value)
        getBatchContentMetrics,
  }) {
    return getBatchContentMetrics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordContentView value)? recordContentView,
    TResult? Function(_RecordContentLike value)? recordContentLike,
    TResult? Function(_RecordContentImpression value)? recordContentImpression,
    TResult? Function(_RecordArtistView value)? recordArtistView,
    TResult? Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult? Function(_GetContentMetrics value)? getContentMetrics,
    TResult? Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult? Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
  }) {
    return getBatchContentMetrics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordContentView value)? recordContentView,
    TResult Function(_RecordContentLike value)? recordContentLike,
    TResult Function(_RecordContentImpression value)? recordContentImpression,
    TResult Function(_RecordArtistView value)? recordArtistView,
    TResult Function(_RecordArtistFollow value)? recordArtistFollow,
    TResult Function(_GetContentMetrics value)? getContentMetrics,
    TResult Function(_GetArtistMetrics value)? getArtistMetrics,
    TResult Function(_GetBatchContentMetrics value)? getBatchContentMetrics,
    required TResult orElse(),
  }) {
    if (getBatchContentMetrics != null) {
      return getBatchContentMetrics(this);
    }
    return orElse();
  }
}

abstract class _GetBatchContentMetrics implements AnalyticsEvent {
  const factory _GetBatchContentMetrics(
      {required final List<String> contentIds,
      required final ContentType contentType}) = _$GetBatchContentMetricsImpl;

  List<String> get contentIds;
  ContentType get contentType;
  @JsonKey(ignore: true)
  _$$GetBatchContentMetricsImplCopyWith<_$GetBatchContentMetricsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalyticsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ContentMetrics metrics) contentMetricsLoaded,
    required TResult Function(ArtistMetrics metrics) artistMetricsLoaded,
    required TResult Function(List<ContentMetrics> metrics)
        batchContentMetricsLoaded,
    required TResult Function(String contentId, ContentType contentType,
            bool isLiked, int likeCount)
        contentLikeUpdated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult? Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult? Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult? Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ContentMetricsLoaded value) contentMetricsLoaded,
    required TResult Function(_ArtistMetricsLoaded value) artistMetricsLoaded,
    required TResult Function(_BatchContentMetricsLoaded value)
        batchContentMetricsLoaded,
    required TResult Function(_ContentLikeUpdated value) contentLikeUpdated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult? Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult? Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult? Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsStateCopyWith<$Res> {
  factory $AnalyticsStateCopyWith(
          AnalyticsState value, $Res Function(AnalyticsState) then) =
      _$AnalyticsStateCopyWithImpl<$Res, AnalyticsState>;
}

/// @nodoc
class _$AnalyticsStateCopyWithImpl<$Res, $Val extends AnalyticsState>
    implements $AnalyticsStateCopyWith<$Res> {
  _$AnalyticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AnalyticsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ContentMetrics metrics) contentMetricsLoaded,
    required TResult Function(ArtistMetrics metrics) artistMetricsLoaded,
    required TResult Function(List<ContentMetrics> metrics)
        batchContentMetricsLoaded,
    required TResult Function(String contentId, ContentType contentType,
            bool isLiked, int likeCount)
        contentLikeUpdated,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult? Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult? Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult? Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ContentMetricsLoaded value) contentMetricsLoaded,
    required TResult Function(_ArtistMetricsLoaded value) artistMetricsLoaded,
    required TResult Function(_BatchContentMetricsLoaded value)
        batchContentMetricsLoaded,
    required TResult Function(_ContentLikeUpdated value) contentLikeUpdated,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult? Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult? Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult? Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AnalyticsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AnalyticsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ContentMetrics metrics) contentMetricsLoaded,
    required TResult Function(ArtistMetrics metrics) artistMetricsLoaded,
    required TResult Function(List<ContentMetrics> metrics)
        batchContentMetricsLoaded,
    required TResult Function(String contentId, ContentType contentType,
            bool isLiked, int likeCount)
        contentLikeUpdated,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult? Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult? Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult? Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ContentMetricsLoaded value) contentMetricsLoaded,
    required TResult Function(_ArtistMetricsLoaded value) artistMetricsLoaded,
    required TResult Function(_BatchContentMetricsLoaded value)
        batchContentMetricsLoaded,
    required TResult Function(_ContentLikeUpdated value) contentLikeUpdated,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult? Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult? Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult? Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AnalyticsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ContentMetricsLoadedImplCopyWith<$Res> {
  factory _$$ContentMetricsLoadedImplCopyWith(_$ContentMetricsLoadedImpl value,
          $Res Function(_$ContentMetricsLoadedImpl) then) =
      __$$ContentMetricsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContentMetrics metrics});

  $ContentMetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$ContentMetricsLoadedImplCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$ContentMetricsLoadedImpl>
    implements _$$ContentMetricsLoadedImplCopyWith<$Res> {
  __$$ContentMetricsLoadedImplCopyWithImpl(_$ContentMetricsLoadedImpl _value,
      $Res Function(_$ContentMetricsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metrics = null,
  }) {
    return _then(_$ContentMetricsLoadedImpl(
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as ContentMetrics,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContentMetricsCopyWith<$Res> get metrics {
    return $ContentMetricsCopyWith<$Res>(_value.metrics, (value) {
      return _then(_value.copyWith(metrics: value));
    });
  }
}

/// @nodoc

class _$ContentMetricsLoadedImpl implements _ContentMetricsLoaded {
  const _$ContentMetricsLoadedImpl({required this.metrics});

  @override
  final ContentMetrics metrics;

  @override
  String toString() {
    return 'AnalyticsState.contentMetricsLoaded(metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentMetricsLoadedImpl &&
            (identical(other.metrics, metrics) || other.metrics == metrics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, metrics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentMetricsLoadedImplCopyWith<_$ContentMetricsLoadedImpl>
      get copyWith =>
          __$$ContentMetricsLoadedImplCopyWithImpl<_$ContentMetricsLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ContentMetrics metrics) contentMetricsLoaded,
    required TResult Function(ArtistMetrics metrics) artistMetricsLoaded,
    required TResult Function(List<ContentMetrics> metrics)
        batchContentMetricsLoaded,
    required TResult Function(String contentId, ContentType contentType,
            bool isLiked, int likeCount)
        contentLikeUpdated,
    required TResult Function(String message) error,
  }) {
    return contentMetricsLoaded(metrics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult? Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult? Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult? Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult? Function(String message)? error,
  }) {
    return contentMetricsLoaded?.call(metrics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (contentMetricsLoaded != null) {
      return contentMetricsLoaded(metrics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ContentMetricsLoaded value) contentMetricsLoaded,
    required TResult Function(_ArtistMetricsLoaded value) artistMetricsLoaded,
    required TResult Function(_BatchContentMetricsLoaded value)
        batchContentMetricsLoaded,
    required TResult Function(_ContentLikeUpdated value) contentLikeUpdated,
    required TResult Function(_Error value) error,
  }) {
    return contentMetricsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult? Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult? Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult? Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return contentMetricsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (contentMetricsLoaded != null) {
      return contentMetricsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ContentMetricsLoaded implements AnalyticsState {
  const factory _ContentMetricsLoaded({required final ContentMetrics metrics}) =
      _$ContentMetricsLoadedImpl;

  ContentMetrics get metrics;
  @JsonKey(ignore: true)
  _$$ContentMetricsLoadedImplCopyWith<_$ContentMetricsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistMetricsLoadedImplCopyWith<$Res> {
  factory _$$ArtistMetricsLoadedImplCopyWith(_$ArtistMetricsLoadedImpl value,
          $Res Function(_$ArtistMetricsLoadedImpl) then) =
      __$$ArtistMetricsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArtistMetrics metrics});

  $ArtistMetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$ArtistMetricsLoadedImplCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$ArtistMetricsLoadedImpl>
    implements _$$ArtistMetricsLoadedImplCopyWith<$Res> {
  __$$ArtistMetricsLoadedImplCopyWithImpl(_$ArtistMetricsLoadedImpl _value,
      $Res Function(_$ArtistMetricsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metrics = null,
  }) {
    return _then(_$ArtistMetricsLoadedImpl(
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as ArtistMetrics,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistMetricsCopyWith<$Res> get metrics {
    return $ArtistMetricsCopyWith<$Res>(_value.metrics, (value) {
      return _then(_value.copyWith(metrics: value));
    });
  }
}

/// @nodoc

class _$ArtistMetricsLoadedImpl implements _ArtistMetricsLoaded {
  const _$ArtistMetricsLoadedImpl({required this.metrics});

  @override
  final ArtistMetrics metrics;

  @override
  String toString() {
    return 'AnalyticsState.artistMetricsLoaded(metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistMetricsLoadedImpl &&
            (identical(other.metrics, metrics) || other.metrics == metrics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, metrics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistMetricsLoadedImplCopyWith<_$ArtistMetricsLoadedImpl> get copyWith =>
      __$$ArtistMetricsLoadedImplCopyWithImpl<_$ArtistMetricsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ContentMetrics metrics) contentMetricsLoaded,
    required TResult Function(ArtistMetrics metrics) artistMetricsLoaded,
    required TResult Function(List<ContentMetrics> metrics)
        batchContentMetricsLoaded,
    required TResult Function(String contentId, ContentType contentType,
            bool isLiked, int likeCount)
        contentLikeUpdated,
    required TResult Function(String message) error,
  }) {
    return artistMetricsLoaded(metrics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult? Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult? Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult? Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult? Function(String message)? error,
  }) {
    return artistMetricsLoaded?.call(metrics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (artistMetricsLoaded != null) {
      return artistMetricsLoaded(metrics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ContentMetricsLoaded value) contentMetricsLoaded,
    required TResult Function(_ArtistMetricsLoaded value) artistMetricsLoaded,
    required TResult Function(_BatchContentMetricsLoaded value)
        batchContentMetricsLoaded,
    required TResult Function(_ContentLikeUpdated value) contentLikeUpdated,
    required TResult Function(_Error value) error,
  }) {
    return artistMetricsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult? Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult? Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult? Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return artistMetricsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (artistMetricsLoaded != null) {
      return artistMetricsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ArtistMetricsLoaded implements AnalyticsState {
  const factory _ArtistMetricsLoaded({required final ArtistMetrics metrics}) =
      _$ArtistMetricsLoadedImpl;

  ArtistMetrics get metrics;
  @JsonKey(ignore: true)
  _$$ArtistMetricsLoadedImplCopyWith<_$ArtistMetricsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BatchContentMetricsLoadedImplCopyWith<$Res> {
  factory _$$BatchContentMetricsLoadedImplCopyWith(
          _$BatchContentMetricsLoadedImpl value,
          $Res Function(_$BatchContentMetricsLoadedImpl) then) =
      __$$BatchContentMetricsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContentMetrics> metrics});
}

/// @nodoc
class __$$BatchContentMetricsLoadedImplCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$BatchContentMetricsLoadedImpl>
    implements _$$BatchContentMetricsLoadedImplCopyWith<$Res> {
  __$$BatchContentMetricsLoadedImplCopyWithImpl(
      _$BatchContentMetricsLoadedImpl _value,
      $Res Function(_$BatchContentMetricsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metrics = null,
  }) {
    return _then(_$BatchContentMetricsLoadedImpl(
      metrics: null == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as List<ContentMetrics>,
    ));
  }
}

/// @nodoc

class _$BatchContentMetricsLoadedImpl implements _BatchContentMetricsLoaded {
  const _$BatchContentMetricsLoadedImpl(
      {required final List<ContentMetrics> metrics})
      : _metrics = metrics;

  final List<ContentMetrics> _metrics;
  @override
  List<ContentMetrics> get metrics {
    if (_metrics is EqualUnmodifiableListView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metrics);
  }

  @override
  String toString() {
    return 'AnalyticsState.batchContentMetricsLoaded(metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchContentMetricsLoadedImpl &&
            const DeepCollectionEquality().equals(other._metrics, _metrics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_metrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchContentMetricsLoadedImplCopyWith<_$BatchContentMetricsLoadedImpl>
      get copyWith => __$$BatchContentMetricsLoadedImplCopyWithImpl<
          _$BatchContentMetricsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ContentMetrics metrics) contentMetricsLoaded,
    required TResult Function(ArtistMetrics metrics) artistMetricsLoaded,
    required TResult Function(List<ContentMetrics> metrics)
        batchContentMetricsLoaded,
    required TResult Function(String contentId, ContentType contentType,
            bool isLiked, int likeCount)
        contentLikeUpdated,
    required TResult Function(String message) error,
  }) {
    return batchContentMetricsLoaded(metrics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult? Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult? Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult? Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult? Function(String message)? error,
  }) {
    return batchContentMetricsLoaded?.call(metrics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (batchContentMetricsLoaded != null) {
      return batchContentMetricsLoaded(metrics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ContentMetricsLoaded value) contentMetricsLoaded,
    required TResult Function(_ArtistMetricsLoaded value) artistMetricsLoaded,
    required TResult Function(_BatchContentMetricsLoaded value)
        batchContentMetricsLoaded,
    required TResult Function(_ContentLikeUpdated value) contentLikeUpdated,
    required TResult Function(_Error value) error,
  }) {
    return batchContentMetricsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult? Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult? Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult? Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return batchContentMetricsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (batchContentMetricsLoaded != null) {
      return batchContentMetricsLoaded(this);
    }
    return orElse();
  }
}

abstract class _BatchContentMetricsLoaded implements AnalyticsState {
  const factory _BatchContentMetricsLoaded(
          {required final List<ContentMetrics> metrics}) =
      _$BatchContentMetricsLoadedImpl;

  List<ContentMetrics> get metrics;
  @JsonKey(ignore: true)
  _$$BatchContentMetricsLoadedImplCopyWith<_$BatchContentMetricsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentLikeUpdatedImplCopyWith<$Res> {
  factory _$$ContentLikeUpdatedImplCopyWith(_$ContentLikeUpdatedImpl value,
          $Res Function(_$ContentLikeUpdatedImpl) then) =
      __$$ContentLikeUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String contentId, ContentType contentType, bool isLiked, int likeCount});
}

/// @nodoc
class __$$ContentLikeUpdatedImplCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$ContentLikeUpdatedImpl>
    implements _$$ContentLikeUpdatedImplCopyWith<$Res> {
  __$$ContentLikeUpdatedImplCopyWithImpl(_$ContentLikeUpdatedImpl _value,
      $Res Function(_$ContentLikeUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
    Object? isLiked = null,
    Object? likeCount = null,
  }) {
    return _then(_$ContentLikeUpdatedImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ContentLikeUpdatedImpl implements _ContentLikeUpdated {
  const _$ContentLikeUpdatedImpl(
      {required this.contentId,
      required this.contentType,
      required this.isLiked,
      required this.likeCount});

  @override
  final String contentId;
  @override
  final ContentType contentType;
  @override
  final bool isLiked;
  @override
  final int likeCount;

  @override
  String toString() {
    return 'AnalyticsState.contentLikeUpdated(contentId: $contentId, contentType: $contentType, isLiked: $isLiked, likeCount: $likeCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentLikeUpdatedImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, contentId, contentType, isLiked, likeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentLikeUpdatedImplCopyWith<_$ContentLikeUpdatedImpl> get copyWith =>
      __$$ContentLikeUpdatedImplCopyWithImpl<_$ContentLikeUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ContentMetrics metrics) contentMetricsLoaded,
    required TResult Function(ArtistMetrics metrics) artistMetricsLoaded,
    required TResult Function(List<ContentMetrics> metrics)
        batchContentMetricsLoaded,
    required TResult Function(String contentId, ContentType contentType,
            bool isLiked, int likeCount)
        contentLikeUpdated,
    required TResult Function(String message) error,
  }) {
    return contentLikeUpdated(contentId, contentType, isLiked, likeCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult? Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult? Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult? Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult? Function(String message)? error,
  }) {
    return contentLikeUpdated?.call(contentId, contentType, isLiked, likeCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (contentLikeUpdated != null) {
      return contentLikeUpdated(contentId, contentType, isLiked, likeCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ContentMetricsLoaded value) contentMetricsLoaded,
    required TResult Function(_ArtistMetricsLoaded value) artistMetricsLoaded,
    required TResult Function(_BatchContentMetricsLoaded value)
        batchContentMetricsLoaded,
    required TResult Function(_ContentLikeUpdated value) contentLikeUpdated,
    required TResult Function(_Error value) error,
  }) {
    return contentLikeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult? Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult? Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult? Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return contentLikeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (contentLikeUpdated != null) {
      return contentLikeUpdated(this);
    }
    return orElse();
  }
}

abstract class _ContentLikeUpdated implements AnalyticsState {
  const factory _ContentLikeUpdated(
      {required final String contentId,
      required final ContentType contentType,
      required final bool isLiked,
      required final int likeCount}) = _$ContentLikeUpdatedImpl;

  String get contentId;
  ContentType get contentType;
  bool get isLiked;
  int get likeCount;
  @JsonKey(ignore: true)
  _$$ContentLikeUpdatedImplCopyWith<_$ContentLikeUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AnalyticsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ContentMetrics metrics) contentMetricsLoaded,
    required TResult Function(ArtistMetrics metrics) artistMetricsLoaded,
    required TResult Function(List<ContentMetrics> metrics)
        batchContentMetricsLoaded,
    required TResult Function(String contentId, ContentType contentType,
            bool isLiked, int likeCount)
        contentLikeUpdated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult? Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult? Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult? Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ContentMetrics metrics)? contentMetricsLoaded,
    TResult Function(ArtistMetrics metrics)? artistMetricsLoaded,
    TResult Function(List<ContentMetrics> metrics)? batchContentMetricsLoaded,
    TResult Function(String contentId, ContentType contentType, bool isLiked,
            int likeCount)?
        contentLikeUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ContentMetricsLoaded value) contentMetricsLoaded,
    required TResult Function(_ArtistMetricsLoaded value) artistMetricsLoaded,
    required TResult Function(_BatchContentMetricsLoaded value)
        batchContentMetricsLoaded,
    required TResult Function(_ContentLikeUpdated value) contentLikeUpdated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult? Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult? Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult? Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ContentMetricsLoaded value)? contentMetricsLoaded,
    TResult Function(_ArtistMetricsLoaded value)? artistMetricsLoaded,
    TResult Function(_BatchContentMetricsLoaded value)?
        batchContentMetricsLoaded,
    TResult Function(_ContentLikeUpdated value)? contentLikeUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AnalyticsState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
