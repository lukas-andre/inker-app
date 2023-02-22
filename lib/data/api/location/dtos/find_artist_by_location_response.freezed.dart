// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'find_artist_by_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_FindArtistByLocationResponseCopyWith<$Res>
    implements $FindArtistByLocationResponseCopyWith<$Res> {
  factory _$$_FindArtistByLocationResponseCopyWith(
          _$_FindArtistByLocationResponse value,
          $Res Function(_$_FindArtistByLocationResponse) then) =
      __$$_FindArtistByLocationResponseCopyWithImpl<$Res>;
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
class __$$_FindArtistByLocationResponseCopyWithImpl<$Res>
    extends _$FindArtistByLocationResponseCopyWithImpl<$Res,
        _$_FindArtistByLocationResponse>
    implements _$$_FindArtistByLocationResponseCopyWith<$Res> {
  __$$_FindArtistByLocationResponseCopyWithImpl(
      _$_FindArtistByLocationResponse _value,
      $Res Function(_$_FindArtistByLocationResponse) _then)
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
    return _then(_$_FindArtistByLocationResponse(
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
class _$_FindArtistByLocationResponse implements _FindArtistByLocationResponse {
  const _$_FindArtistByLocationResponse(
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

  factory _$_FindArtistByLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FindArtistByLocationResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FindArtistByLocationResponse &&
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
  _$$_FindArtistByLocationResponseCopyWith<_$_FindArtistByLocationResponse>
      get copyWith => __$$_FindArtistByLocationResponseCopyWithImpl<
          _$_FindArtistByLocationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FindArtistByLocationResponseToJson(
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
      final Artist? artist}) = _$_FindArtistByLocationResponse;

  factory _FindArtistByLocationResponse.fromJson(Map<String, dynamic> json) =
      _$_FindArtistByLocationResponse.fromJson;

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
  _$$_FindArtistByLocationResponseCopyWith<_$_FindArtistByLocationResponse>
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
  dynamic? get shortDescription => throw _privateConstructorUsedError;
  dynamic? get profileThumbnail => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  List<ReviewElement>? get reviews => throw _privateConstructorUsedError;
  Review? get review => throw _privateConstructorUsedError;
  List<RecentWork>? get recentWorks => throw _privateConstructorUsedError;

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
      dynamic? shortDescription,
      dynamic? profileThumbnail,
      int? rating,
      List<ReviewElement>? reviews,
      Review? review,
      List<RecentWork>? recentWorks});

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
    Object? studioPhoto = null,
    Object? shortDescription = null,
    Object? profileThumbnail = null,
    Object? rating = freezed,
    Object? reviews = freezed,
    Object? review = freezed,
    Object? recentWorks = freezed,
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
      studioPhoto: null == studioPhoto
          ? _value.studioPhoto
          : studioPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      profileThumbnail: null == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewElement>?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
      recentWorks: freezed == recentWorks
          ? _value.recentWorks
          : recentWorks // ignore: cast_nullable_to_non_nullable
              as List<RecentWork>?,
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
abstract class _$$_ArtistCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$_ArtistCopyWith(_$_Artist value, $Res Function(_$_Artist) then) =
      __$$_ArtistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Contact? contact,
      int? id,
      String? username,
      String? firstName,
      String? lastName,
      dynamic? studioPhoto,
      dynamic? shortDescription,
      dynamic? profileThumbnail,
      int? rating,
      List<ReviewElement>? reviews,
      Review? review,
      List<RecentWork>? recentWorks});

  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class __$$_ArtistCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$_Artist>
    implements _$$_ArtistCopyWith<$Res> {
  __$$_ArtistCopyWithImpl(_$_Artist _value, $Res Function(_$_Artist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? studioPhoto = null,
    Object? shortDescription = null,
    Object? profileThumbnail = null,
    Object? rating = freezed,
    Object? reviews = freezed,
    Object? review = freezed,
    Object? recentWorks = freezed,
  }) {
    return _then(_$_Artist(
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
      studioPhoto: null == studioPhoto
          ? _value.studioPhoto
          : studioPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      profileThumbnail: null == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewElement>?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
      recentWorks: freezed == recentWorks
          ? _value._recentWorks
          : recentWorks // ignore: cast_nullable_to_non_nullable
              as List<RecentWork>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Artist implements _Artist {
  const _$_Artist(
      {this.contact,
      this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.studioPhoto,
      this.shortDescription,
      this.profileThumbnail,
      this.rating,
      final List<ReviewElement>? reviews,
      this.review,
      final List<RecentWork>? recentWorks})
      : _reviews = reviews,
        _recentWorks = recentWorks;

  factory _$_Artist.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistFromJson(json);

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
  final dynamic? shortDescription;
  @override
  final dynamic? profileThumbnail;
  @override
  final int? rating;
  final List<ReviewElement>? _reviews;
  @override
  List<ReviewElement>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Review? review;
  final List<RecentWork>? _recentWorks;
  @override
  List<RecentWork>? get recentWorks {
    final value = _recentWorks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Artist(contact: $contact, id: $id, username: $username, firstName: $firstName, lastName: $lastName, studioPhoto: $studioPhoto, shortDescription: $shortDescription, profileThumbnail: $profileThumbnail, rating: $rating, reviews: $reviews, review: $review, recentWorks: $recentWorks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Artist &&
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
            const DeepCollectionEquality()
                .equals(other.shortDescription, shortDescription) &&
            const DeepCollectionEquality()
                .equals(other.profileThumbnail, profileThumbnail) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.review, review) || other.review == review) &&
            const DeepCollectionEquality()
                .equals(other._recentWorks, _recentWorks));
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
      const DeepCollectionEquality().hash(shortDescription),
      const DeepCollectionEquality().hash(profileThumbnail),
      rating,
      const DeepCollectionEquality().hash(_reviews),
      review,
      const DeepCollectionEquality().hash(_recentWorks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtistCopyWith<_$_Artist> get copyWith =>
      __$$_ArtistCopyWithImpl<_$_Artist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistToJson(
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
      final dynamic? shortDescription,
      final dynamic? profileThumbnail,
      final int? rating,
      final List<ReviewElement>? reviews,
      final Review? review,
      final List<RecentWork>? recentWorks}) = _$_Artist;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$_Artist.fromJson;

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
  dynamic? get shortDescription;
  @override
  dynamic? get profileThumbnail;
  @override
  int? get rating;
  @override
  List<ReviewElement>? get reviews;
  @override
  Review? get review;
  @override
  List<RecentWork>? get recentWorks;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistCopyWith<_$_Artist> get copyWith =>
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
abstract class _$$_ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$_ContactCopyWith(
          _$_Contact value, $Res Function(_$_Contact) then) =
      __$$_ContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone, String? email, String? country});
}

/// @nodoc
class __$$_ContactCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$_Contact>
    implements _$$_ContactCopyWith<$Res> {
  __$$_ContactCopyWithImpl(_$_Contact _value, $Res Function(_$_Contact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_Contact(
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
class _$_Contact implements _Contact {
  const _$_Contact({this.phone, this.email, this.country});

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
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
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      __$$_ContactCopyWithImpl<_$_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {final String? phone,
      final String? email,
      final String? country}) = _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}

RecentWork _$RecentWorkFromJson(Map<String, dynamic> json) {
  return _RecentWork.fromJson(json);
}

/// @nodoc
mixin _$RecentWork {
  String? get title => throw _privateConstructorUsedError;
  int? get customerId => throw _privateConstructorUsedError;
  WorkEvidence? get workEvidence => throw _privateConstructorUsedError;
  int? get agendaId => throw _privateConstructorUsedError;
  int? get eventId => throw _privateConstructorUsedError;
  int? get artistId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentWorkCopyWith<RecentWork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentWorkCopyWith<$Res> {
  factory $RecentWorkCopyWith(
          RecentWork value, $Res Function(RecentWork) then) =
      _$RecentWorkCopyWithImpl<$Res, RecentWork>;
  @useResult
  $Res call(
      {String? title,
      int? customerId,
      WorkEvidence? workEvidence,
      int? agendaId,
      int? eventId,
      int? artistId});

  $WorkEvidenceCopyWith<$Res>? get workEvidence;
}

/// @nodoc
class _$RecentWorkCopyWithImpl<$Res, $Val extends RecentWork>
    implements $RecentWorkCopyWith<$Res> {
  _$RecentWorkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? customerId = freezed,
    Object? workEvidence = freezed,
    Object? agendaId = freezed,
    Object? eventId = freezed,
    Object? artistId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as WorkEvidence?,
      agendaId: freezed == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as int?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkEvidenceCopyWith<$Res>? get workEvidence {
    if (_value.workEvidence == null) {
      return null;
    }

    return $WorkEvidenceCopyWith<$Res>(_value.workEvidence!, (value) {
      return _then(_value.copyWith(workEvidence: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecentWorkCopyWith<$Res>
    implements $RecentWorkCopyWith<$Res> {
  factory _$$_RecentWorkCopyWith(
          _$_RecentWork value, $Res Function(_$_RecentWork) then) =
      __$$_RecentWorkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      int? customerId,
      WorkEvidence? workEvidence,
      int? agendaId,
      int? eventId,
      int? artistId});

  @override
  $WorkEvidenceCopyWith<$Res>? get workEvidence;
}

/// @nodoc
class __$$_RecentWorkCopyWithImpl<$Res>
    extends _$RecentWorkCopyWithImpl<$Res, _$_RecentWork>
    implements _$$_RecentWorkCopyWith<$Res> {
  __$$_RecentWorkCopyWithImpl(
      _$_RecentWork _value, $Res Function(_$_RecentWork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? customerId = freezed,
    Object? workEvidence = freezed,
    Object? agendaId = freezed,
    Object? eventId = freezed,
    Object? artistId = freezed,
  }) {
    return _then(_$_RecentWork(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as WorkEvidence?,
      agendaId: freezed == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as int?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentWork implements _RecentWork {
  const _$_RecentWork(
      {this.title,
      this.customerId,
      this.workEvidence,
      this.agendaId,
      this.eventId,
      this.artistId});

  factory _$_RecentWork.fromJson(Map<String, dynamic> json) =>
      _$$_RecentWorkFromJson(json);

  @override
  final String? title;
  @override
  final int? customerId;
  @override
  final WorkEvidence? workEvidence;
  @override
  final int? agendaId;
  @override
  final int? eventId;
  @override
  final int? artistId;

  @override
  String toString() {
    return 'RecentWork(title: $title, customerId: $customerId, workEvidence: $workEvidence, agendaId: $agendaId, eventId: $eventId, artistId: $artistId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentWork &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.workEvidence, workEvidence) ||
                other.workEvidence == workEvidence) &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, customerId, workEvidence,
      agendaId, eventId, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecentWorkCopyWith<_$_RecentWork> get copyWith =>
      __$$_RecentWorkCopyWithImpl<_$_RecentWork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentWorkToJson(
      this,
    );
  }
}

abstract class _RecentWork implements RecentWork {
  const factory _RecentWork(
      {final String? title,
      final int? customerId,
      final WorkEvidence? workEvidence,
      final int? agendaId,
      final int? eventId,
      final int? artistId}) = _$_RecentWork;

  factory _RecentWork.fromJson(Map<String, dynamic> json) =
      _$_RecentWork.fromJson;

  @override
  String? get title;
  @override
  int? get customerId;
  @override
  WorkEvidence? get workEvidence;
  @override
  int? get agendaId;
  @override
  int? get eventId;
  @override
  int? get artistId;
  @override
  @JsonKey(ignore: true)
  _$$_RecentWorkCopyWith<_$_RecentWork> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkEvidence _$WorkEvidenceFromJson(Map<String, dynamic> json) {
  return _WorkEvidence.fromJson(json);
}

/// @nodoc
mixin _$WorkEvidence {
  int? get count => throw _privateConstructorUsedError;
  List<MultimediaMetadata>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkEvidenceCopyWith<WorkEvidence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkEvidenceCopyWith<$Res> {
  factory $WorkEvidenceCopyWith(
          WorkEvidence value, $Res Function(WorkEvidence) then) =
      _$WorkEvidenceCopyWithImpl<$Res, WorkEvidence>;
  @useResult
  $Res call({int? count, List<MultimediaMetadata>? metadata});
}

/// @nodoc
class _$WorkEvidenceCopyWithImpl<$Res, $Val extends WorkEvidence>
    implements $WorkEvidenceCopyWith<$Res> {
  _$WorkEvidenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<MultimediaMetadata>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkEvidenceCopyWith<$Res>
    implements $WorkEvidenceCopyWith<$Res> {
  factory _$$_WorkEvidenceCopyWith(
          _$_WorkEvidence value, $Res Function(_$_WorkEvidence) then) =
      __$$_WorkEvidenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<MultimediaMetadata>? metadata});
}

/// @nodoc
class __$$_WorkEvidenceCopyWithImpl<$Res>
    extends _$WorkEvidenceCopyWithImpl<$Res, _$_WorkEvidence>
    implements _$$_WorkEvidenceCopyWith<$Res> {
  __$$_WorkEvidenceCopyWithImpl(
      _$_WorkEvidence _value, $Res Function(_$_WorkEvidence) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$_WorkEvidence(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<MultimediaMetadata>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkEvidence implements _WorkEvidence {
  const _$_WorkEvidence({this.count, final List<MultimediaMetadata>? metadata})
      : _metadata = metadata;

  factory _$_WorkEvidence.fromJson(Map<String, dynamic> json) =>
      _$$_WorkEvidenceFromJson(json);

  @override
  final int? count;
  final List<MultimediaMetadata>? _metadata;
  @override
  List<MultimediaMetadata>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkEvidence(count: $count, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkEvidence &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkEvidenceCopyWith<_$_WorkEvidence> get copyWith =>
      __$$_WorkEvidenceCopyWithImpl<_$_WorkEvidence>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkEvidenceToJson(
      this,
    );
  }
}

abstract class _WorkEvidence implements WorkEvidence {
  const factory _WorkEvidence(
      {final int? count,
      final List<MultimediaMetadata>? metadata}) = _$_WorkEvidence;

  factory _WorkEvidence.fromJson(Map<String, dynamic> json) =
      _$_WorkEvidence.fromJson;

  @override
  int? get count;
  @override
  List<MultimediaMetadata>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_WorkEvidenceCopyWith<_$_WorkEvidence> get copyWith =>
      throw _privateConstructorUsedError;
}

MultimediaMetadata _$MultimediaMetadataFromJson(Map<String, dynamic> json) {
  return _MultimediaMetadata.fromJson(json);
}

/// @nodoc
mixin _$MultimediaMetadata {
  String? get url => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get encoding => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;
  String? get fieldname => throw _privateConstructorUsedError;
  String? get originalname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultimediaMetadataCopyWith<MultimediaMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultimediaMetadataCopyWith<$Res> {
  factory $MultimediaMetadataCopyWith(
          MultimediaMetadata value, $Res Function(MultimediaMetadata) then) =
      _$MultimediaMetadataCopyWithImpl<$Res, MultimediaMetadata>;
  @useResult
  $Res call(
      {String? url,
      int? size,
      String? type,
      String? encoding,
      int? position,
      String? fieldname,
      String? originalname});
}

/// @nodoc
class _$MultimediaMetadataCopyWithImpl<$Res, $Val extends MultimediaMetadata>
    implements $MultimediaMetadataCopyWith<$Res> {
  _$MultimediaMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? encoding = freezed,
    Object? position = freezed,
    Object? fieldname = freezed,
    Object? originalname = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldname: freezed == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String?,
      originalname: freezed == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultimediaMetadataCopyWith<$Res>
    implements $MultimediaMetadataCopyWith<$Res> {
  factory _$$_MultimediaMetadataCopyWith(_$_MultimediaMetadata value,
          $Res Function(_$_MultimediaMetadata) then) =
      __$$_MultimediaMetadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
      int? size,
      String? type,
      String? encoding,
      int? position,
      String? fieldname,
      String? originalname});
}

/// @nodoc
class __$$_MultimediaMetadataCopyWithImpl<$Res>
    extends _$MultimediaMetadataCopyWithImpl<$Res, _$_MultimediaMetadata>
    implements _$$_MultimediaMetadataCopyWith<$Res> {
  __$$_MultimediaMetadataCopyWithImpl(
      _$_MultimediaMetadata _value, $Res Function(_$_MultimediaMetadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? encoding = freezed,
    Object? position = freezed,
    Object? fieldname = freezed,
    Object? originalname = freezed,
  }) {
    return _then(_$_MultimediaMetadata(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldname: freezed == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String?,
      originalname: freezed == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MultimediaMetadata implements _MultimediaMetadata {
  const _$_MultimediaMetadata(
      {this.url,
      this.size,
      this.type,
      this.encoding,
      this.position,
      this.fieldname,
      this.originalname});

  factory _$_MultimediaMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_MultimediaMetadataFromJson(json);

  @override
  final String? url;
  @override
  final int? size;
  @override
  final String? type;
  @override
  final String? encoding;
  @override
  final int? position;
  @override
  final String? fieldname;
  @override
  final String? originalname;

  @override
  String toString() {
    return 'MultimediaMetadata(url: $url, size: $size, type: $type, encoding: $encoding, position: $position, fieldname: $fieldname, originalname: $originalname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultimediaMetadata &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.fieldname, fieldname) ||
                other.fieldname == fieldname) &&
            (identical(other.originalname, originalname) ||
                other.originalname == originalname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, size, type, encoding,
      position, fieldname, originalname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultimediaMetadataCopyWith<_$_MultimediaMetadata> get copyWith =>
      __$$_MultimediaMetadataCopyWithImpl<_$_MultimediaMetadata>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultimediaMetadataToJson(
      this,
    );
  }
}

abstract class _MultimediaMetadata implements MultimediaMetadata {
  const factory _MultimediaMetadata(
      {final String? url,
      final int? size,
      final String? type,
      final String? encoding,
      final int? position,
      final String? fieldname,
      final String? originalname}) = _$_MultimediaMetadata;

  factory _MultimediaMetadata.fromJson(Map<String, dynamic> json) =
      _$_MultimediaMetadata.fromJson;

  @override
  String? get url;
  @override
  int? get size;
  @override
  String? get type;
  @override
  String? get encoding;
  @override
  int? get position;
  @override
  String? get fieldname;
  @override
  String? get originalname;
  @override
  @JsonKey(ignore: true)
  _$$_MultimediaMetadataCopyWith<_$_MultimediaMetadata> get copyWith =>
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
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? artistId, double? value, Map<String, int>? detail, int? count});
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = freezed,
    Object? value = freezed,
    Object? detail = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_Review(
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
class _$_Review implements _Review {
  const _$_Review(
      {this.artistId, this.value, final Map<String, int>? detail, this.count})
      : _detail = detail;

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  final int? artistId;
  @override
  final double? value;
  final Map<String, int>? _detail;
  @override
  Map<String, int>? get detail {
    final value = _detail;
    if (value == null) return null;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
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
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {final int? artistId,
      final double? value,
      final Map<String, int>? detail,
      final int? count}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

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
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewElement _$ReviewElementFromJson(Map<String, dynamic> json) {
  return _ReviewElement.fromJson(json);
}

/// @nodoc
mixin _$ReviewElement {
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get artistId => throw _privateConstructorUsedError;
  int? get eventId => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  dynamic? get header => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  ReviewReactions? get reviewReactions => throw _privateConstructorUsedError;
  int? get createdBy => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  bool? get isRated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewElementCopyWith<ReviewElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewElementCopyWith<$Res> {
  factory $ReviewElementCopyWith(
          ReviewElement value, $Res Function(ReviewElement) then) =
      _$ReviewElementCopyWithImpl<$Res, ReviewElement>;
  @useResult
  $Res call(
      {DateTime? createdAt,
      int? artistId,
      int? eventId,
      int? value,
      dynamic? header,
      String? content,
      ReviewReactions? reviewReactions,
      int? createdBy,
      String? displayName,
      bool? isRated});

  $ReviewReactionsCopyWith<$Res>? get reviewReactions;
}

/// @nodoc
class _$ReviewElementCopyWithImpl<$Res, $Val extends ReviewElement>
    implements $ReviewElementCopyWith<$Res> {
  _$ReviewElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? artistId = freezed,
    Object? eventId = freezed,
    Object? value = freezed,
    Object? header = null,
    Object? content = freezed,
    Object? reviewReactions = freezed,
    Object? createdBy = freezed,
    Object? displayName = freezed,
    Object? isRated = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewReactions: freezed == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as ReviewReactions?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isRated: freezed == isRated
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewReactionsCopyWith<$Res>? get reviewReactions {
    if (_value.reviewReactions == null) {
      return null;
    }

    return $ReviewReactionsCopyWith<$Res>(_value.reviewReactions!, (value) {
      return _then(_value.copyWith(reviewReactions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewElementCopyWith<$Res>
    implements $ReviewElementCopyWith<$Res> {
  factory _$$_ReviewElementCopyWith(
          _$_ReviewElement value, $Res Function(_$_ReviewElement) then) =
      __$$_ReviewElementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? createdAt,
      int? artistId,
      int? eventId,
      int? value,
      dynamic? header,
      String? content,
      ReviewReactions? reviewReactions,
      int? createdBy,
      String? displayName,
      bool? isRated});

  @override
  $ReviewReactionsCopyWith<$Res>? get reviewReactions;
}

/// @nodoc
class __$$_ReviewElementCopyWithImpl<$Res>
    extends _$ReviewElementCopyWithImpl<$Res, _$_ReviewElement>
    implements _$$_ReviewElementCopyWith<$Res> {
  __$$_ReviewElementCopyWithImpl(
      _$_ReviewElement _value, $Res Function(_$_ReviewElement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? artistId = freezed,
    Object? eventId = freezed,
    Object? value = freezed,
    Object? header = null,
    Object? content = freezed,
    Object? reviewReactions = freezed,
    Object? createdBy = freezed,
    Object? displayName = freezed,
    Object? isRated = freezed,
  }) {
    return _then(_$_ReviewElement(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewReactions: freezed == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as ReviewReactions?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isRated: freezed == isRated
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewElement implements _ReviewElement {
  const _$_ReviewElement(
      {this.createdAt,
      this.artistId,
      this.eventId,
      this.value,
      this.header,
      this.content,
      this.reviewReactions,
      this.createdBy,
      this.displayName,
      this.isRated});

  factory _$_ReviewElement.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewElementFromJson(json);

  @override
  final DateTime? createdAt;
  @override
  final int? artistId;
  @override
  final int? eventId;
  @override
  final int? value;
  @override
  final dynamic? header;
  @override
  final String? content;
  @override
  final ReviewReactions? reviewReactions;
  @override
  final int? createdBy;
  @override
  final String? displayName;
  @override
  final bool? isRated;

  @override
  String toString() {
    return 'ReviewElement(createdAt: $createdAt, artistId: $artistId, eventId: $eventId, value: $value, header: $header, content: $content, reviewReactions: $reviewReactions, createdBy: $createdBy, displayName: $displayName, isRated: $isRated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewElement &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other.header, header) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.reviewReactions, reviewReactions) ||
                other.reviewReactions == reviewReactions) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.isRated, isRated) || other.isRated == isRated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      artistId,
      eventId,
      value,
      const DeepCollectionEquality().hash(header),
      content,
      reviewReactions,
      createdBy,
      displayName,
      isRated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewElementCopyWith<_$_ReviewElement> get copyWith =>
      __$$_ReviewElementCopyWithImpl<_$_ReviewElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewElementToJson(
      this,
    );
  }
}

abstract class _ReviewElement implements ReviewElement {
  const factory _ReviewElement(
      {final DateTime? createdAt,
      final int? artistId,
      final int? eventId,
      final int? value,
      final dynamic? header,
      final String? content,
      final ReviewReactions? reviewReactions,
      final int? createdBy,
      final String? displayName,
      final bool? isRated}) = _$_ReviewElement;

  factory _ReviewElement.fromJson(Map<String, dynamic> json) =
      _$_ReviewElement.fromJson;

  @override
  DateTime? get createdAt;
  @override
  int? get artistId;
  @override
  int? get eventId;
  @override
  int? get value;
  @override
  dynamic? get header;
  @override
  String? get content;
  @override
  ReviewReactions? get reviewReactions;
  @override
  int? get createdBy;
  @override
  String? get displayName;
  @override
  bool? get isRated;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewElementCopyWith<_$_ReviewElement> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewReactions _$ReviewReactionsFromJson(Map<String, dynamic> json) {
  return _ReviewReactions.fromJson(json);
}

/// @nodoc
mixin _$ReviewReactions {
  int? get likes => throw _privateConstructorUsedError;
  int? get dislikes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewReactionsCopyWith<ReviewReactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewReactionsCopyWith<$Res> {
  factory $ReviewReactionsCopyWith(
          ReviewReactions value, $Res Function(ReviewReactions) then) =
      _$ReviewReactionsCopyWithImpl<$Res, ReviewReactions>;
  @useResult
  $Res call({int? likes, int? dislikes});
}

/// @nodoc
class _$ReviewReactionsCopyWithImpl<$Res, $Val extends ReviewReactions>
    implements $ReviewReactionsCopyWith<$Res> {
  _$ReviewReactionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? dislikes = freezed,
  }) {
    return _then(_value.copyWith(
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikes: freezed == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewReactionsCopyWith<$Res>
    implements $ReviewReactionsCopyWith<$Res> {
  factory _$$_ReviewReactionsCopyWith(
          _$_ReviewReactions value, $Res Function(_$_ReviewReactions) then) =
      __$$_ReviewReactionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? likes, int? dislikes});
}

/// @nodoc
class __$$_ReviewReactionsCopyWithImpl<$Res>
    extends _$ReviewReactionsCopyWithImpl<$Res, _$_ReviewReactions>
    implements _$$_ReviewReactionsCopyWith<$Res> {
  __$$_ReviewReactionsCopyWithImpl(
      _$_ReviewReactions _value, $Res Function(_$_ReviewReactions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? dislikes = freezed,
  }) {
    return _then(_$_ReviewReactions(
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikes: freezed == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewReactions implements _ReviewReactions {
  const _$_ReviewReactions({this.likes, this.dislikes});

  factory _$_ReviewReactions.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewReactionsFromJson(json);

  @override
  final int? likes;
  @override
  final int? dislikes;

  @override
  String toString() {
    return 'ReviewReactions(likes: $likes, dislikes: $dislikes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewReactions &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.dislikes, dislikes) ||
                other.dislikes == dislikes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, likes, dislikes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewReactionsCopyWith<_$_ReviewReactions> get copyWith =>
      __$$_ReviewReactionsCopyWithImpl<_$_ReviewReactions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewReactionsToJson(
      this,
    );
  }
}

abstract class _ReviewReactions implements ReviewReactions {
  const factory _ReviewReactions({final int? likes, final int? dislikes}) =
      _$_ReviewReactions;

  factory _ReviewReactions.fromJson(Map<String, dynamic> json) =
      _$_ReviewReactions.fromJson;

  @override
  int? get likes;
  @override
  int? get dislikes;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewReactionsCopyWith<_$_ReviewReactions> get copyWith =>
      throw _privateConstructorUsedError;
}
