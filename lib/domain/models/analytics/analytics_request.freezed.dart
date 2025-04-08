// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecordInteractionRequest _$RecordInteractionRequestFromJson(
    Map<String, dynamic> json) {
  return _RecordInteractionRequest.fromJson(json);
}

/// @nodoc
mixin _$RecordInteractionRequest {
  String get contentId => throw _privateConstructorUsedError;
  ContentType get contentType => throw _privateConstructorUsedError;
  InteractionType get interactionType => throw _privateConstructorUsedError;
  ViewSource? get viewSource => throw _privateConstructorUsedError;
  int? get viewDurationSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordInteractionRequestCopyWith<RecordInteractionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordInteractionRequestCopyWith<$Res> {
  factory $RecordInteractionRequestCopyWith(RecordInteractionRequest value,
          $Res Function(RecordInteractionRequest) then) =
      _$RecordInteractionRequestCopyWithImpl<$Res, RecordInteractionRequest>;
  @useResult
  $Res call(
      {String contentId,
      ContentType contentType,
      InteractionType interactionType,
      ViewSource? viewSource,
      int? viewDurationSeconds});
}

/// @nodoc
class _$RecordInteractionRequestCopyWithImpl<$Res,
        $Val extends RecordInteractionRequest>
    implements $RecordInteractionRequestCopyWith<$Res> {
  _$RecordInteractionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
    Object? interactionType = null,
    Object? viewSource = freezed,
    Object? viewDurationSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      interactionType: null == interactionType
          ? _value.interactionType
          : interactionType // ignore: cast_nullable_to_non_nullable
              as InteractionType,
      viewSource: freezed == viewSource
          ? _value.viewSource
          : viewSource // ignore: cast_nullable_to_non_nullable
              as ViewSource?,
      viewDurationSeconds: freezed == viewDurationSeconds
          ? _value.viewDurationSeconds
          : viewDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordInteractionRequestImplCopyWith<$Res>
    implements $RecordInteractionRequestCopyWith<$Res> {
  factory _$$RecordInteractionRequestImplCopyWith(
          _$RecordInteractionRequestImpl value,
          $Res Function(_$RecordInteractionRequestImpl) then) =
      __$$RecordInteractionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentId,
      ContentType contentType,
      InteractionType interactionType,
      ViewSource? viewSource,
      int? viewDurationSeconds});
}

/// @nodoc
class __$$RecordInteractionRequestImplCopyWithImpl<$Res>
    extends _$RecordInteractionRequestCopyWithImpl<$Res,
        _$RecordInteractionRequestImpl>
    implements _$$RecordInteractionRequestImplCopyWith<$Res> {
  __$$RecordInteractionRequestImplCopyWithImpl(
      _$RecordInteractionRequestImpl _value,
      $Res Function(_$RecordInteractionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
    Object? interactionType = null,
    Object? viewSource = freezed,
    Object? viewDurationSeconds = freezed,
  }) {
    return _then(_$RecordInteractionRequestImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      interactionType: null == interactionType
          ? _value.interactionType
          : interactionType // ignore: cast_nullable_to_non_nullable
              as InteractionType,
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
@JsonSerializable()
class _$RecordInteractionRequestImpl implements _RecordInteractionRequest {
  const _$RecordInteractionRequestImpl(
      {required this.contentId,
      required this.contentType,
      required this.interactionType,
      this.viewSource,
      this.viewDurationSeconds});

  factory _$RecordInteractionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordInteractionRequestImplFromJson(json);

  @override
  final String contentId;
  @override
  final ContentType contentType;
  @override
  final InteractionType interactionType;
  @override
  final ViewSource? viewSource;
  @override
  final int? viewDurationSeconds;

  @override
  String toString() {
    return 'RecordInteractionRequest(contentId: $contentId, contentType: $contentType, interactionType: $interactionType, viewSource: $viewSource, viewDurationSeconds: $viewDurationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordInteractionRequestImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.interactionType, interactionType) ||
                other.interactionType == interactionType) &&
            (identical(other.viewSource, viewSource) ||
                other.viewSource == viewSource) &&
            (identical(other.viewDurationSeconds, viewDurationSeconds) ||
                other.viewDurationSeconds == viewDurationSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contentId, contentType,
      interactionType, viewSource, viewDurationSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordInteractionRequestImplCopyWith<_$RecordInteractionRequestImpl>
      get copyWith => __$$RecordInteractionRequestImplCopyWithImpl<
          _$RecordInteractionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordInteractionRequestImplToJson(
      this,
    );
  }
}

abstract class _RecordInteractionRequest implements RecordInteractionRequest {
  const factory _RecordInteractionRequest(
      {required final String contentId,
      required final ContentType contentType,
      required final InteractionType interactionType,
      final ViewSource? viewSource,
      final int? viewDurationSeconds}) = _$RecordInteractionRequestImpl;

  factory _RecordInteractionRequest.fromJson(Map<String, dynamic> json) =
      _$RecordInteractionRequestImpl.fromJson;

  @override
  String get contentId;
  @override
  ContentType get contentType;
  @override
  InteractionType get interactionType;
  @override
  ViewSource? get viewSource;
  @override
  int? get viewDurationSeconds;
  @override
  @JsonKey(ignore: true)
  _$$RecordInteractionRequestImplCopyWith<_$RecordInteractionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecordArtistViewRequest _$RecordArtistViewRequestFromJson(
    Map<String, dynamic> json) {
  return _RecordArtistViewRequest.fromJson(json);
}

/// @nodoc
mixin _$RecordArtistViewRequest {
  String get artistId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordArtistViewRequestCopyWith<RecordArtistViewRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordArtistViewRequestCopyWith<$Res> {
  factory $RecordArtistViewRequestCopyWith(RecordArtistViewRequest value,
          $Res Function(RecordArtistViewRequest) then) =
      _$RecordArtistViewRequestCopyWithImpl<$Res, RecordArtistViewRequest>;
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class _$RecordArtistViewRequestCopyWithImpl<$Res,
        $Val extends RecordArtistViewRequest>
    implements $RecordArtistViewRequestCopyWith<$Res> {
  _$RecordArtistViewRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_value.copyWith(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordArtistViewRequestImplCopyWith<$Res>
    implements $RecordArtistViewRequestCopyWith<$Res> {
  factory _$$RecordArtistViewRequestImplCopyWith(
          _$RecordArtistViewRequestImpl value,
          $Res Function(_$RecordArtistViewRequestImpl) then) =
      __$$RecordArtistViewRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class __$$RecordArtistViewRequestImplCopyWithImpl<$Res>
    extends _$RecordArtistViewRequestCopyWithImpl<$Res,
        _$RecordArtistViewRequestImpl>
    implements _$$RecordArtistViewRequestImplCopyWith<$Res> {
  __$$RecordArtistViewRequestImplCopyWithImpl(
      _$RecordArtistViewRequestImpl _value,
      $Res Function(_$RecordArtistViewRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$RecordArtistViewRequestImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordArtistViewRequestImpl implements _RecordArtistViewRequest {
  const _$RecordArtistViewRequestImpl({required this.artistId});

  factory _$RecordArtistViewRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordArtistViewRequestImplFromJson(json);

  @override
  final String artistId;

  @override
  String toString() {
    return 'RecordArtistViewRequest(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordArtistViewRequestImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordArtistViewRequestImplCopyWith<_$RecordArtistViewRequestImpl>
      get copyWith => __$$RecordArtistViewRequestImplCopyWithImpl<
          _$RecordArtistViewRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordArtistViewRequestImplToJson(
      this,
    );
  }
}

abstract class _RecordArtistViewRequest implements RecordArtistViewRequest {
  const factory _RecordArtistViewRequest({required final String artistId}) =
      _$RecordArtistViewRequestImpl;

  factory _RecordArtistViewRequest.fromJson(Map<String, dynamic> json) =
      _$RecordArtistViewRequestImpl.fromJson;

  @override
  String get artistId;
  @override
  @JsonKey(ignore: true)
  _$$RecordArtistViewRequestImplCopyWith<_$RecordArtistViewRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecordArtistFollowRequest _$RecordArtistFollowRequestFromJson(
    Map<String, dynamic> json) {
  return _RecordArtistFollowRequest.fromJson(json);
}

/// @nodoc
mixin _$RecordArtistFollowRequest {
  String get artistId => throw _privateConstructorUsedError;
  bool get fromContentView => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordArtistFollowRequestCopyWith<RecordArtistFollowRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordArtistFollowRequestCopyWith<$Res> {
  factory $RecordArtistFollowRequestCopyWith(RecordArtistFollowRequest value,
          $Res Function(RecordArtistFollowRequest) then) =
      _$RecordArtistFollowRequestCopyWithImpl<$Res, RecordArtistFollowRequest>;
  @useResult
  $Res call({String artistId, bool fromContentView});
}

/// @nodoc
class _$RecordArtistFollowRequestCopyWithImpl<$Res,
        $Val extends RecordArtistFollowRequest>
    implements $RecordArtistFollowRequestCopyWith<$Res> {
  _$RecordArtistFollowRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? fromContentView = null,
  }) {
    return _then(_value.copyWith(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      fromContentView: null == fromContentView
          ? _value.fromContentView
          : fromContentView // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordArtistFollowRequestImplCopyWith<$Res>
    implements $RecordArtistFollowRequestCopyWith<$Res> {
  factory _$$RecordArtistFollowRequestImplCopyWith(
          _$RecordArtistFollowRequestImpl value,
          $Res Function(_$RecordArtistFollowRequestImpl) then) =
      __$$RecordArtistFollowRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artistId, bool fromContentView});
}

/// @nodoc
class __$$RecordArtistFollowRequestImplCopyWithImpl<$Res>
    extends _$RecordArtistFollowRequestCopyWithImpl<$Res,
        _$RecordArtistFollowRequestImpl>
    implements _$$RecordArtistFollowRequestImplCopyWith<$Res> {
  __$$RecordArtistFollowRequestImplCopyWithImpl(
      _$RecordArtistFollowRequestImpl _value,
      $Res Function(_$RecordArtistFollowRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? fromContentView = null,
  }) {
    return _then(_$RecordArtistFollowRequestImpl(
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
@JsonSerializable()
class _$RecordArtistFollowRequestImpl implements _RecordArtistFollowRequest {
  const _$RecordArtistFollowRequestImpl(
      {required this.artistId, this.fromContentView = false});

  factory _$RecordArtistFollowRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordArtistFollowRequestImplFromJson(json);

  @override
  final String artistId;
  @override
  @JsonKey()
  final bool fromContentView;

  @override
  String toString() {
    return 'RecordArtistFollowRequest(artistId: $artistId, fromContentView: $fromContentView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordArtistFollowRequestImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.fromContentView, fromContentView) ||
                other.fromContentView == fromContentView));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, artistId, fromContentView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordArtistFollowRequestImplCopyWith<_$RecordArtistFollowRequestImpl>
      get copyWith => __$$RecordArtistFollowRequestImplCopyWithImpl<
          _$RecordArtistFollowRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordArtistFollowRequestImplToJson(
      this,
    );
  }
}

abstract class _RecordArtistFollowRequest implements RecordArtistFollowRequest {
  const factory _RecordArtistFollowRequest(
      {required final String artistId,
      final bool fromContentView}) = _$RecordArtistFollowRequestImpl;

  factory _RecordArtistFollowRequest.fromJson(Map<String, dynamic> json) =
      _$RecordArtistFollowRequestImpl.fromJson;

  @override
  String get artistId;
  @override
  bool get fromContentView;
  @override
  @JsonKey(ignore: true)
  _$$RecordArtistFollowRequestImplCopyWith<_$RecordArtistFollowRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BatchMetricsRequest _$BatchMetricsRequestFromJson(Map<String, dynamic> json) {
  return _BatchMetricsRequest.fromJson(json);
}

/// @nodoc
mixin _$BatchMetricsRequest {
  List<String> get contentIds => throw _privateConstructorUsedError;
  ContentType get contentType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatchMetricsRequestCopyWith<BatchMetricsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchMetricsRequestCopyWith<$Res> {
  factory $BatchMetricsRequestCopyWith(
          BatchMetricsRequest value, $Res Function(BatchMetricsRequest) then) =
      _$BatchMetricsRequestCopyWithImpl<$Res, BatchMetricsRequest>;
  @useResult
  $Res call({List<String> contentIds, ContentType contentType});
}

/// @nodoc
class _$BatchMetricsRequestCopyWithImpl<$Res, $Val extends BatchMetricsRequest>
    implements $BatchMetricsRequestCopyWith<$Res> {
  _$BatchMetricsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentIds = null,
    Object? contentType = null,
  }) {
    return _then(_value.copyWith(
      contentIds: null == contentIds
          ? _value.contentIds
          : contentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BatchMetricsRequestImplCopyWith<$Res>
    implements $BatchMetricsRequestCopyWith<$Res> {
  factory _$$BatchMetricsRequestImplCopyWith(_$BatchMetricsRequestImpl value,
          $Res Function(_$BatchMetricsRequestImpl) then) =
      __$$BatchMetricsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> contentIds, ContentType contentType});
}

/// @nodoc
class __$$BatchMetricsRequestImplCopyWithImpl<$Res>
    extends _$BatchMetricsRequestCopyWithImpl<$Res, _$BatchMetricsRequestImpl>
    implements _$$BatchMetricsRequestImplCopyWith<$Res> {
  __$$BatchMetricsRequestImplCopyWithImpl(_$BatchMetricsRequestImpl _value,
      $Res Function(_$BatchMetricsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentIds = null,
    Object? contentType = null,
  }) {
    return _then(_$BatchMetricsRequestImpl(
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
@JsonSerializable()
class _$BatchMetricsRequestImpl implements _BatchMetricsRequest {
  const _$BatchMetricsRequestImpl(
      {required final List<String> contentIds, required this.contentType})
      : _contentIds = contentIds;

  factory _$BatchMetricsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchMetricsRequestImplFromJson(json);

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
    return 'BatchMetricsRequest(contentIds: $contentIds, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchMetricsRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._contentIds, _contentIds) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_contentIds), contentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchMetricsRequestImplCopyWith<_$BatchMetricsRequestImpl> get copyWith =>
      __$$BatchMetricsRequestImplCopyWithImpl<_$BatchMetricsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchMetricsRequestImplToJson(
      this,
    );
  }
}

abstract class _BatchMetricsRequest implements BatchMetricsRequest {
  const factory _BatchMetricsRequest(
      {required final List<String> contentIds,
      required final ContentType contentType}) = _$BatchMetricsRequestImpl;

  factory _BatchMetricsRequest.fromJson(Map<String, dynamic> json) =
      _$BatchMetricsRequestImpl.fromJson;

  @override
  List<String> get contentIds;
  @override
  ContentType get contentType;
  @override
  @JsonKey(ignore: true)
  _$$BatchMetricsRequestImplCopyWith<_$BatchMetricsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
