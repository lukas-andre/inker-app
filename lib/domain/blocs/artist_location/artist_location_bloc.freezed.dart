// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistLocationEvent {
  String get artistId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) loadLocations,
    required TResult Function(String artistId, ArtistLocation location)
        createLocation,
    required TResult Function(
            String artistId, String locationId, ArtistLocation location)
        updateLocation,
    required TResult Function(String artistId, String locationId)
        deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? loadLocations,
    TResult? Function(String artistId, ArtistLocation location)? createLocation,
    TResult? Function(
            String artistId, String locationId, ArtistLocation location)?
        updateLocation,
    TResult? Function(String artistId, String locationId)? deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? loadLocations,
    TResult Function(String artistId, ArtistLocation location)? createLocation,
    TResult Function(
            String artistId, String locationId, ArtistLocation location)?
        updateLocation,
    TResult Function(String artistId, String locationId)? deleteLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLocations value) loadLocations,
    required TResult Function(_CreateLocation value) createLocation,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_DeleteLocation value) deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadLocations value)? loadLocations,
    TResult? Function(_CreateLocation value)? createLocation,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_DeleteLocation value)? deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLocations value)? loadLocations,
    TResult Function(_CreateLocation value)? createLocation,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistLocationEventCopyWith<ArtistLocationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistLocationEventCopyWith<$Res> {
  factory $ArtistLocationEventCopyWith(
          ArtistLocationEvent value, $Res Function(ArtistLocationEvent) then) =
      _$ArtistLocationEventCopyWithImpl<$Res, ArtistLocationEvent>;
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class _$ArtistLocationEventCopyWithImpl<$Res, $Val extends ArtistLocationEvent>
    implements $ArtistLocationEventCopyWith<$Res> {
  _$ArtistLocationEventCopyWithImpl(this._value, this._then);

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
abstract class _$$LoadLocationsImplCopyWith<$Res>
    implements $ArtistLocationEventCopyWith<$Res> {
  factory _$$LoadLocationsImplCopyWith(
          _$LoadLocationsImpl value, $Res Function(_$LoadLocationsImpl) then) =
      __$$LoadLocationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class __$$LoadLocationsImplCopyWithImpl<$Res>
    extends _$ArtistLocationEventCopyWithImpl<$Res, _$LoadLocationsImpl>
    implements _$$LoadLocationsImplCopyWith<$Res> {
  __$$LoadLocationsImplCopyWithImpl(
      _$LoadLocationsImpl _value, $Res Function(_$LoadLocationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$LoadLocationsImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadLocationsImpl implements _LoadLocations {
  const _$LoadLocationsImpl(this.artistId);

  @override
  final String artistId;

  @override
  String toString() {
    return 'ArtistLocationEvent.loadLocations(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadLocationsImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadLocationsImplCopyWith<_$LoadLocationsImpl> get copyWith =>
      __$$LoadLocationsImplCopyWithImpl<_$LoadLocationsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) loadLocations,
    required TResult Function(String artistId, ArtistLocation location)
        createLocation,
    required TResult Function(
            String artistId, String locationId, ArtistLocation location)
        updateLocation,
    required TResult Function(String artistId, String locationId)
        deleteLocation,
  }) {
    return loadLocations(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? loadLocations,
    TResult? Function(String artistId, ArtistLocation location)? createLocation,
    TResult? Function(
            String artistId, String locationId, ArtistLocation location)?
        updateLocation,
    TResult? Function(String artistId, String locationId)? deleteLocation,
  }) {
    return loadLocations?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? loadLocations,
    TResult Function(String artistId, ArtistLocation location)? createLocation,
    TResult Function(
            String artistId, String locationId, ArtistLocation location)?
        updateLocation,
    TResult Function(String artistId, String locationId)? deleteLocation,
    required TResult orElse(),
  }) {
    if (loadLocations != null) {
      return loadLocations(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLocations value) loadLocations,
    required TResult Function(_CreateLocation value) createLocation,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_DeleteLocation value) deleteLocation,
  }) {
    return loadLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadLocations value)? loadLocations,
    TResult? Function(_CreateLocation value)? createLocation,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_DeleteLocation value)? deleteLocation,
  }) {
    return loadLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLocations value)? loadLocations,
    TResult Function(_CreateLocation value)? createLocation,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
    required TResult orElse(),
  }) {
    if (loadLocations != null) {
      return loadLocations(this);
    }
    return orElse();
  }
}

abstract class _LoadLocations implements ArtistLocationEvent {
  const factory _LoadLocations(final String artistId) = _$LoadLocationsImpl;

  @override
  String get artistId;
  @override
  @JsonKey(ignore: true)
  _$$LoadLocationsImplCopyWith<_$LoadLocationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateLocationImplCopyWith<$Res>
    implements $ArtistLocationEventCopyWith<$Res> {
  factory _$$CreateLocationImplCopyWith(_$CreateLocationImpl value,
          $Res Function(_$CreateLocationImpl) then) =
      __$$CreateLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artistId, ArtistLocation location});

  $ArtistLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$CreateLocationImplCopyWithImpl<$Res>
    extends _$ArtistLocationEventCopyWithImpl<$Res, _$CreateLocationImpl>
    implements _$$CreateLocationImplCopyWith<$Res> {
  __$$CreateLocationImplCopyWithImpl(
      _$CreateLocationImpl _value, $Res Function(_$CreateLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? location = null,
  }) {
    return _then(_$CreateLocationImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ArtistLocation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistLocationCopyWith<$Res> get location {
    return $ArtistLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$CreateLocationImpl implements _CreateLocation {
  const _$CreateLocationImpl(this.artistId, this.location);

  @override
  final String artistId;
  @override
  final ArtistLocation location;

  @override
  String toString() {
    return 'ArtistLocationEvent.createLocation(artistId: $artistId, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLocationImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateLocationImplCopyWith<_$CreateLocationImpl> get copyWith =>
      __$$CreateLocationImplCopyWithImpl<_$CreateLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) loadLocations,
    required TResult Function(String artistId, ArtistLocation location)
        createLocation,
    required TResult Function(
            String artistId, String locationId, ArtistLocation location)
        updateLocation,
    required TResult Function(String artistId, String locationId)
        deleteLocation,
  }) {
    return createLocation(artistId, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? loadLocations,
    TResult? Function(String artistId, ArtistLocation location)? createLocation,
    TResult? Function(
            String artistId, String locationId, ArtistLocation location)?
        updateLocation,
    TResult? Function(String artistId, String locationId)? deleteLocation,
  }) {
    return createLocation?.call(artistId, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? loadLocations,
    TResult Function(String artistId, ArtistLocation location)? createLocation,
    TResult Function(
            String artistId, String locationId, ArtistLocation location)?
        updateLocation,
    TResult Function(String artistId, String locationId)? deleteLocation,
    required TResult orElse(),
  }) {
    if (createLocation != null) {
      return createLocation(artistId, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLocations value) loadLocations,
    required TResult Function(_CreateLocation value) createLocation,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_DeleteLocation value) deleteLocation,
  }) {
    return createLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadLocations value)? loadLocations,
    TResult? Function(_CreateLocation value)? createLocation,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_DeleteLocation value)? deleteLocation,
  }) {
    return createLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLocations value)? loadLocations,
    TResult Function(_CreateLocation value)? createLocation,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
    required TResult orElse(),
  }) {
    if (createLocation != null) {
      return createLocation(this);
    }
    return orElse();
  }
}

abstract class _CreateLocation implements ArtistLocationEvent {
  const factory _CreateLocation(
          final String artistId, final ArtistLocation location) =
      _$CreateLocationImpl;

  @override
  String get artistId;
  ArtistLocation get location;
  @override
  @JsonKey(ignore: true)
  _$$CreateLocationImplCopyWith<_$CreateLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLocationImplCopyWith<$Res>
    implements $ArtistLocationEventCopyWith<$Res> {
  factory _$$UpdateLocationImplCopyWith(_$UpdateLocationImpl value,
          $Res Function(_$UpdateLocationImpl) then) =
      __$$UpdateLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artistId, String locationId, ArtistLocation location});

  $ArtistLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$UpdateLocationImplCopyWithImpl<$Res>
    extends _$ArtistLocationEventCopyWithImpl<$Res, _$UpdateLocationImpl>
    implements _$$UpdateLocationImplCopyWith<$Res> {
  __$$UpdateLocationImplCopyWithImpl(
      _$UpdateLocationImpl _value, $Res Function(_$UpdateLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? locationId = null,
    Object? location = null,
  }) {
    return _then(_$UpdateLocationImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ArtistLocation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistLocationCopyWith<$Res> get location {
    return $ArtistLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$UpdateLocationImpl implements _UpdateLocation {
  const _$UpdateLocationImpl(this.artistId, this.locationId, this.location);

  @override
  final String artistId;
  @override
  final String locationId;
  @override
  final ArtistLocation location;

  @override
  String toString() {
    return 'ArtistLocationEvent.updateLocation(artistId: $artistId, locationId: $locationId, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLocationImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId, locationId, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLocationImplCopyWith<_$UpdateLocationImpl> get copyWith =>
      __$$UpdateLocationImplCopyWithImpl<_$UpdateLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) loadLocations,
    required TResult Function(String artistId, ArtistLocation location)
        createLocation,
    required TResult Function(
            String artistId, String locationId, ArtistLocation location)
        updateLocation,
    required TResult Function(String artistId, String locationId)
        deleteLocation,
  }) {
    return updateLocation(artistId, locationId, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? loadLocations,
    TResult? Function(String artistId, ArtistLocation location)? createLocation,
    TResult? Function(
            String artistId, String locationId, ArtistLocation location)?
        updateLocation,
    TResult? Function(String artistId, String locationId)? deleteLocation,
  }) {
    return updateLocation?.call(artistId, locationId, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? loadLocations,
    TResult Function(String artistId, ArtistLocation location)? createLocation,
    TResult Function(
            String artistId, String locationId, ArtistLocation location)?
        updateLocation,
    TResult Function(String artistId, String locationId)? deleteLocation,
    required TResult orElse(),
  }) {
    if (updateLocation != null) {
      return updateLocation(artistId, locationId, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLocations value) loadLocations,
    required TResult Function(_CreateLocation value) createLocation,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_DeleteLocation value) deleteLocation,
  }) {
    return updateLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadLocations value)? loadLocations,
    TResult? Function(_CreateLocation value)? createLocation,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_DeleteLocation value)? deleteLocation,
  }) {
    return updateLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLocations value)? loadLocations,
    TResult Function(_CreateLocation value)? createLocation,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
    required TResult orElse(),
  }) {
    if (updateLocation != null) {
      return updateLocation(this);
    }
    return orElse();
  }
}

abstract class _UpdateLocation implements ArtistLocationEvent {
  const factory _UpdateLocation(final String artistId, final String locationId,
      final ArtistLocation location) = _$UpdateLocationImpl;

  @override
  String get artistId;
  String get locationId;
  ArtistLocation get location;
  @override
  @JsonKey(ignore: true)
  _$$UpdateLocationImplCopyWith<_$UpdateLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLocationImplCopyWith<$Res>
    implements $ArtistLocationEventCopyWith<$Res> {
  factory _$$DeleteLocationImplCopyWith(_$DeleteLocationImpl value,
          $Res Function(_$DeleteLocationImpl) then) =
      __$$DeleteLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artistId, String locationId});
}

/// @nodoc
class __$$DeleteLocationImplCopyWithImpl<$Res>
    extends _$ArtistLocationEventCopyWithImpl<$Res, _$DeleteLocationImpl>
    implements _$$DeleteLocationImplCopyWith<$Res> {
  __$$DeleteLocationImplCopyWithImpl(
      _$DeleteLocationImpl _value, $Res Function(_$DeleteLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? locationId = null,
  }) {
    return _then(_$DeleteLocationImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteLocationImpl implements _DeleteLocation {
  const _$DeleteLocationImpl(this.artistId, this.locationId);

  @override
  final String artistId;
  @override
  final String locationId;

  @override
  String toString() {
    return 'ArtistLocationEvent.deleteLocation(artistId: $artistId, locationId: $locationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLocationImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId, locationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLocationImplCopyWith<_$DeleteLocationImpl> get copyWith =>
      __$$DeleteLocationImplCopyWithImpl<_$DeleteLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) loadLocations,
    required TResult Function(String artistId, ArtistLocation location)
        createLocation,
    required TResult Function(
            String artistId, String locationId, ArtistLocation location)
        updateLocation,
    required TResult Function(String artistId, String locationId)
        deleteLocation,
  }) {
    return deleteLocation(artistId, locationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? loadLocations,
    TResult? Function(String artistId, ArtistLocation location)? createLocation,
    TResult? Function(
            String artistId, String locationId, ArtistLocation location)?
        updateLocation,
    TResult? Function(String artistId, String locationId)? deleteLocation,
  }) {
    return deleteLocation?.call(artistId, locationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? loadLocations,
    TResult Function(String artistId, ArtistLocation location)? createLocation,
    TResult Function(
            String artistId, String locationId, ArtistLocation location)?
        updateLocation,
    TResult Function(String artistId, String locationId)? deleteLocation,
    required TResult orElse(),
  }) {
    if (deleteLocation != null) {
      return deleteLocation(artistId, locationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLocations value) loadLocations,
    required TResult Function(_CreateLocation value) createLocation,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_DeleteLocation value) deleteLocation,
  }) {
    return deleteLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadLocations value)? loadLocations,
    TResult? Function(_CreateLocation value)? createLocation,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_DeleteLocation value)? deleteLocation,
  }) {
    return deleteLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLocations value)? loadLocations,
    TResult Function(_CreateLocation value)? createLocation,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_DeleteLocation value)? deleteLocation,
    required TResult orElse(),
  }) {
    if (deleteLocation != null) {
      return deleteLocation(this);
    }
    return orElse();
  }
}

abstract class _DeleteLocation implements ArtistLocationEvent {
  const factory _DeleteLocation(
      final String artistId, final String locationId) = _$DeleteLocationImpl;

  @override
  String get artistId;
  String get locationId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteLocationImplCopyWith<_$DeleteLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistLocation> locations) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistLocation> locations)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistLocation> locations)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistLocationStateCopyWith<$Res> {
  factory $ArtistLocationStateCopyWith(
          ArtistLocationState value, $Res Function(ArtistLocationState) then) =
      _$ArtistLocationStateCopyWithImpl<$Res, ArtistLocationState>;
}

/// @nodoc
class _$ArtistLocationStateCopyWithImpl<$Res, $Val extends ArtistLocationState>
    implements $ArtistLocationStateCopyWith<$Res> {
  _$ArtistLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ArtistLocationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ArtistLocationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistLocation> locations) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistLocation> locations)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistLocation> locations)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArtistLocationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ArtistLocationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ArtistLocationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistLocation> locations) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistLocation> locations)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistLocation> locations)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ArtistLocationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArtistLocation> locations});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ArtistLocationStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
  }) {
    return _then(_$LoadedImpl(
      null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<ArtistLocation>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<ArtistLocation> locations)
      : _locations = locations;

  final List<ArtistLocation> _locations;
  @override
  List<ArtistLocation> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  String toString() {
    return 'ArtistLocationState.loaded(locations: $locations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistLocation> locations) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(locations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistLocation> locations)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(locations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistLocation> locations)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ArtistLocationState {
  const factory _Loaded(final List<ArtistLocation> locations) = _$LoadedImpl;

  List<ArtistLocation> get locations;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ArtistLocationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ArtistLocationState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistLocation> locations) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistLocation> locations)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistLocation> locations)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ArtistLocationState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
