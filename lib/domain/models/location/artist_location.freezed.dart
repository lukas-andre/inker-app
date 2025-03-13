// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtistLocation _$ArtistLocationFromJson(Map<String, dynamic> json) {
  return _ArtistLocation.fromJson(json);
}

/// @nodoc
mixin _$ArtistLocation {
  int? get id => throw _privateConstructorUsedError;
  int get artistId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address1 => throw _privateConstructorUsedError;
  String? get shortAddress1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String? get address3 => throw _privateConstructorUsedError;
  AddressType? get addressType => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get formattedAddress => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  Map<String, dynamic>? get viewport => throw _privateConstructorUsedError;
  int get locationOrder => throw _privateConstructorUsedError;
  String? get googlePlaceId => throw _privateConstructorUsedError;
  String? get profileThumbnail => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistLocationCopyWith<ArtistLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistLocationCopyWith<$Res> {
  factory $ArtistLocationCopyWith(
          ArtistLocation value, $Res Function(ArtistLocation) then) =
      _$ArtistLocationCopyWithImpl<$Res, ArtistLocation>;
  @useResult
  $Res call(
      {int? id,
      int artistId,
      String name,
      String address1,
      String? shortAddress1,
      String address2,
      String? address3,
      AddressType? addressType,
      String? state,
      String city,
      String? country,
      String? formattedAddress,
      double lat,
      double lng,
      Map<String, dynamic>? viewport,
      int locationOrder,
      String? googlePlaceId,
      String? profileThumbnail,
      bool isActive,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ArtistLocationCopyWithImpl<$Res, $Val extends ArtistLocation>
    implements $ArtistLocationCopyWith<$Res> {
  _$ArtistLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? artistId = null,
    Object? name = null,
    Object? address1 = null,
    Object? shortAddress1 = freezed,
    Object? address2 = null,
    Object? address3 = freezed,
    Object? addressType = freezed,
    Object? state = freezed,
    Object? city = null,
    Object? country = freezed,
    Object? formattedAddress = freezed,
    Object? lat = null,
    Object? lng = null,
    Object? viewport = freezed,
    Object? locationOrder = null,
    Object? googlePlaceId = freezed,
    Object? profileThumbnail = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress1: freezed == shortAddress1
          ? _value.shortAddress1
          : shortAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: freezed == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as AddressType?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      viewport: freezed == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      locationOrder: null == locationOrder
          ? _value.locationOrder
          : locationOrder // ignore: cast_nullable_to_non_nullable
              as int,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistLocationImplCopyWith<$Res>
    implements $ArtistLocationCopyWith<$Res> {
  factory _$$ArtistLocationImplCopyWith(_$ArtistLocationImpl value,
          $Res Function(_$ArtistLocationImpl) then) =
      __$$ArtistLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int artistId,
      String name,
      String address1,
      String? shortAddress1,
      String address2,
      String? address3,
      AddressType? addressType,
      String? state,
      String city,
      String? country,
      String? formattedAddress,
      double lat,
      double lng,
      Map<String, dynamic>? viewport,
      int locationOrder,
      String? googlePlaceId,
      String? profileThumbnail,
      bool isActive,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$ArtistLocationImplCopyWithImpl<$Res>
    extends _$ArtistLocationCopyWithImpl<$Res, _$ArtistLocationImpl>
    implements _$$ArtistLocationImplCopyWith<$Res> {
  __$$ArtistLocationImplCopyWithImpl(
      _$ArtistLocationImpl _value, $Res Function(_$ArtistLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? artistId = null,
    Object? name = null,
    Object? address1 = null,
    Object? shortAddress1 = freezed,
    Object? address2 = null,
    Object? address3 = freezed,
    Object? addressType = freezed,
    Object? state = freezed,
    Object? city = null,
    Object? country = freezed,
    Object? formattedAddress = freezed,
    Object? lat = null,
    Object? lng = null,
    Object? viewport = freezed,
    Object? locationOrder = null,
    Object? googlePlaceId = freezed,
    Object? profileThumbnail = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ArtistLocationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress1: freezed == shortAddress1
          ? _value.shortAddress1
          : shortAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: freezed == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as AddressType?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      viewport: freezed == viewport
          ? _value._viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      locationOrder: null == locationOrder
          ? _value.locationOrder
          : locationOrder // ignore: cast_nullable_to_non_nullable
              as int,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistLocationImpl implements _ArtistLocation {
  const _$ArtistLocationImpl(
      {this.id,
      required this.artistId,
      required this.name,
      required this.address1,
      this.shortAddress1,
      required this.address2,
      this.address3,
      this.addressType,
      this.state,
      required this.city,
      this.country,
      this.formattedAddress,
      required this.lat,
      required this.lng,
      final Map<String, dynamic>? viewport,
      required this.locationOrder,
      this.googlePlaceId,
      this.profileThumbnail,
      this.isActive = true,
      this.createdAt,
      this.updatedAt})
      : _viewport = viewport;

  factory _$ArtistLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistLocationImplFromJson(json);

  @override
  final int? id;
  @override
  final int artistId;
  @override
  final String name;
  @override
  final String address1;
  @override
  final String? shortAddress1;
  @override
  final String address2;
  @override
  final String? address3;
  @override
  final AddressType? addressType;
  @override
  final String? state;
  @override
  final String city;
  @override
  final String? country;
  @override
  final String? formattedAddress;
  @override
  final double lat;
  @override
  final double lng;
  final Map<String, dynamic>? _viewport;
  @override
  Map<String, dynamic>? get viewport {
    final value = _viewport;
    if (value == null) return null;
    if (_viewport is EqualUnmodifiableMapView) return _viewport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int locationOrder;
  @override
  final String? googlePlaceId;
  @override
  final String? profileThumbnail;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ArtistLocation(id: $id, artistId: $artistId, name: $name, address1: $address1, shortAddress1: $shortAddress1, address2: $address2, address3: $address3, addressType: $addressType, state: $state, city: $city, country: $country, formattedAddress: $formattedAddress, lat: $lat, lng: $lng, viewport: $viewport, locationOrder: $locationOrder, googlePlaceId: $googlePlaceId, profileThumbnail: $profileThumbnail, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistLocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.shortAddress1, shortAddress1) ||
                other.shortAddress1 == shortAddress1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.address3, address3) ||
                other.address3 == address3) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            const DeepCollectionEquality().equals(other._viewport, _viewport) &&
            (identical(other.locationOrder, locationOrder) ||
                other.locationOrder == locationOrder) &&
            (identical(other.googlePlaceId, googlePlaceId) ||
                other.googlePlaceId == googlePlaceId) &&
            (identical(other.profileThumbnail, profileThumbnail) ||
                other.profileThumbnail == profileThumbnail) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        artistId,
        name,
        address1,
        shortAddress1,
        address2,
        address3,
        addressType,
        state,
        city,
        country,
        formattedAddress,
        lat,
        lng,
        const DeepCollectionEquality().hash(_viewport),
        locationOrder,
        googlePlaceId,
        profileThumbnail,
        isActive,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistLocationImplCopyWith<_$ArtistLocationImpl> get copyWith =>
      __$$ArtistLocationImplCopyWithImpl<_$ArtistLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistLocationImplToJson(
      this,
    );
  }
}

abstract class _ArtistLocation implements ArtistLocation {
  const factory _ArtistLocation(
      {final int? id,
      required final int artistId,
      required final String name,
      required final String address1,
      final String? shortAddress1,
      required final String address2,
      final String? address3,
      final AddressType? addressType,
      final String? state,
      required final String city,
      final String? country,
      final String? formattedAddress,
      required final double lat,
      required final double lng,
      final Map<String, dynamic>? viewport,
      required final int locationOrder,
      final String? googlePlaceId,
      final String? profileThumbnail,
      final bool isActive,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$ArtistLocationImpl;

  factory _ArtistLocation.fromJson(Map<String, dynamic> json) =
      _$ArtistLocationImpl.fromJson;

  @override
  int? get id;
  @override
  int get artistId;
  @override
  String get name;
  @override
  String get address1;
  @override
  String? get shortAddress1;
  @override
  String get address2;
  @override
  String? get address3;
  @override
  AddressType? get addressType;
  @override
  String? get state;
  @override
  String get city;
  @override
  String? get country;
  @override
  String? get formattedAddress;
  @override
  double get lat;
  @override
  double get lng;
  @override
  Map<String, dynamic>? get viewport;
  @override
  int get locationOrder;
  @override
  String? get googlePlaceId;
  @override
  String? get profileThumbnail;
  @override
  bool get isActive;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ArtistLocationImplCopyWith<_$ArtistLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
