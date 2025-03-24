// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stencil.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Stencil _$StencilFromJson(Map<String, dynamic> json) {
  return _Stencil.fromJson(json);
}

/// @nodoc
mixin _$Stencil {
  int get id => throw _privateConstructorUsedError;
  int get artistId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get imageVersion => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  int? get thumbnailVersion => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  int get orderPosition => throw _privateConstructorUsedError;
  bool get isHidden => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  List<Tag>? get tags => throw _privateConstructorUsedError;
  Artist? get artist => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  bool get isLikedByUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StencilCopyWith<Stencil> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StencilCopyWith<$Res> {
  factory $StencilCopyWith(Stencil value, $Res Function(Stencil) then) =
      _$StencilCopyWithImpl<$Res, Stencil>;
  @useResult
  $Res call(
      {int id,
      int artistId,
      String title,
      String? description,
      String imageUrl,
      int imageVersion,
      String? thumbnailUrl,
      int? thumbnailVersion,
      bool isFeatured,
      int orderPosition,
      bool isHidden,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deletedAt,
      List<Tag>? tags,
      Artist? artist,
      int viewCount,
      int likeCount,
      bool isLikedByUser});

  $ArtistCopyWith<$Res>? get artist;
}

/// @nodoc
class _$StencilCopyWithImpl<$Res, $Val extends Stencil>
    implements $StencilCopyWith<$Res> {
  _$StencilCopyWithImpl(this._value, this._then);

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
    Object? imageVersion = null,
    Object? thumbnailUrl = freezed,
    Object? thumbnailVersion = freezed,
    Object? isFeatured = null,
    Object? orderPosition = null,
    Object? isHidden = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? tags = freezed,
    Object? artist = freezed,
    Object? viewCount = null,
    Object? likeCount = null,
    Object? isLikedByUser = null,
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
      imageVersion: null == imageVersion
          ? _value.imageVersion
          : imageVersion // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailVersion: freezed == thumbnailVersion
          ? _value.thumbnailVersion
          : thumbnailVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      orderPosition: null == orderPosition
          ? _value.orderPosition
          : orderPosition // ignore: cast_nullable_to_non_nullable
              as int,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
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
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLikedByUser: null == isLikedByUser
          ? _value.isLikedByUser
          : isLikedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res>? get artist {
    if (_value.artist == null) {
      return null;
    }

    return $ArtistCopyWith<$Res>(_value.artist!, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StencilImplCopyWith<$Res> implements $StencilCopyWith<$Res> {
  factory _$$StencilImplCopyWith(
          _$StencilImpl value, $Res Function(_$StencilImpl) then) =
      __$$StencilImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int artistId,
      String title,
      String? description,
      String imageUrl,
      int imageVersion,
      String? thumbnailUrl,
      int? thumbnailVersion,
      bool isFeatured,
      int orderPosition,
      bool isHidden,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deletedAt,
      List<Tag>? tags,
      Artist? artist,
      int viewCount,
      int likeCount,
      bool isLikedByUser});

  @override
  $ArtistCopyWith<$Res>? get artist;
}

/// @nodoc
class __$$StencilImplCopyWithImpl<$Res>
    extends _$StencilCopyWithImpl<$Res, _$StencilImpl>
    implements _$$StencilImplCopyWith<$Res> {
  __$$StencilImplCopyWithImpl(
      _$StencilImpl _value, $Res Function(_$StencilImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? title = null,
    Object? description = freezed,
    Object? imageUrl = null,
    Object? imageVersion = null,
    Object? thumbnailUrl = freezed,
    Object? thumbnailVersion = freezed,
    Object? isFeatured = null,
    Object? orderPosition = null,
    Object? isHidden = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? tags = freezed,
    Object? artist = freezed,
    Object? viewCount = null,
    Object? likeCount = null,
    Object? isLikedByUser = null,
  }) {
    return _then(_$StencilImpl(
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
      imageVersion: null == imageVersion
          ? _value.imageVersion
          : imageVersion // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailVersion: freezed == thumbnailVersion
          ? _value.thumbnailVersion
          : thumbnailVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      orderPosition: null == orderPosition
          ? _value.orderPosition
          : orderPosition // ignore: cast_nullable_to_non_nullable
              as int,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
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
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLikedByUser: null == isLikedByUser
          ? _value.isLikedByUser
          : isLikedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StencilImpl implements _Stencil {
  const _$StencilImpl(
      {required this.id,
      required this.artistId,
      required this.title,
      this.description,
      required this.imageUrl,
      required this.imageVersion,
      this.thumbnailUrl,
      this.thumbnailVersion,
      this.isFeatured = false,
      this.orderPosition = 0,
      this.isHidden = false,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt,
      final List<Tag>? tags,
      this.artist,
      this.viewCount = 0,
      this.likeCount = 0,
      this.isLikedByUser = false})
      : _tags = tags;

  factory _$StencilImpl.fromJson(Map<String, dynamic> json) =>
      _$$StencilImplFromJson(json);

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
  final int imageVersion;
  @override
  final String? thumbnailUrl;
  @override
  final int? thumbnailVersion;
  @override
  @JsonKey()
  final bool isFeatured;
  @override
  @JsonKey()
  final int orderPosition;
  @override
  @JsonKey()
  final bool isHidden;
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
  final Artist? artist;
  @override
  @JsonKey()
  final int viewCount;
  @override
  @JsonKey()
  final int likeCount;
  @override
  @JsonKey()
  final bool isLikedByUser;

  @override
  String toString() {
    return 'Stencil(id: $id, artistId: $artistId, title: $title, description: $description, imageUrl: $imageUrl, imageVersion: $imageVersion, thumbnailUrl: $thumbnailUrl, thumbnailVersion: $thumbnailVersion, isFeatured: $isFeatured, orderPosition: $orderPosition, isHidden: $isHidden, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, tags: $tags, artist: $artist, viewCount: $viewCount, likeCount: $likeCount, isLikedByUser: $isLikedByUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StencilImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageVersion, imageVersion) ||
                other.imageVersion == imageVersion) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.thumbnailVersion, thumbnailVersion) ||
                other.thumbnailVersion == thumbnailVersion) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.orderPosition, orderPosition) ||
                other.orderPosition == orderPosition) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.isLikedByUser, isLikedByUser) ||
                other.isLikedByUser == isLikedByUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        artistId,
        title,
        description,
        imageUrl,
        imageVersion,
        thumbnailUrl,
        thumbnailVersion,
        isFeatured,
        orderPosition,
        isHidden,
        createdAt,
        updatedAt,
        deletedAt,
        const DeepCollectionEquality().hash(_tags),
        artist,
        viewCount,
        likeCount,
        isLikedByUser
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StencilImplCopyWith<_$StencilImpl> get copyWith =>
      __$$StencilImplCopyWithImpl<_$StencilImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StencilImplToJson(
      this,
    );
  }
}

abstract class _Stencil implements Stencil {
  const factory _Stencil(
      {required final int id,
      required final int artistId,
      required final String title,
      final String? description,
      required final String imageUrl,
      required final int imageVersion,
      final String? thumbnailUrl,
      final int? thumbnailVersion,
      final bool isFeatured,
      final int orderPosition,
      final bool isHidden,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? deletedAt,
      final List<Tag>? tags,
      final Artist? artist,
      final int viewCount,
      final int likeCount,
      final bool isLikedByUser}) = _$StencilImpl;

  factory _Stencil.fromJson(Map<String, dynamic> json) = _$StencilImpl.fromJson;

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
  int get imageVersion;
  @override
  String? get thumbnailUrl;
  @override
  int? get thumbnailVersion;
  @override
  bool get isFeatured;
  @override
  int get orderPosition;
  @override
  bool get isHidden;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  List<Tag>? get tags;
  @override
  Artist? get artist;
  @override
  int get viewCount;
  @override
  int get likeCount;
  @override
  bool get isLikedByUser;
  @override
  @JsonKey(ignore: true)
  _$$StencilImplCopyWith<_$StencilImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
