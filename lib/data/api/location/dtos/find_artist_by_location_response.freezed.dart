// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_artist_by_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FindArtistByLocationResponse _$FindArtistByLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _FindArtistByLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$FindArtistByLocationResponse {
  int? get id => throw _privateConstructorUsedError;
  int? get artistId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get address3 => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  String? get addressType => throw _privateConstructorUsedError;
  String? get formattedAddress => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get googlePlaceId => throw _privateConstructorUsedError;
  String? get distanceUnit => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  Artist? get artist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindArtistByLocationResponseCopyWith<FindArtistByLocationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindArtistByLocationResponseCopyWith<$Res> {
  factory $FindArtistByLocationResponseCopyWith(
          FindArtistByLocationResponse value,
          $Res Function(FindArtistByLocationResponse) then) =
      _$FindArtistByLocationResponseCopyWithImpl<$Res,
          FindArtistByLocationResponse>;
  @useResult
  $Res call(
      {int? id,
      int? artistId,
      String? name,
      String? country,
      String? address1,
      String? address2,
      String? address3,
      double? lat,
      double? lng,
      String? addressType,
      String? formattedAddress,
      String? city,
      String? googlePlaceId,
      String? distanceUnit,
      double? distance,
      Artist? artist});

  $ArtistCopyWith<$Res>? get artist;
}

/// @nodoc
class _$FindArtistByLocationResponseCopyWithImpl<$Res,
        $Val extends FindArtistByLocationResponse>
    implements $FindArtistByLocationResponseCopyWith<$Res> {
  _$FindArtistByLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? artistId = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? address3 = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? addressType = freezed,
    Object? formattedAddress = freezed,
    Object? city = freezed,
    Object? googlePlaceId = freezed,
    Object? distanceUnit = freezed,
    Object? distance = freezed,
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      address3: freezed == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceUnit: freezed == distanceUnit
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
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
abstract class _$$FindArtistByLocationResponseImplCopyWith<$Res>
    implements $FindArtistByLocationResponseCopyWith<$Res> {
  factory _$$FindArtistByLocationResponseImplCopyWith(
          _$FindArtistByLocationResponseImpl value,
          $Res Function(_$FindArtistByLocationResponseImpl) then) =
      __$$FindArtistByLocationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? artistId,
      String? name,
      String? country,
      String? address1,
      String? address2,
      String? address3,
      double? lat,
      double? lng,
      String? addressType,
      String? formattedAddress,
      String? city,
      String? googlePlaceId,
      String? distanceUnit,
      double? distance,
      Artist? artist});

  @override
  $ArtistCopyWith<$Res>? get artist;
}

/// @nodoc
class __$$FindArtistByLocationResponseImplCopyWithImpl<$Res>
    extends _$FindArtistByLocationResponseCopyWithImpl<$Res,
        _$FindArtistByLocationResponseImpl>
    implements _$$FindArtistByLocationResponseImplCopyWith<$Res> {
  __$$FindArtistByLocationResponseImplCopyWithImpl(
      _$FindArtistByLocationResponseImpl _value,
      $Res Function(_$FindArtistByLocationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? artistId = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? address3 = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? addressType = freezed,
    Object? formattedAddress = freezed,
    Object? city = freezed,
    Object? googlePlaceId = freezed,
    Object? distanceUnit = freezed,
    Object? distance = freezed,
    Object? artist = freezed,
  }) {
    return _then(_$FindArtistByLocationResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      address3: freezed == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceUnit: freezed == distanceUnit
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FindArtistByLocationResponseImpl
    implements _FindArtistByLocationResponse {
  const _$FindArtistByLocationResponseImpl(
      {this.id,
      this.artistId,
      this.name,
      this.country,
      this.address1,
      this.address2,
      this.address3,
      this.lat,
      this.lng,
      this.addressType,
      this.formattedAddress,
      this.city,
      this.googlePlaceId,
      this.distanceUnit,
      this.distance,
      this.artist});

  factory _$FindArtistByLocationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FindArtistByLocationResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final int? artistId;
  @override
  final String? name;
  @override
  final String? country;
  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? address3;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final String? addressType;
  @override
  final String? formattedAddress;
  @override
  final String? city;
  @override
  final String? googlePlaceId;
  @override
  final String? distanceUnit;
  @override
  final double? distance;
  @override
  final Artist? artist;

  @override
  String toString() {
    return 'FindArtistByLocationResponse(id: $id, artistId: $artistId, name: $name, country: $country, address1: $address1, address2: $address2, address3: $address3, lat: $lat, lng: $lng, addressType: $addressType, formattedAddress: $formattedAddress, city: $city, googlePlaceId: $googlePlaceId, distanceUnit: $distanceUnit, distance: $distance, artist: $artist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindArtistByLocationResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.address3, address3) ||
                other.address3 == address3) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.googlePlaceId, googlePlaceId) ||
                other.googlePlaceId == googlePlaceId) &&
            (identical(other.distanceUnit, distanceUnit) ||
                other.distanceUnit == distanceUnit) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      artistId,
      name,
      country,
      address1,
      address2,
      address3,
      lat,
      lng,
      addressType,
      formattedAddress,
      city,
      googlePlaceId,
      distanceUnit,
      distance,
      artist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FindArtistByLocationResponseImplCopyWith<
          _$FindArtistByLocationResponseImpl>
      get copyWith => __$$FindArtistByLocationResponseImplCopyWithImpl<
          _$FindArtistByLocationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FindArtistByLocationResponseImplToJson(
      this,
    );
  }
}

abstract class _FindArtistByLocationResponse
    implements FindArtistByLocationResponse {
  const factory _FindArtistByLocationResponse(
      {final int? id,
      final int? artistId,
      final String? name,
      final String? country,
      final String? address1,
      final String? address2,
      final String? address3,
      final double? lat,
      final double? lng,
      final String? addressType,
      final String? formattedAddress,
      final String? city,
      final String? googlePlaceId,
      final String? distanceUnit,
      final double? distance,
      final Artist? artist}) = _$FindArtistByLocationResponseImpl;

  factory _FindArtistByLocationResponse.fromJson(Map<String, dynamic> json) =
      _$FindArtistByLocationResponseImpl.fromJson;

  @override
  int? get id;
  @override
  int? get artistId;
  @override
  String? get name;
  @override
  String? get country;
  @override
  String? get address1;
  @override
  String? get address2;
  @override
  String? get address3;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  String? get addressType;
  @override
  String? get formattedAddress;
  @override
  String? get city;
  @override
  String? get googlePlaceId;
  @override
  String? get distanceUnit;
  @override
  double? get distance;
  @override
  Artist? get artist;
  @override
  @JsonKey(ignore: true)
  _$$FindArtistByLocationResponseImplCopyWith<
          _$FindArtistByLocationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  Contact? get contact => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  dynamic? get studioPhoto => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  dynamic? get profileThumbnail => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  Review? get review => throw _privateConstructorUsedError;
  int? get followers => throw _privateConstructorUsedError;
  bool? get isFollowedByUser => throw _privateConstructorUsedError;
  String? get distanceUnit => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;

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
      {Contact? contact,
      int? id,
      String? username,
      String? firstName,
      String? lastName,
      dynamic? studioPhoto,
      String? shortDescription,
      dynamic? profileThumbnail,
      int? rating,
      Review? review,
      int? followers,
      bool? isFollowedByUser,
      String? distanceUnit,
      double? distance});

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
    Object? contact = freezed,
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? studioPhoto = freezed,
    Object? shortDescription = freezed,
    Object? profileThumbnail = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? followers = freezed,
    Object? isFollowedByUser = freezed,
    Object? distanceUnit = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      studioPhoto: freezed == studioPhoto
          ? _value.studioPhoto
          : studioPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {Contact? contact,
      int? id,
      String? username,
      String? firstName,
      String? lastName,
      dynamic? studioPhoto,
      String? shortDescription,
      dynamic? profileThumbnail,
      int? rating,
      Review? review,
      int? followers,
      bool? isFollowedByUser,
      String? distanceUnit,
      double? distance});

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
    Object? contact = freezed,
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? studioPhoto = freezed,
    Object? shortDescription = freezed,
    Object? profileThumbnail = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? followers = freezed,
    Object? isFollowedByUser = freezed,
    Object? distanceUnit = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$ArtistImpl(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      studioPhoto: freezed == studioPhoto
          ? _value.studioPhoto
          : studioPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistImpl implements _Artist {
  const _$ArtistImpl(
      {this.contact,
      this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.studioPhoto,
      this.shortDescription,
      this.profileThumbnail,
      this.rating,
      this.review,
      this.followers,
      this.isFollowedByUser,
      this.distanceUnit,
      this.distance});

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  final Contact? contact;
  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final dynamic? studioPhoto;
  @override
  final String? shortDescription;
  @override
  final dynamic? profileThumbnail;
  @override
  final int? rating;
  @override
  final Review? review;
  @override
  final int? followers;
  @override
  final bool? isFollowedByUser;
  @override
  final String? distanceUnit;
  @override
  final double? distance;

  @override
  String toString() {
    return 'Artist(contact: $contact, id: $id, username: $username, firstName: $firstName, lastName: $lastName, studioPhoto: $studioPhoto, shortDescription: $shortDescription, profileThumbnail: $profileThumbnail, rating: $rating, review: $review, followers: $followers, isFollowedByUser: $isFollowedByUser, distanceUnit: $distanceUnit, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality()
                .equals(other.studioPhoto, studioPhoto) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            const DeepCollectionEquality()
                .equals(other.profileThumbnail, profileThumbnail) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.isFollowedByUser, isFollowedByUser) ||
                other.isFollowedByUser == isFollowedByUser) &&
            (identical(other.distanceUnit, distanceUnit) ||
                other.distanceUnit == distanceUnit) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contact,
      id,
      username,
      firstName,
      lastName,
      const DeepCollectionEquality().hash(studioPhoto),
      shortDescription,
      const DeepCollectionEquality().hash(profileThumbnail),
      rating,
      review,
      followers,
      isFollowedByUser,
      distanceUnit,
      distance);

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
      {final Contact? contact,
      final int? id,
      final String? username,
      final String? firstName,
      final String? lastName,
      final dynamic? studioPhoto,
      final String? shortDescription,
      final dynamic? profileThumbnail,
      final int? rating,
      final Review? review,
      final int? followers,
      final bool? isFollowedByUser,
      final String? distanceUnit,
      final double? distance}) = _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  Contact? get contact;
  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  dynamic? get studioPhoto;
  @override
  String? get shortDescription;
  @override
  dynamic? get profileThumbnail;
  @override
  int? get rating;
  @override
  Review? get review;
  @override
  int? get followers;
  @override
  bool? get isFollowedByUser;
  @override
  String? get distanceUnit;
  @override
  double? get distance;
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
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call({String? phone, String? email, String? country});
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
    Object? phone = freezed,
    Object? email = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? phone, String? email, String? country});
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
    Object? phone = freezed,
    Object? email = freezed,
    Object? country = freezed,
  }) {
    return _then(_$ContactImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactImpl implements _Contact {
  const _$ContactImpl({this.phone, this.email, this.country});

  factory _$ContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactImplFromJson(json);

  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? country;

  @override
  String toString() {
    return 'Contact(phone: $phone, email: $email, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, email, country);

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
      {final String? phone,
      final String? email,
      final String? country}) = _$ContactImpl;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$ContactImpl.fromJson;

  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  int? get artistId => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  Map<String, int>? get detail => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

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
      {int? artistId, double? value, Map<String, int>? detail, int? count});
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
  }) {
    return _then(_value.copyWith(
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {int? artistId, double? value, Map<String, int>? detail, int? count});
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
  }) {
    return _then(_$ReviewImpl(
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {this.artistId, this.value, final Map<String, int>? detail, this.count})
      : _detail = detail;

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final int? artistId;
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
  String toString() {
    return 'Review(artistId: $artistId, value: $value, detail: $detail, count: $count)';
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
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, artistId, value,
      const DeepCollectionEquality().hash(_detail), count);

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
      {final int? artistId,
      final double? value,
      final Map<String, int>? detail,
      final int? count}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  int? get artistId;
  @override
  double? get value;
  @override
  Map<String, int>? get detail;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
