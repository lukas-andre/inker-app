// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get address1 => throw _privateConstructorUsedError;
  String get shortAddress1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String? get address3 => throw _privateConstructorUsedError;
  String get addressType => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get formattedAddress => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  Viewport get viewport => throw _privateConstructorUsedError;
  GeoPoint get location => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get profileThumbnail => throw _privateConstructorUsedError;
  String? get googlePlaceId => throw _privateConstructorUsedError;
  int get locationOrder => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String address1,
      String shortAddress1,
      String address2,
      String? address3,
      String addressType,
      String state,
      String city,
      String country,
      String formattedAddress,
      double lat,
      double lng,
      Viewport viewport,
      GeoPoint location,
      String artistId,
      String name,
      String? profileThumbnail,
      String? googlePlaceId,
      int locationOrder,
      bool isActive});

  $ViewportCopyWith<$Res> get viewport;
  $GeoPointCopyWith<$Res> get location;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

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
    Object? address1 = null,
    Object? shortAddress1 = null,
    Object? address2 = null,
    Object? address3 = freezed,
    Object? addressType = null,
    Object? state = null,
    Object? city = null,
    Object? country = null,
    Object? formattedAddress = null,
    Object? lat = null,
    Object? lng = null,
    Object? viewport = null,
    Object? location = null,
    Object? artistId = null,
    Object? name = null,
    Object? profileThumbnail = freezed,
    Object? googlePlaceId = freezed,
    Object? locationOrder = null,
    Object? isActive = null,
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
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress1: null == shortAddress1
          ? _value.shortAddress1
          : shortAddress1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: freezed == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      viewport: null == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as Viewport,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationOrder: null == locationOrder
          ? _value.locationOrder
          : locationOrder // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewportCopyWith<$Res> get viewport {
    return $ViewportCopyWith<$Res>(_value.viewport, (value) {
      return _then(_value.copyWith(viewport: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoPointCopyWith<$Res> get location {
    return $GeoPointCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String address1,
      String shortAddress1,
      String address2,
      String? address3,
      String addressType,
      String state,
      String city,
      String country,
      String formattedAddress,
      double lat,
      double lng,
      Viewport viewport,
      GeoPoint location,
      String artistId,
      String name,
      String? profileThumbnail,
      String? googlePlaceId,
      int locationOrder,
      bool isActive});

  @override
  $ViewportCopyWith<$Res> get viewport;
  @override
  $GeoPointCopyWith<$Res> get location;
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? address1 = null,
    Object? shortAddress1 = null,
    Object? address2 = null,
    Object? address3 = freezed,
    Object? addressType = null,
    Object? state = null,
    Object? city = null,
    Object? country = null,
    Object? formattedAddress = null,
    Object? lat = null,
    Object? lng = null,
    Object? viewport = null,
    Object? location = null,
    Object? artistId = null,
    Object? name = null,
    Object? profileThumbnail = freezed,
    Object? googlePlaceId = freezed,
    Object? locationOrder = null,
    Object? isActive = null,
  }) {
    return _then(_$LocationImpl(
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
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress1: null == shortAddress1
          ? _value.shortAddress1
          : shortAddress1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: freezed == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      viewport: null == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as Viewport,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationOrder: null == locationOrder
          ? _value.locationOrder
          : locationOrder // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.address1,
      required this.shortAddress1,
      required this.address2,
      this.address3,
      required this.addressType,
      required this.state,
      required this.city,
      required this.country,
      required this.formattedAddress,
      required this.lat,
      required this.lng,
      required this.viewport,
      required this.location,
      required this.artistId,
      required this.name,
      this.profileThumbnail,
      this.googlePlaceId,
      this.locationOrder = 0,
      this.isActive = true});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String address1;
  @override
  final String shortAddress1;
  @override
  final String address2;
  @override
  final String? address3;
  @override
  final String addressType;
  @override
  final String state;
  @override
  final String city;
  @override
  final String country;
  @override
  final String formattedAddress;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final Viewport viewport;
  @override
  final GeoPoint location;
  @override
  final String artistId;
  @override
  final String name;
  @override
  final String? profileThumbnail;
  @override
  final String? googlePlaceId;
  @override
  @JsonKey()
  final int locationOrder;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'Location(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, address1: $address1, shortAddress1: $shortAddress1, address2: $address2, address3: $address3, addressType: $addressType, state: $state, city: $city, country: $country, formattedAddress: $formattedAddress, lat: $lat, lng: $lng, viewport: $viewport, location: $location, artistId: $artistId, name: $name, profileThumbnail: $profileThumbnail, googlePlaceId: $googlePlaceId, locationOrder: $locationOrder, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
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
            (identical(other.viewport, viewport) ||
                other.viewport == viewport) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileThumbnail, profileThumbnail) ||
                other.profileThumbnail == profileThumbnail) &&
            (identical(other.googlePlaceId, googlePlaceId) ||
                other.googlePlaceId == googlePlaceId) &&
            (identical(other.locationOrder, locationOrder) ||
                other.locationOrder == locationOrder) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
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
        viewport,
        location,
        artistId,
        name,
        profileThumbnail,
        googlePlaceId,
        locationOrder,
        isActive
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String address1,
      required final String shortAddress1,
      required final String address2,
      final String? address3,
      required final String addressType,
      required final String state,
      required final String city,
      required final String country,
      required final String formattedAddress,
      required final double lat,
      required final double lng,
      required final Viewport viewport,
      required final GeoPoint location,
      required final String artistId,
      required final String name,
      final String? profileThumbnail,
      final String? googlePlaceId,
      final int locationOrder,
      final bool isActive}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get address1;
  @override
  String get shortAddress1;
  @override
  String get address2;
  @override
  String? get address3;
  @override
  String get addressType;
  @override
  String get state;
  @override
  String get city;
  @override
  String get country;
  @override
  String get formattedAddress;
  @override
  double get lat;
  @override
  double get lng;
  @override
  Viewport get viewport;
  @override
  GeoPoint get location;
  @override
  String get artistId;
  @override
  String get name;
  @override
  String? get profileThumbnail;
  @override
  String? get googlePlaceId;
  @override
  int get locationOrder;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Viewport _$ViewportFromJson(Map<String, dynamic> json) {
  return _Viewport.fromJson(json);
}

/// @nodoc
mixin _$Viewport {
  LatLng get northeast => throw _privateConstructorUsedError;
  LatLng get southwest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewportCopyWith<Viewport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewportCopyWith<$Res> {
  factory $ViewportCopyWith(Viewport value, $Res Function(Viewport) then) =
      _$ViewportCopyWithImpl<$Res, Viewport>;
  @useResult
  $Res call({LatLng northeast, LatLng southwest});

  $LatLngCopyWith<$Res> get northeast;
  $LatLngCopyWith<$Res> get southwest;
}

/// @nodoc
class _$ViewportCopyWithImpl<$Res, $Val extends Viewport>
    implements $ViewportCopyWith<$Res> {
  _$ViewportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = null,
    Object? southwest = null,
  }) {
    return _then(_value.copyWith(
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as LatLng,
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res> get northeast {
    return $LatLngCopyWith<$Res>(_value.northeast, (value) {
      return _then(_value.copyWith(northeast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res> get southwest {
    return $LatLngCopyWith<$Res>(_value.southwest, (value) {
      return _then(_value.copyWith(southwest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ViewportImplCopyWith<$Res>
    implements $ViewportCopyWith<$Res> {
  factory _$$ViewportImplCopyWith(
          _$ViewportImpl value, $Res Function(_$ViewportImpl) then) =
      __$$ViewportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng northeast, LatLng southwest});

  @override
  $LatLngCopyWith<$Res> get northeast;
  @override
  $LatLngCopyWith<$Res> get southwest;
}

/// @nodoc
class __$$ViewportImplCopyWithImpl<$Res>
    extends _$ViewportCopyWithImpl<$Res, _$ViewportImpl>
    implements _$$ViewportImplCopyWith<$Res> {
  __$$ViewportImplCopyWithImpl(
      _$ViewportImpl _value, $Res Function(_$ViewportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = null,
    Object? southwest = null,
  }) {
    return _then(_$ViewportImpl(
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as LatLng,
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewportImpl implements _Viewport {
  const _$ViewportImpl({required this.northeast, required this.southwest});

  factory _$ViewportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewportImplFromJson(json);

  @override
  final LatLng northeast;
  @override
  final LatLng southwest;

  @override
  String toString() {
    return 'Viewport(northeast: $northeast, southwest: $southwest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewportImpl &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewportImplCopyWith<_$ViewportImpl> get copyWith =>
      __$$ViewportImplCopyWithImpl<_$ViewportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewportImplToJson(
      this,
    );
  }
}

abstract class _Viewport implements Viewport {
  const factory _Viewport(
      {required final LatLng northeast,
      required final LatLng southwest}) = _$ViewportImpl;

  factory _Viewport.fromJson(Map<String, dynamic> json) =
      _$ViewportImpl.fromJson;

  @override
  LatLng get northeast;
  @override
  LatLng get southwest;
  @override
  @JsonKey(ignore: true)
  _$$ViewportImplCopyWith<_$ViewportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LatLng _$LatLngFromJson(Map<String, dynamic> json) {
  return _LatLng.fromJson(json);
}

/// @nodoc
mixin _$LatLng {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLngCopyWith<LatLng> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngCopyWith<$Res> {
  factory $LatLngCopyWith(LatLng value, $Res Function(LatLng) then) =
      _$LatLngCopyWithImpl<$Res, LatLng>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LatLngCopyWithImpl<$Res, $Val extends LatLng>
    implements $LatLngCopyWith<$Res> {
  _$LatLngCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LatLngImplCopyWith<$Res> implements $LatLngCopyWith<$Res> {
  factory _$$LatLngImplCopyWith(
          _$LatLngImpl value, $Res Function(_$LatLngImpl) then) =
      __$$LatLngImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$LatLngImplCopyWithImpl<$Res>
    extends _$LatLngCopyWithImpl<$Res, _$LatLngImpl>
    implements _$$LatLngImplCopyWith<$Res> {
  __$$LatLngImplCopyWithImpl(
      _$LatLngImpl _value, $Res Function(_$LatLngImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$LatLngImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatLngImpl implements _LatLng {
  const _$LatLngImpl({required this.lat, required this.lng});

  factory _$LatLngImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatLngImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'LatLng(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLngImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLngImplCopyWith<_$LatLngImpl> get copyWith =>
      __$$LatLngImplCopyWithImpl<_$LatLngImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatLngImplToJson(
      this,
    );
  }
}

abstract class _LatLng implements LatLng {
  const factory _LatLng(
      {required final double lat, required final double lng}) = _$LatLngImpl;

  factory _LatLng.fromJson(Map<String, dynamic> json) = _$LatLngImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$LatLngImplCopyWith<_$LatLngImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoPoint _$GeoPointFromJson(Map<String, dynamic> json) {
  return _GeoPoint.fromJson(json);
}

/// @nodoc
mixin _$GeoPoint {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoPointCopyWith<GeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoPointCopyWith<$Res> {
  factory $GeoPointCopyWith(GeoPoint value, $Res Function(GeoPoint) then) =
      _$GeoPointCopyWithImpl<$Res, GeoPoint>;
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$GeoPointCopyWithImpl<$Res, $Val extends GeoPoint>
    implements $GeoPointCopyWith<$Res> {
  _$GeoPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoPointImplCopyWith<$Res>
    implements $GeoPointCopyWith<$Res> {
  factory _$$GeoPointImplCopyWith(
          _$GeoPointImpl value, $Res Function(_$GeoPointImpl) then) =
      __$$GeoPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$$GeoPointImplCopyWithImpl<$Res>
    extends _$GeoPointCopyWithImpl<$Res, _$GeoPointImpl>
    implements _$$GeoPointImplCopyWith<$Res> {
  __$$GeoPointImplCopyWithImpl(
      _$GeoPointImpl _value, $Res Function(_$GeoPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$GeoPointImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoPointImpl implements _GeoPoint {
  const _$GeoPointImpl(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$GeoPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoPointImplFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'GeoPoint(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoPointImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoPointImplCopyWith<_$GeoPointImpl> get copyWith =>
      __$$GeoPointImplCopyWithImpl<_$GeoPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoPointImplToJson(
      this,
    );
  }
}

abstract class _GeoPoint implements GeoPoint {
  const factory _GeoPoint(
      {required final String type,
      required final List<double> coordinates}) = _$GeoPointImpl;

  factory _GeoPoint.fromJson(Map<String, dynamic> json) =
      _$GeoPointImpl.fromJson;

  @override
  String get type;
  @override
  List<double> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$GeoPointImplCopyWith<_$GeoPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
