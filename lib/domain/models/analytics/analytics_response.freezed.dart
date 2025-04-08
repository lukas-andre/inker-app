// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentMetrics _$ContentMetricsFromJson(Map<String, dynamic> json) {
  return _ContentMetrics.fromJson(json);
}

/// @nodoc
mixin _$ContentMetrics {
  String get contentId => throw _privateConstructorUsedError;
  String get contentType => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  int get uniqueViewCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  bool? get userHasLiked => throw _privateConstructorUsedError;
  ViewDuration? get viewDuration => throw _privateConstructorUsedError;
  double? get engagementRate => throw _privateConstructorUsedError;
  ConversionMetrics? get conversions => throw _privateConstructorUsedError;
  ImpressionMetrics? get impressions => throw _privateConstructorUsedError;
  ViewSourceMetrics? get viewSources => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentMetricsCopyWith<ContentMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentMetricsCopyWith<$Res> {
  factory $ContentMetricsCopyWith(
          ContentMetrics value, $Res Function(ContentMetrics) then) =
      _$ContentMetricsCopyWithImpl<$Res, ContentMetrics>;
  @useResult
  $Res call(
      {String contentId,
      String contentType,
      int viewCount,
      int uniqueViewCount,
      int likeCount,
      bool? userHasLiked,
      ViewDuration? viewDuration,
      double? engagementRate,
      ConversionMetrics? conversions,
      ImpressionMetrics? impressions,
      ViewSourceMetrics? viewSources});

  $ViewDurationCopyWith<$Res>? get viewDuration;
  $ConversionMetricsCopyWith<$Res>? get conversions;
  $ImpressionMetricsCopyWith<$Res>? get impressions;
  $ViewSourceMetricsCopyWith<$Res>? get viewSources;
}

/// @nodoc
class _$ContentMetricsCopyWithImpl<$Res, $Val extends ContentMetrics>
    implements $ContentMetricsCopyWith<$Res> {
  _$ContentMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
    Object? viewCount = null,
    Object? uniqueViewCount = null,
    Object? likeCount = null,
    Object? userHasLiked = freezed,
    Object? viewDuration = freezed,
    Object? engagementRate = freezed,
    Object? conversions = freezed,
    Object? impressions = freezed,
    Object? viewSources = freezed,
  }) {
    return _then(_value.copyWith(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      uniqueViewCount: null == uniqueViewCount
          ? _value.uniqueViewCount
          : uniqueViewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      userHasLiked: freezed == userHasLiked
          ? _value.userHasLiked
          : userHasLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      viewDuration: freezed == viewDuration
          ? _value.viewDuration
          : viewDuration // ignore: cast_nullable_to_non_nullable
              as ViewDuration?,
      engagementRate: freezed == engagementRate
          ? _value.engagementRate
          : engagementRate // ignore: cast_nullable_to_non_nullable
              as double?,
      conversions: freezed == conversions
          ? _value.conversions
          : conversions // ignore: cast_nullable_to_non_nullable
              as ConversionMetrics?,
      impressions: freezed == impressions
          ? _value.impressions
          : impressions // ignore: cast_nullable_to_non_nullable
              as ImpressionMetrics?,
      viewSources: freezed == viewSources
          ? _value.viewSources
          : viewSources // ignore: cast_nullable_to_non_nullable
              as ViewSourceMetrics?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewDurationCopyWith<$Res>? get viewDuration {
    if (_value.viewDuration == null) {
      return null;
    }

    return $ViewDurationCopyWith<$Res>(_value.viewDuration!, (value) {
      return _then(_value.copyWith(viewDuration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversionMetricsCopyWith<$Res>? get conversions {
    if (_value.conversions == null) {
      return null;
    }

    return $ConversionMetricsCopyWith<$Res>(_value.conversions!, (value) {
      return _then(_value.copyWith(conversions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImpressionMetricsCopyWith<$Res>? get impressions {
    if (_value.impressions == null) {
      return null;
    }

    return $ImpressionMetricsCopyWith<$Res>(_value.impressions!, (value) {
      return _then(_value.copyWith(impressions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewSourceMetricsCopyWith<$Res>? get viewSources {
    if (_value.viewSources == null) {
      return null;
    }

    return $ViewSourceMetricsCopyWith<$Res>(_value.viewSources!, (value) {
      return _then(_value.copyWith(viewSources: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContentMetricsImplCopyWith<$Res>
    implements $ContentMetricsCopyWith<$Res> {
  factory _$$ContentMetricsImplCopyWith(_$ContentMetricsImpl value,
          $Res Function(_$ContentMetricsImpl) then) =
      __$$ContentMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentId,
      String contentType,
      int viewCount,
      int uniqueViewCount,
      int likeCount,
      bool? userHasLiked,
      ViewDuration? viewDuration,
      double? engagementRate,
      ConversionMetrics? conversions,
      ImpressionMetrics? impressions,
      ViewSourceMetrics? viewSources});

  @override
  $ViewDurationCopyWith<$Res>? get viewDuration;
  @override
  $ConversionMetricsCopyWith<$Res>? get conversions;
  @override
  $ImpressionMetricsCopyWith<$Res>? get impressions;
  @override
  $ViewSourceMetricsCopyWith<$Res>? get viewSources;
}

/// @nodoc
class __$$ContentMetricsImplCopyWithImpl<$Res>
    extends _$ContentMetricsCopyWithImpl<$Res, _$ContentMetricsImpl>
    implements _$$ContentMetricsImplCopyWith<$Res> {
  __$$ContentMetricsImplCopyWithImpl(
      _$ContentMetricsImpl _value, $Res Function(_$ContentMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
    Object? viewCount = null,
    Object? uniqueViewCount = null,
    Object? likeCount = null,
    Object? userHasLiked = freezed,
    Object? viewDuration = freezed,
    Object? engagementRate = freezed,
    Object? conversions = freezed,
    Object? impressions = freezed,
    Object? viewSources = freezed,
  }) {
    return _then(_$ContentMetricsImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      uniqueViewCount: null == uniqueViewCount
          ? _value.uniqueViewCount
          : uniqueViewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      userHasLiked: freezed == userHasLiked
          ? _value.userHasLiked
          : userHasLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      viewDuration: freezed == viewDuration
          ? _value.viewDuration
          : viewDuration // ignore: cast_nullable_to_non_nullable
              as ViewDuration?,
      engagementRate: freezed == engagementRate
          ? _value.engagementRate
          : engagementRate // ignore: cast_nullable_to_non_nullable
              as double?,
      conversions: freezed == conversions
          ? _value.conversions
          : conversions // ignore: cast_nullable_to_non_nullable
              as ConversionMetrics?,
      impressions: freezed == impressions
          ? _value.impressions
          : impressions // ignore: cast_nullable_to_non_nullable
              as ImpressionMetrics?,
      viewSources: freezed == viewSources
          ? _value.viewSources
          : viewSources // ignore: cast_nullable_to_non_nullable
              as ViewSourceMetrics?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentMetricsImpl implements _ContentMetrics {
  const _$ContentMetricsImpl(
      {required this.contentId,
      required this.contentType,
      required this.viewCount,
      required this.uniqueViewCount,
      required this.likeCount,
      this.userHasLiked,
      this.viewDuration,
      this.engagementRate,
      this.conversions,
      this.impressions,
      this.viewSources});

  factory _$ContentMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentMetricsImplFromJson(json);

  @override
  final String contentId;
  @override
  final String contentType;
  @override
  final int viewCount;
  @override
  final int uniqueViewCount;
  @override
  final int likeCount;
  @override
  final bool? userHasLiked;
  @override
  final ViewDuration? viewDuration;
  @override
  final double? engagementRate;
  @override
  final ConversionMetrics? conversions;
  @override
  final ImpressionMetrics? impressions;
  @override
  final ViewSourceMetrics? viewSources;

  @override
  String toString() {
    return 'ContentMetrics(contentId: $contentId, contentType: $contentType, viewCount: $viewCount, uniqueViewCount: $uniqueViewCount, likeCount: $likeCount, userHasLiked: $userHasLiked, viewDuration: $viewDuration, engagementRate: $engagementRate, conversions: $conversions, impressions: $impressions, viewSources: $viewSources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentMetricsImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.uniqueViewCount, uniqueViewCount) ||
                other.uniqueViewCount == uniqueViewCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.userHasLiked, userHasLiked) ||
                other.userHasLiked == userHasLiked) &&
            (identical(other.viewDuration, viewDuration) ||
                other.viewDuration == viewDuration) &&
            (identical(other.engagementRate, engagementRate) ||
                other.engagementRate == engagementRate) &&
            (identical(other.conversions, conversions) ||
                other.conversions == conversions) &&
            (identical(other.impressions, impressions) ||
                other.impressions == impressions) &&
            (identical(other.viewSources, viewSources) ||
                other.viewSources == viewSources));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contentId,
      contentType,
      viewCount,
      uniqueViewCount,
      likeCount,
      userHasLiked,
      viewDuration,
      engagementRate,
      conversions,
      impressions,
      viewSources);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentMetricsImplCopyWith<_$ContentMetricsImpl> get copyWith =>
      __$$ContentMetricsImplCopyWithImpl<_$ContentMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentMetricsImplToJson(
      this,
    );
  }
}

abstract class _ContentMetrics implements ContentMetrics {
  const factory _ContentMetrics(
      {required final String contentId,
      required final String contentType,
      required final int viewCount,
      required final int uniqueViewCount,
      required final int likeCount,
      final bool? userHasLiked,
      final ViewDuration? viewDuration,
      final double? engagementRate,
      final ConversionMetrics? conversions,
      final ImpressionMetrics? impressions,
      final ViewSourceMetrics? viewSources}) = _$ContentMetricsImpl;

  factory _ContentMetrics.fromJson(Map<String, dynamic> json) =
      _$ContentMetricsImpl.fromJson;

  @override
  String get contentId;
  @override
  String get contentType;
  @override
  int get viewCount;
  @override
  int get uniqueViewCount;
  @override
  int get likeCount;
  @override
  bool? get userHasLiked;
  @override
  ViewDuration? get viewDuration;
  @override
  double? get engagementRate;
  @override
  ConversionMetrics? get conversions;
  @override
  ImpressionMetrics? get impressions;
  @override
  ViewSourceMetrics? get viewSources;
  @override
  @JsonKey(ignore: true)
  _$$ContentMetricsImplCopyWith<_$ContentMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistMetrics _$ArtistMetricsFromJson(Map<String, dynamic> json) {
  return _ArtistMetrics.fromJson(json);
}

/// @nodoc
mixin _$ArtistMetrics {
  String get artistId => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  int get uniqueViewCount => throw _privateConstructorUsedError;
  FollowerMetrics? get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistMetricsCopyWith<ArtistMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistMetricsCopyWith<$Res> {
  factory $ArtistMetricsCopyWith(
          ArtistMetrics value, $Res Function(ArtistMetrics) then) =
      _$ArtistMetricsCopyWithImpl<$Res, ArtistMetrics>;
  @useResult
  $Res call(
      {String artistId,
      int viewCount,
      int uniqueViewCount,
      FollowerMetrics? followers});

  $FollowerMetricsCopyWith<$Res>? get followers;
}

/// @nodoc
class _$ArtistMetricsCopyWithImpl<$Res, $Val extends ArtistMetrics>
    implements $ArtistMetricsCopyWith<$Res> {
  _$ArtistMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? viewCount = null,
    Object? uniqueViewCount = null,
    Object? followers = freezed,
  }) {
    return _then(_value.copyWith(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      uniqueViewCount: null == uniqueViewCount
          ? _value.uniqueViewCount
          : uniqueViewCount // ignore: cast_nullable_to_non_nullable
              as int,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as FollowerMetrics?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowerMetricsCopyWith<$Res>? get followers {
    if (_value.followers == null) {
      return null;
    }

    return $FollowerMetricsCopyWith<$Res>(_value.followers!, (value) {
      return _then(_value.copyWith(followers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistMetricsImplCopyWith<$Res>
    implements $ArtistMetricsCopyWith<$Res> {
  factory _$$ArtistMetricsImplCopyWith(
          _$ArtistMetricsImpl value, $Res Function(_$ArtistMetricsImpl) then) =
      __$$ArtistMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String artistId,
      int viewCount,
      int uniqueViewCount,
      FollowerMetrics? followers});

  @override
  $FollowerMetricsCopyWith<$Res>? get followers;
}

/// @nodoc
class __$$ArtistMetricsImplCopyWithImpl<$Res>
    extends _$ArtistMetricsCopyWithImpl<$Res, _$ArtistMetricsImpl>
    implements _$$ArtistMetricsImplCopyWith<$Res> {
  __$$ArtistMetricsImplCopyWithImpl(
      _$ArtistMetricsImpl _value, $Res Function(_$ArtistMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? viewCount = null,
    Object? uniqueViewCount = null,
    Object? followers = freezed,
  }) {
    return _then(_$ArtistMetricsImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      uniqueViewCount: null == uniqueViewCount
          ? _value.uniqueViewCount
          : uniqueViewCount // ignore: cast_nullable_to_non_nullable
              as int,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as FollowerMetrics?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistMetricsImpl implements _ArtistMetrics {
  const _$ArtistMetricsImpl(
      {required this.artistId,
      required this.viewCount,
      required this.uniqueViewCount,
      this.followers});

  factory _$ArtistMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistMetricsImplFromJson(json);

  @override
  final String artistId;
  @override
  final int viewCount;
  @override
  final int uniqueViewCount;
  @override
  final FollowerMetrics? followers;

  @override
  String toString() {
    return 'ArtistMetrics(artistId: $artistId, viewCount: $viewCount, uniqueViewCount: $uniqueViewCount, followers: $followers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistMetricsImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.uniqueViewCount, uniqueViewCount) ||
                other.uniqueViewCount == uniqueViewCount) &&
            (identical(other.followers, followers) ||
                other.followers == followers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, artistId, viewCount, uniqueViewCount, followers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistMetricsImplCopyWith<_$ArtistMetricsImpl> get copyWith =>
      __$$ArtistMetricsImplCopyWithImpl<_$ArtistMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistMetricsImplToJson(
      this,
    );
  }
}

abstract class _ArtistMetrics implements ArtistMetrics {
  const factory _ArtistMetrics(
      {required final String artistId,
      required final int viewCount,
      required final int uniqueViewCount,
      final FollowerMetrics? followers}) = _$ArtistMetricsImpl;

  factory _ArtistMetrics.fromJson(Map<String, dynamic> json) =
      _$ArtistMetricsImpl.fromJson;

  @override
  String get artistId;
  @override
  int get viewCount;
  @override
  int get uniqueViewCount;
  @override
  FollowerMetrics? get followers;
  @override
  @JsonKey(ignore: true)
  _$$ArtistMetricsImplCopyWith<_$ArtistMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ViewDuration _$ViewDurationFromJson(Map<String, dynamic> json) {
  return _ViewDuration.fromJson(json);
}

/// @nodoc
mixin _$ViewDuration {
  int get totalSeconds => throw _privateConstructorUsedError;
  double get averageSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewDurationCopyWith<ViewDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewDurationCopyWith<$Res> {
  factory $ViewDurationCopyWith(
          ViewDuration value, $Res Function(ViewDuration) then) =
      _$ViewDurationCopyWithImpl<$Res, ViewDuration>;
  @useResult
  $Res call({int totalSeconds, double averageSeconds});
}

/// @nodoc
class _$ViewDurationCopyWithImpl<$Res, $Val extends ViewDuration>
    implements $ViewDurationCopyWith<$Res> {
  _$ViewDurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSeconds = null,
    Object? averageSeconds = null,
  }) {
    return _then(_value.copyWith(
      totalSeconds: null == totalSeconds
          ? _value.totalSeconds
          : totalSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      averageSeconds: null == averageSeconds
          ? _value.averageSeconds
          : averageSeconds // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewDurationImplCopyWith<$Res>
    implements $ViewDurationCopyWith<$Res> {
  factory _$$ViewDurationImplCopyWith(
          _$ViewDurationImpl value, $Res Function(_$ViewDurationImpl) then) =
      __$$ViewDurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalSeconds, double averageSeconds});
}

/// @nodoc
class __$$ViewDurationImplCopyWithImpl<$Res>
    extends _$ViewDurationCopyWithImpl<$Res, _$ViewDurationImpl>
    implements _$$ViewDurationImplCopyWith<$Res> {
  __$$ViewDurationImplCopyWithImpl(
      _$ViewDurationImpl _value, $Res Function(_$ViewDurationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSeconds = null,
    Object? averageSeconds = null,
  }) {
    return _then(_$ViewDurationImpl(
      totalSeconds: null == totalSeconds
          ? _value.totalSeconds
          : totalSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      averageSeconds: null == averageSeconds
          ? _value.averageSeconds
          : averageSeconds // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewDurationImpl implements _ViewDuration {
  const _$ViewDurationImpl(
      {required this.totalSeconds, required this.averageSeconds});

  factory _$ViewDurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewDurationImplFromJson(json);

  @override
  final int totalSeconds;
  @override
  final double averageSeconds;

  @override
  String toString() {
    return 'ViewDuration(totalSeconds: $totalSeconds, averageSeconds: $averageSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewDurationImpl &&
            (identical(other.totalSeconds, totalSeconds) ||
                other.totalSeconds == totalSeconds) &&
            (identical(other.averageSeconds, averageSeconds) ||
                other.averageSeconds == averageSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalSeconds, averageSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewDurationImplCopyWith<_$ViewDurationImpl> get copyWith =>
      __$$ViewDurationImplCopyWithImpl<_$ViewDurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewDurationImplToJson(
      this,
    );
  }
}

abstract class _ViewDuration implements ViewDuration {
  const factory _ViewDuration(
      {required final int totalSeconds,
      required final double averageSeconds}) = _$ViewDurationImpl;

  factory _ViewDuration.fromJson(Map<String, dynamic> json) =
      _$ViewDurationImpl.fromJson;

  @override
  int get totalSeconds;
  @override
  double get averageSeconds;
  @override
  @JsonKey(ignore: true)
  _$$ViewDurationImplCopyWith<_$ViewDurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConversionMetrics _$ConversionMetricsFromJson(Map<String, dynamic> json) {
  return _ConversionMetrics.fromJson(json);
}

/// @nodoc
mixin _$ConversionMetrics {
  int get count => throw _privateConstructorUsedError;
  double get conversionRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversionMetricsCopyWith<ConversionMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversionMetricsCopyWith<$Res> {
  factory $ConversionMetricsCopyWith(
          ConversionMetrics value, $Res Function(ConversionMetrics) then) =
      _$ConversionMetricsCopyWithImpl<$Res, ConversionMetrics>;
  @useResult
  $Res call({int count, double conversionRate});
}

/// @nodoc
class _$ConversionMetricsCopyWithImpl<$Res, $Val extends ConversionMetrics>
    implements $ConversionMetricsCopyWith<$Res> {
  _$ConversionMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? conversionRate = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      conversionRate: null == conversionRate
          ? _value.conversionRate
          : conversionRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversionMetricsImplCopyWith<$Res>
    implements $ConversionMetricsCopyWith<$Res> {
  factory _$$ConversionMetricsImplCopyWith(_$ConversionMetricsImpl value,
          $Res Function(_$ConversionMetricsImpl) then) =
      __$$ConversionMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, double conversionRate});
}

/// @nodoc
class __$$ConversionMetricsImplCopyWithImpl<$Res>
    extends _$ConversionMetricsCopyWithImpl<$Res, _$ConversionMetricsImpl>
    implements _$$ConversionMetricsImplCopyWith<$Res> {
  __$$ConversionMetricsImplCopyWithImpl(_$ConversionMetricsImpl _value,
      $Res Function(_$ConversionMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? conversionRate = null,
  }) {
    return _then(_$ConversionMetricsImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      conversionRate: null == conversionRate
          ? _value.conversionRate
          : conversionRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversionMetricsImpl implements _ConversionMetrics {
  const _$ConversionMetricsImpl(
      {required this.count, required this.conversionRate});

  factory _$ConversionMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversionMetricsImplFromJson(json);

  @override
  final int count;
  @override
  final double conversionRate;

  @override
  String toString() {
    return 'ConversionMetrics(count: $count, conversionRate: $conversionRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversionMetricsImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.conversionRate, conversionRate) ||
                other.conversionRate == conversionRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, conversionRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversionMetricsImplCopyWith<_$ConversionMetricsImpl> get copyWith =>
      __$$ConversionMetricsImplCopyWithImpl<_$ConversionMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversionMetricsImplToJson(
      this,
    );
  }
}

abstract class _ConversionMetrics implements ConversionMetrics {
  const factory _ConversionMetrics(
      {required final int count,
      required final double conversionRate}) = _$ConversionMetricsImpl;

  factory _ConversionMetrics.fromJson(Map<String, dynamic> json) =
      _$ConversionMetricsImpl.fromJson;

  @override
  int get count;
  @override
  double get conversionRate;
  @override
  @JsonKey(ignore: true)
  _$$ConversionMetricsImplCopyWith<_$ConversionMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImpressionMetrics _$ImpressionMetricsFromJson(Map<String, dynamic> json) {
  return _ImpressionMetrics.fromJson(json);
}

/// @nodoc
mixin _$ImpressionMetrics {
  int get count => throw _privateConstructorUsedError;
  double get ctr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImpressionMetricsCopyWith<ImpressionMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImpressionMetricsCopyWith<$Res> {
  factory $ImpressionMetricsCopyWith(
          ImpressionMetrics value, $Res Function(ImpressionMetrics) then) =
      _$ImpressionMetricsCopyWithImpl<$Res, ImpressionMetrics>;
  @useResult
  $Res call({int count, double ctr});
}

/// @nodoc
class _$ImpressionMetricsCopyWithImpl<$Res, $Val extends ImpressionMetrics>
    implements $ImpressionMetricsCopyWith<$Res> {
  _$ImpressionMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? ctr = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      ctr: null == ctr
          ? _value.ctr
          : ctr // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImpressionMetricsImplCopyWith<$Res>
    implements $ImpressionMetricsCopyWith<$Res> {
  factory _$$ImpressionMetricsImplCopyWith(_$ImpressionMetricsImpl value,
          $Res Function(_$ImpressionMetricsImpl) then) =
      __$$ImpressionMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, double ctr});
}

/// @nodoc
class __$$ImpressionMetricsImplCopyWithImpl<$Res>
    extends _$ImpressionMetricsCopyWithImpl<$Res, _$ImpressionMetricsImpl>
    implements _$$ImpressionMetricsImplCopyWith<$Res> {
  __$$ImpressionMetricsImplCopyWithImpl(_$ImpressionMetricsImpl _value,
      $Res Function(_$ImpressionMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? ctr = null,
  }) {
    return _then(_$ImpressionMetricsImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      ctr: null == ctr
          ? _value.ctr
          : ctr // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImpressionMetricsImpl implements _ImpressionMetrics {
  const _$ImpressionMetricsImpl({required this.count, required this.ctr});

  factory _$ImpressionMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImpressionMetricsImplFromJson(json);

  @override
  final int count;
  @override
  final double ctr;

  @override
  String toString() {
    return 'ImpressionMetrics(count: $count, ctr: $ctr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImpressionMetricsImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.ctr, ctr) || other.ctr == ctr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, ctr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImpressionMetricsImplCopyWith<_$ImpressionMetricsImpl> get copyWith =>
      __$$ImpressionMetricsImplCopyWithImpl<_$ImpressionMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImpressionMetricsImplToJson(
      this,
    );
  }
}

abstract class _ImpressionMetrics implements ImpressionMetrics {
  const factory _ImpressionMetrics(
      {required final int count,
      required final double ctr}) = _$ImpressionMetricsImpl;

  factory _ImpressionMetrics.fromJson(Map<String, dynamic> json) =
      _$ImpressionMetricsImpl.fromJson;

  @override
  int get count;
  @override
  double get ctr;
  @override
  @JsonKey(ignore: true)
  _$$ImpressionMetricsImplCopyWith<_$ImpressionMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ViewSourceMetrics _$ViewSourceMetricsFromJson(Map<String, dynamic> json) {
  return _ViewSourceMetrics.fromJson(json);
}

/// @nodoc
mixin _$ViewSourceMetrics {
  int? get search => throw _privateConstructorUsedError;
  int? get feed => throw _privateConstructorUsedError;
  int? get profile => throw _privateConstructorUsedError;
  int? get related => throw _privateConstructorUsedError;
  int? get direct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewSourceMetricsCopyWith<ViewSourceMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewSourceMetricsCopyWith<$Res> {
  factory $ViewSourceMetricsCopyWith(
          ViewSourceMetrics value, $Res Function(ViewSourceMetrics) then) =
      _$ViewSourceMetricsCopyWithImpl<$Res, ViewSourceMetrics>;
  @useResult
  $Res call({int? search, int? feed, int? profile, int? related, int? direct});
}

/// @nodoc
class _$ViewSourceMetricsCopyWithImpl<$Res, $Val extends ViewSourceMetrics>
    implements $ViewSourceMetricsCopyWith<$Res> {
  _$ViewSourceMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? feed = freezed,
    Object? profile = freezed,
    Object? related = freezed,
    Object? direct = freezed,
  }) {
    return _then(_value.copyWith(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as int?,
      feed: freezed == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as int?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as int?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as int?,
      direct: freezed == direct
          ? _value.direct
          : direct // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewSourceMetricsImplCopyWith<$Res>
    implements $ViewSourceMetricsCopyWith<$Res> {
  factory _$$ViewSourceMetricsImplCopyWith(_$ViewSourceMetricsImpl value,
          $Res Function(_$ViewSourceMetricsImpl) then) =
      __$$ViewSourceMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? search, int? feed, int? profile, int? related, int? direct});
}

/// @nodoc
class __$$ViewSourceMetricsImplCopyWithImpl<$Res>
    extends _$ViewSourceMetricsCopyWithImpl<$Res, _$ViewSourceMetricsImpl>
    implements _$$ViewSourceMetricsImplCopyWith<$Res> {
  __$$ViewSourceMetricsImplCopyWithImpl(_$ViewSourceMetricsImpl _value,
      $Res Function(_$ViewSourceMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? feed = freezed,
    Object? profile = freezed,
    Object? related = freezed,
    Object? direct = freezed,
  }) {
    return _then(_$ViewSourceMetricsImpl(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as int?,
      feed: freezed == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as int?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as int?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as int?,
      direct: freezed == direct
          ? _value.direct
          : direct // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewSourceMetricsImpl implements _ViewSourceMetrics {
  const _$ViewSourceMetricsImpl(
      {this.search, this.feed, this.profile, this.related, this.direct});

  factory _$ViewSourceMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewSourceMetricsImplFromJson(json);

  @override
  final int? search;
  @override
  final int? feed;
  @override
  final int? profile;
  @override
  final int? related;
  @override
  final int? direct;

  @override
  String toString() {
    return 'ViewSourceMetrics(search: $search, feed: $feed, profile: $profile, related: $related, direct: $direct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewSourceMetricsImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.feed, feed) || other.feed == feed) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.related, related) || other.related == related) &&
            (identical(other.direct, direct) || other.direct == direct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, search, feed, profile, related, direct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewSourceMetricsImplCopyWith<_$ViewSourceMetricsImpl> get copyWith =>
      __$$ViewSourceMetricsImplCopyWithImpl<_$ViewSourceMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewSourceMetricsImplToJson(
      this,
    );
  }
}

abstract class _ViewSourceMetrics implements ViewSourceMetrics {
  const factory _ViewSourceMetrics(
      {final int? search,
      final int? feed,
      final int? profile,
      final int? related,
      final int? direct}) = _$ViewSourceMetricsImpl;

  factory _ViewSourceMetrics.fromJson(Map<String, dynamic> json) =
      _$ViewSourceMetricsImpl.fromJson;

  @override
  int? get search;
  @override
  int? get feed;
  @override
  int? get profile;
  @override
  int? get related;
  @override
  int? get direct;
  @override
  @JsonKey(ignore: true)
  _$$ViewSourceMetricsImplCopyWith<_$ViewSourceMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowerMetrics _$FollowerMetricsFromJson(Map<String, dynamic> json) {
  return _FollowerMetrics.fromJson(json);
}

/// @nodoc
mixin _$FollowerMetrics {
  int get count => throw _privateConstructorUsedError;
  int? get fromContentViews => throw _privateConstructorUsedError;
  double? get conversionRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowerMetricsCopyWith<FollowerMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowerMetricsCopyWith<$Res> {
  factory $FollowerMetricsCopyWith(
          FollowerMetrics value, $Res Function(FollowerMetrics) then) =
      _$FollowerMetricsCopyWithImpl<$Res, FollowerMetrics>;
  @useResult
  $Res call({int count, int? fromContentViews, double? conversionRate});
}

/// @nodoc
class _$FollowerMetricsCopyWithImpl<$Res, $Val extends FollowerMetrics>
    implements $FollowerMetricsCopyWith<$Res> {
  _$FollowerMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? fromContentViews = freezed,
    Object? conversionRate = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      fromContentViews: freezed == fromContentViews
          ? _value.fromContentViews
          : fromContentViews // ignore: cast_nullable_to_non_nullable
              as int?,
      conversionRate: freezed == conversionRate
          ? _value.conversionRate
          : conversionRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowerMetricsImplCopyWith<$Res>
    implements $FollowerMetricsCopyWith<$Res> {
  factory _$$FollowerMetricsImplCopyWith(_$FollowerMetricsImpl value,
          $Res Function(_$FollowerMetricsImpl) then) =
      __$$FollowerMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int? fromContentViews, double? conversionRate});
}

/// @nodoc
class __$$FollowerMetricsImplCopyWithImpl<$Res>
    extends _$FollowerMetricsCopyWithImpl<$Res, _$FollowerMetricsImpl>
    implements _$$FollowerMetricsImplCopyWith<$Res> {
  __$$FollowerMetricsImplCopyWithImpl(
      _$FollowerMetricsImpl _value, $Res Function(_$FollowerMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? fromContentViews = freezed,
    Object? conversionRate = freezed,
  }) {
    return _then(_$FollowerMetricsImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      fromContentViews: freezed == fromContentViews
          ? _value.fromContentViews
          : fromContentViews // ignore: cast_nullable_to_non_nullable
              as int?,
      conversionRate: freezed == conversionRate
          ? _value.conversionRate
          : conversionRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowerMetricsImpl implements _FollowerMetrics {
  const _$FollowerMetricsImpl(
      {required this.count, this.fromContentViews, this.conversionRate});

  factory _$FollowerMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowerMetricsImplFromJson(json);

  @override
  final int count;
  @override
  final int? fromContentViews;
  @override
  final double? conversionRate;

  @override
  String toString() {
    return 'FollowerMetrics(count: $count, fromContentViews: $fromContentViews, conversionRate: $conversionRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowerMetricsImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.fromContentViews, fromContentViews) ||
                other.fromContentViews == fromContentViews) &&
            (identical(other.conversionRate, conversionRate) ||
                other.conversionRate == conversionRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, count, fromContentViews, conversionRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowerMetricsImplCopyWith<_$FollowerMetricsImpl> get copyWith =>
      __$$FollowerMetricsImplCopyWithImpl<_$FollowerMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowerMetricsImplToJson(
      this,
    );
  }
}

abstract class _FollowerMetrics implements FollowerMetrics {
  const factory _FollowerMetrics(
      {required final int count,
      final int? fromContentViews,
      final double? conversionRate}) = _$FollowerMetricsImpl;

  factory _FollowerMetrics.fromJson(Map<String, dynamic> json) =
      _$FollowerMetricsImpl.fromJson;

  @override
  int get count;
  @override
  int? get fromContentViews;
  @override
  double? get conversionRate;
  @override
  @JsonKey(ignore: true)
  _$$FollowerMetricsImplCopyWith<_$FollowerMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
