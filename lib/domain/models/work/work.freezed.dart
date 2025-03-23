// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Work _$WorkFromJson(Map<String, dynamic> json) {
  return _Work.fromJson(json);
}

/// @nodoc
mixin _$Work {
  int get id => throw _privateConstructorUsedError;
  int get artistId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  int get imageVersion => throw _privateConstructorUsedError;
  int get thumbnailVersion => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  int get orderPosition => throw _privateConstructorUsedError;
  WorkSource get source => throw _privateConstructorUsedError;
  bool get isHidden => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  List<Tag>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res, Work>;
  @useResult
  $Res call(
      {int id,
      int artistId,
      String title,
      String? description,
      String imageUrl,
      String? thumbnailUrl,
      int imageVersion,
      int thumbnailVersion,
      bool isFeatured,
      int orderPosition,
      WorkSource source,
      bool isHidden,
      int viewCount,
      int likeCount,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deletedAt,
      List<Tag>? tags});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res, $Val extends Work>
    implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? title = null,
    Object? description = freezed,
    Object? imageUrl = null,
    Object? thumbnailUrl = freezed,
    Object? imageVersion = null,
    Object? thumbnailVersion = null,
    Object? isFeatured = null,
    Object? orderPosition = null,
    Object? source = null,
    Object? isHidden = null,
    Object? viewCount = null,
    Object? likeCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageVersion: null == imageVersion
          ? _value.imageVersion
          : imageVersion // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailVersion: null == thumbnailVersion
          ? _value.thumbnailVersion
          : thumbnailVersion // ignore: cast_nullable_to_non_nullable
              as int,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      orderPosition: null == orderPosition
          ? _value.orderPosition
          : orderPosition // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as WorkSource,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkImplCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$$WorkImplCopyWith(
          _$WorkImpl value, $Res Function(_$WorkImpl) then) =
      __$$WorkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int artistId,
      String title,
      String? description,
      String imageUrl,
      String? thumbnailUrl,
      int imageVersion,
      int thumbnailVersion,
      bool isFeatured,
      int orderPosition,
      WorkSource source,
      bool isHidden,
      int viewCount,
      int likeCount,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deletedAt,
      List<Tag>? tags});
}

/// @nodoc
class __$$WorkImplCopyWithImpl<$Res>
    extends _$WorkCopyWithImpl<$Res, _$WorkImpl>
    implements _$$WorkImplCopyWith<$Res> {
  __$$WorkImplCopyWithImpl(_$WorkImpl _value, $Res Function(_$WorkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? title = null,
    Object? description = freezed,
    Object? imageUrl = null,
    Object? thumbnailUrl = freezed,
    Object? imageVersion = null,
    Object? thumbnailVersion = null,
    Object? isFeatured = null,
    Object? orderPosition = null,
    Object? source = null,
    Object? isHidden = null,
    Object? viewCount = null,
    Object? likeCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$WorkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageVersion: null == imageVersion
          ? _value.imageVersion
          : imageVersion // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailVersion: null == thumbnailVersion
          ? _value.thumbnailVersion
          : thumbnailVersion // ignore: cast_nullable_to_non_nullable
              as int,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      orderPosition: null == orderPosition
          ? _value.orderPosition
          : orderPosition // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as WorkSource,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkImpl implements _Work {
  const _$WorkImpl(
      {required this.id,
      required this.artistId,
      required this.title,
      this.description,
      required this.imageUrl,
      this.thumbnailUrl,
      required this.imageVersion,
      required this.thumbnailVersion,
      this.isFeatured = false,
      this.orderPosition = 0,
      required this.source,
      this.isHidden = false,
      this.viewCount = 0,
      this.likeCount = 0,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt,
      final List<Tag>? tags})
      : _tags = tags;

  factory _$WorkImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkImplFromJson(json);

  @override
  final int id;
  @override
  final int artistId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String imageUrl;
  @override
  final String? thumbnailUrl;
  @override
  final int imageVersion;
  @override
  final int thumbnailVersion;
  @override
  @JsonKey()
  final bool isFeatured;
  @override
  @JsonKey()
  final int orderPosition;
  @override
  final WorkSource source;
  @override
  @JsonKey()
  final bool isHidden;
  @override
  @JsonKey()
  final int viewCount;
  @override
  @JsonKey()
  final int likeCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? deletedAt;
  final List<Tag>? _tags;
  @override
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Work(id: $id, artistId: $artistId, title: $title, description: $description, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, imageVersion: $imageVersion, thumbnailVersion: $thumbnailVersion, isFeatured: $isFeatured, orderPosition: $orderPosition, source: $source, isHidden: $isHidden, viewCount: $viewCount, likeCount: $likeCount, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.imageVersion, imageVersion) ||
                other.imageVersion == imageVersion) &&
            (identical(other.thumbnailVersion, thumbnailVersion) ||
                other.thumbnailVersion == thumbnailVersion) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.orderPosition, orderPosition) ||
                other.orderPosition == orderPosition) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      artistId,
      title,
      description,
      imageUrl,
      thumbnailUrl,
      imageVersion,
      thumbnailVersion,
      isFeatured,
      orderPosition,
      source,
      isHidden,
      viewCount,
      likeCount,
      createdAt,
      updatedAt,
      deletedAt,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkImplCopyWith<_$WorkImpl> get copyWith =>
      __$$WorkImplCopyWithImpl<_$WorkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkImplToJson(
      this,
    );
  }
}

abstract class _Work implements Work {
  const factory _Work(
      {required final int id,
      required final int artistId,
      required final String title,
      final String? description,
      required final String imageUrl,
      final String? thumbnailUrl,
      required final int imageVersion,
      required final int thumbnailVersion,
      final bool isFeatured,
      final int orderPosition,
      required final WorkSource source,
      final bool isHidden,
      final int viewCount,
      final int likeCount,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? deletedAt,
      final List<Tag>? tags}) = _$WorkImpl;

  factory _Work.fromJson(Map<String, dynamic> json) = _$WorkImpl.fromJson;

  @override
  int get id;
  @override
  int get artistId;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get imageUrl;
  @override
  String? get thumbnailUrl;
  @override
  int get imageVersion;
  @override
  int get thumbnailVersion;
  @override
  bool get isFeatured;
  @override
  int get orderPosition;
  @override
  WorkSource get source;
  @override
  bool get isHidden;
  @override
  int get viewCount;
  @override
  int get likeCount;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  List<Tag>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$WorkImplCopyWith<_$WorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
