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
