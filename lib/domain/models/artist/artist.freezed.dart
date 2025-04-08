// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  String get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get profileThumbnail => throw _privateConstructorUsedError;
  int? get profileThumbnailVersion => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get studioPhoto => throw _privateConstructorUsedError;
  int? get studioPhotoVersion => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  int get followers => throw _privateConstructorUsedError;
  int get follows => throw _privateConstructorUsedError;
  bool? get isFollowedByUser => throw _privateConstructorUsedError;
  String? get distanceUnit => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  Review? get review => throw _privateConstructorUsedError;
  int? get worksCount => throw _privateConstructorUsedError;
  int? get stencilsCount => throw _privateConstructorUsedError;
  int? get visibleWorksCount => throw _privateConstructorUsedError;
  int? get visibleStencilsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {String id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? userId,
      String? username,
      String? firstName,
      String? lastName,
      String? shortDescription,
      String? profileThumbnail,
      int? profileThumbnailVersion,
      List<String>? tags,
      List<String>? genres,
      String? rating,
      String? studioPhoto,
      int? studioPhotoVersion,
      DateTime? deletedAt,
      Contact? contact,
      int followers,
      int follows,
      bool? isFollowedByUser,
      String? distanceUnit,
      double? distance,
      Review? review,
      int? worksCount,
      int? stencilsCount,
      int? visibleWorksCount,
      int? visibleStencilsCount});

  $ContactCopyWith<$Res>? get contact;
  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? shortDescription = freezed,
    Object? profileThumbnail = freezed,
    Object? profileThumbnailVersion = freezed,
    Object? tags = freezed,
    Object? genres = freezed,
    Object? rating = freezed,
    Object? studioPhoto = freezed,
    Object? studioPhotoVersion = freezed,
    Object? deletedAt = freezed,
    Object? contact = freezed,
    Object? followers = null,
    Object? follows = null,
    Object? isFollowedByUser = freezed,
    Object? distanceUnit = freezed,
    Object? distance = freezed,
    Object? review = freezed,
    Object? worksCount = freezed,
    Object? stencilsCount = freezed,
    Object? visibleWorksCount = freezed,
    Object? visibleStencilsCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnailVersion: freezed == profileThumbnailVersion
          ? _value.profileThumbnailVersion
          : profileThumbnailVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      studioPhoto: freezed == studioPhoto
          ? _value.studioPhoto
          : studioPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      studioPhotoVersion: freezed == studioPhotoVersion
          ? _value.studioPhotoVersion
          : studioPhotoVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      follows: null == follows
          ? _value.follows
          : follows // ignore: cast_nullable_to_non_nullable
              as int,
      isFollowedByUser: freezed == isFollowedByUser
          ? _value.isFollowedByUser
          : isFollowedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      distanceUnit: freezed == distanceUnit
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
      worksCount: freezed == worksCount
          ? _value.worksCount
          : worksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      stencilsCount: freezed == stencilsCount
          ? _value.stencilsCount
          : stencilsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      visibleWorksCount: freezed == visibleWorksCount
          ? _value.visibleWorksCount
          : visibleWorksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      visibleStencilsCount: freezed == visibleStencilsCount
          ? _value.visibleStencilsCount
          : visibleStencilsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $ReviewCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? userId,
      String? username,
      String? firstName,
      String? lastName,
      String? shortDescription,
      String? profileThumbnail,
      int? profileThumbnailVersion,
      List<String>? tags,
      List<String>? genres,
      String? rating,
      String? studioPhoto,
      int? studioPhotoVersion,
      DateTime? deletedAt,
      Contact? contact,
      int followers,
      int follows,
      bool? isFollowedByUser,
      String? distanceUnit,
      double? distance,
      Review? review,
      int? worksCount,
      int? stencilsCount,
      int? visibleWorksCount,
      int? visibleStencilsCount});

  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class __$$ArtistImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$ArtistImpl>
    implements _$$ArtistImplCopyWith<$Res> {
  __$$ArtistImplCopyWithImpl(
      _$ArtistImpl _value, $Res Function(_$ArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? shortDescription = freezed,
    Object? profileThumbnail = freezed,
    Object? profileThumbnailVersion = freezed,
    Object? tags = freezed,
    Object? genres = freezed,
    Object? rating = freezed,
    Object? studioPhoto = freezed,
    Object? studioPhotoVersion = freezed,
    Object? deletedAt = freezed,
    Object? contact = freezed,
    Object? followers = null,
    Object? follows = null,
    Object? isFollowedByUser = freezed,
    Object? distanceUnit = freezed,
    Object? distance = freezed,
    Object? review = freezed,
    Object? worksCount = freezed,
    Object? stencilsCount = freezed,
    Object? visibleWorksCount = freezed,
    Object? visibleStencilsCount = freezed,
  }) {
    return _then(_$ArtistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnailVersion: freezed == profileThumbnailVersion
          ? _value.profileThumbnailVersion
          : profileThumbnailVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      studioPhoto: freezed == studioPhoto
          ? _value.studioPhoto
          : studioPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      studioPhotoVersion: freezed == studioPhotoVersion
          ? _value.studioPhotoVersion
          : studioPhotoVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      follows: null == follows
          ? _value.follows
          : follows // ignore: cast_nullable_to_non_nullable
              as int,
      isFollowedByUser: freezed == isFollowedByUser
          ? _value.isFollowedByUser
          : isFollowedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      distanceUnit: freezed == distanceUnit
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
      worksCount: freezed == worksCount
          ? _value.worksCount
          : worksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      stencilsCount: freezed == stencilsCount
          ? _value.stencilsCount
          : stencilsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      visibleWorksCount: freezed == visibleWorksCount
          ? _value.visibleWorksCount
          : visibleWorksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      visibleStencilsCount: freezed == visibleStencilsCount
          ? _value.visibleStencilsCount
          : visibleStencilsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistImpl implements _Artist {
  const _$ArtistImpl(
      {required this.id,
      this.createdAt,
      this.updatedAt,
      this.userId,
      this.username,
      this.firstName,
      this.lastName,
      this.shortDescription,
      this.profileThumbnail,
      this.profileThumbnailVersion,
      final List<String>? tags,
      final List<String>? genres,
      this.rating,
      this.studioPhoto,
      this.studioPhotoVersion,
      this.deletedAt,
      this.contact,
      this.followers = 0,
      this.follows = 0,
      this.isFollowedByUser,
      this.distanceUnit,
      this.distance,
      this.review,
      this.worksCount,
      this.stencilsCount,
      this.visibleWorksCount,
      this.visibleStencilsCount})
      : _tags = tags,
        _genres = genres;

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? userId;
  @override
  final String? username;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? shortDescription;
  @override
  final String? profileThumbnail;
  @override
  final int? profileThumbnailVersion;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? rating;
  @override
  final String? studioPhoto;
  @override
  final int? studioPhotoVersion;
  @override
  final DateTime? deletedAt;
  @override
  final Contact? contact;
  @override
  @JsonKey()
  final int followers;
  @override
  @JsonKey()
  final int follows;
  @override
  final bool? isFollowedByUser;
  @override
  final String? distanceUnit;
  @override
  final double? distance;
  @override
  final Review? review;
  @override
  final int? worksCount;
  @override
  final int? stencilsCount;
  @override
  final int? visibleWorksCount;
  @override
  final int? visibleStencilsCount;

  @override
  String toString() {
    return 'Artist(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, username: $username, firstName: $firstName, lastName: $lastName, shortDescription: $shortDescription, profileThumbnail: $profileThumbnail, profileThumbnailVersion: $profileThumbnailVersion, tags: $tags, genres: $genres, rating: $rating, studioPhoto: $studioPhoto, studioPhotoVersion: $studioPhotoVersion, deletedAt: $deletedAt, contact: $contact, followers: $followers, follows: $follows, isFollowedByUser: $isFollowedByUser, distanceUnit: $distanceUnit, distance: $distance, review: $review, worksCount: $worksCount, stencilsCount: $stencilsCount, visibleWorksCount: $visibleWorksCount, visibleStencilsCount: $visibleStencilsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.profileThumbnail, profileThumbnail) ||
                other.profileThumbnail == profileThumbnail) &&
            (identical(
                    other.profileThumbnailVersion, profileThumbnailVersion) ||
                other.profileThumbnailVersion == profileThumbnailVersion) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.studioPhoto, studioPhoto) ||
                other.studioPhoto == studioPhoto) &&
            (identical(other.studioPhotoVersion, studioPhotoVersion) ||
                other.studioPhotoVersion == studioPhotoVersion) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.follows, follows) || other.follows == follows) &&
            (identical(other.isFollowedByUser, isFollowedByUser) ||
                other.isFollowedByUser == isFollowedByUser) &&
            (identical(other.distanceUnit, distanceUnit) ||
                other.distanceUnit == distanceUnit) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.worksCount, worksCount) ||
                other.worksCount == worksCount) &&
            (identical(other.stencilsCount, stencilsCount) ||
                other.stencilsCount == stencilsCount) &&
            (identical(other.visibleWorksCount, visibleWorksCount) ||
                other.visibleWorksCount == visibleWorksCount) &&
            (identical(other.visibleStencilsCount, visibleStencilsCount) ||
                other.visibleStencilsCount == visibleStencilsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        userId,
        username,
        firstName,
        lastName,
        shortDescription,
        profileThumbnail,
        profileThumbnailVersion,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_genres),
        rating,
        studioPhoto,
        studioPhotoVersion,
        deletedAt,
        contact,
        followers,
        follows,
        isFollowedByUser,
        distanceUnit,
        distance,
        review,
        worksCount,
        stencilsCount,
        visibleWorksCount,
        visibleStencilsCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      __$$ArtistImplCopyWithImpl<_$ArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistImplToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
      {required final String id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? userId,
      final String? username,
      final String? firstName,
      final String? lastName,
      final String? shortDescription,
      final String? profileThumbnail,
      final int? profileThumbnailVersion,
      final List<String>? tags,
      final List<String>? genres,
      final String? rating,
      final String? studioPhoto,
      final int? studioPhotoVersion,
      final DateTime? deletedAt,
      final Contact? contact,
      final int followers,
      final int follows,
      final bool? isFollowedByUser,
      final String? distanceUnit,
      final double? distance,
      final Review? review,
      final int? worksCount,
      final int? stencilsCount,
      final int? visibleWorksCount,
      final int? visibleStencilsCount}) = _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  String get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get userId;
  @override
  String? get username;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get shortDescription;
  @override
  String? get profileThumbnail;
  @override
  int? get profileThumbnailVersion;
  @override
  List<String>? get tags;
  @override
  List<String>? get genres;
  @override
  String? get rating;
  @override
  String? get studioPhoto;
  @override
  int? get studioPhotoVersion;
  @override
  DateTime? get deletedAt;
  @override
  Contact? get contact;
  @override
  int get followers;
  @override
  int get follows;
  @override
  bool? get isFollowedByUser;
  @override
  String? get distanceUnit;
  @override
  double? get distance;
  @override
  Review? get review;
  @override
  int? get worksCount;
  @override
  int? get stencilsCount;
  @override
  int? get visibleWorksCount;
  @override
  int? get visibleStencilsCount;
  @override
  @JsonKey(ignore: true)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get phoneDialCode => throw _privateConstructorUsedError;
  String? get phoneCountryIsoCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String email,
      String phone,
      String? phoneDialCode,
      String? phoneCountryIsoCode});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? email = null,
    Object? phone = null,
    Object? phoneDialCode = freezed,
    Object? phoneCountryIsoCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      phoneDialCode: freezed == phoneDialCode
          ? _value.phoneDialCode
          : phoneDialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCountryIsoCode: freezed == phoneCountryIsoCode
          ? _value.phoneCountryIsoCode
          : phoneCountryIsoCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactImplCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$ContactImplCopyWith(
          _$ContactImpl value, $Res Function(_$ContactImpl) then) =
      __$$ContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String email,
      String phone,
      String? phoneDialCode,
      String? phoneCountryIsoCode});
}

/// @nodoc
class __$$ContactImplCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$ContactImpl>
    implements _$$ContactImplCopyWith<$Res> {
  __$$ContactImplCopyWithImpl(
      _$ContactImpl _value, $Res Function(_$ContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? email = null,
    Object? phone = null,
    Object? phoneDialCode = freezed,
    Object? phoneCountryIsoCode = freezed,
  }) {
    return _then(_$ContactImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      phoneDialCode: freezed == phoneDialCode
          ? _value.phoneDialCode
          : phoneDialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCountryIsoCode: freezed == phoneCountryIsoCode
          ? _value.phoneCountryIsoCode
          : phoneCountryIsoCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactImpl implements _Contact {
  const _$ContactImpl(
      {this.id,
      this.createdAt,
      this.updatedAt,
      required this.email,
      required this.phone,
      this.phoneDialCode,
      this.phoneCountryIsoCode});

  factory _$ContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String? phoneDialCode;
  @override
  final String? phoneCountryIsoCode;

  @override
  String toString() {
    return 'Contact(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, email: $email, phone: $phone, phoneDialCode: $phoneDialCode, phoneCountryIsoCode: $phoneCountryIsoCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneDialCode, phoneDialCode) ||
                other.phoneDialCode == phoneDialCode) &&
            (identical(other.phoneCountryIsoCode, phoneCountryIsoCode) ||
                other.phoneCountryIsoCode == phoneCountryIsoCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, email,
      phone, phoneDialCode, phoneCountryIsoCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      __$$ContactImplCopyWithImpl<_$ContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactImplToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {final String? id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      required final String email,
      required final String phone,
      final String? phoneDialCode,
      final String? phoneCountryIsoCode}) = _$ContactImpl;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$ContactImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String get email;
  @override
  String get phone;
  @override
  String? get phoneDialCode;
  @override
  String? get phoneCountryIsoCode;
  @override
  @JsonKey(ignore: true)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String name,
      String description});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String name,
      String description});
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$ServiceImpl>
    implements _$$ServiceImplCopyWith<$Res> {
  __$$ServiceImplCopyWithImpl(
      _$ServiceImpl _value, $Res Function(_$ServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$ServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceImpl implements _Service {
  const _$ServiceImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.name,
      required this.description});

  factory _$ServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'Service(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, updatedAt, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      __$$ServiceImplCopyWithImpl<_$ServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceImplToJson(
      this,
    );
  }
}

abstract class _Service implements Service {
  const factory _Service(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String name,
      required final String description}) = _$ServiceImpl;

  factory _Service.fromJson(Map<String, dynamic> json) = _$ServiceImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String? get artistId => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  Map<String, int>? get detail => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  double? get avgRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {String? artistId,
      double? value,
      Map<String, int>? detail,
      int? count,
      double? avgRating});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = freezed,
    Object? value = freezed,
    Object? detail = freezed,
    Object? count = freezed,
    Object? avgRating = freezed,
  }) {
    return _then(_value.copyWith(
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? artistId,
      double? value,
      Map<String, int>? detail,
      int? count,
      double? avgRating});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = freezed,
    Object? value = freezed,
    Object? detail = freezed,
    Object? count = freezed,
    Object? avgRating = freezed,
  }) {
    return _then(_$ReviewImpl(
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {this.artistId,
      this.value,
      final Map<String, int>? detail,
      this.count,
      this.avgRating})
      : _detail = detail;

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final String? artistId;
  @override
  final double? value;
  final Map<String, int>? _detail;
  @override
  Map<String, int>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableMapView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? count;
  @override
  final double? avgRating;

  @override
  String toString() {
    return 'Review(artistId: $artistId, value: $value, detail: $detail, count: $count, avgRating: $avgRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._detail, _detail) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, artistId, value,
      const DeepCollectionEquality().hash(_detail), count, avgRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {final String? artistId,
      final double? value,
      final Map<String, int>? detail,
      final int? count,
      final double? avgRating}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  String? get artistId;
  @override
  double? get value;
  @override
  Map<String, int>? get detail;
  @override
  int? get count;
  @override
  double? get avgRating;
  @override
  @JsonKey(ignore: true)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
