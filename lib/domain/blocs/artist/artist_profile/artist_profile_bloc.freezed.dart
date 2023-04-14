// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArtistProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Artist artist) setArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetArtist value) setArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistProfileEventCopyWith<$Res> {
  factory $ArtistProfileEventCopyWith(
          ArtistProfileEvent value, $Res Function(ArtistProfileEvent) then) =
      _$ArtistProfileEventCopyWithImpl<$Res, ArtistProfileEvent>;
}

/// @nodoc
class _$ArtistProfileEventCopyWithImpl<$Res, $Val extends ArtistProfileEvent>
    implements $ArtistProfileEventCopyWith<$Res> {
  _$ArtistProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ArtistProfileEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Artist artist) setArtist,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetArtist value) setArtist,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ArtistProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SetArtistCopyWith<$Res> {
  factory _$$_SetArtistCopyWith(
          _$_SetArtist value, $Res Function(_$_SetArtist) then) =
      __$$_SetArtistCopyWithImpl<$Res>;
  @useResult
  $Res call({Artist artist});

  $ArtistCopyWith<$Res> get artist;
}

/// @nodoc
class __$$_SetArtistCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$_SetArtist>
    implements _$$_SetArtistCopyWith<$Res> {
  __$$_SetArtistCopyWithImpl(
      _$_SetArtist _value, $Res Function(_$_SetArtist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
  }) {
    return _then(_$_SetArtist(
      null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res> get artist {
    return $ArtistCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value));
    });
  }
}

/// @nodoc

class _$_SetArtist implements _SetArtist {
  const _$_SetArtist(this.artist);

  @override
  final Artist artist;

  @override
  String toString() {
    return 'ArtistProfileEvent.setArtist(artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetArtist &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetArtistCopyWith<_$_SetArtist> get copyWith =>
      __$$_SetArtistCopyWithImpl<_$_SetArtist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Artist artist) setArtist,
  }) {
    return setArtist(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
  }) {
    return setArtist?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    required TResult orElse(),
  }) {
    if (setArtist != null) {
      return setArtist(artist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetArtist value) setArtist,
  }) {
    return setArtist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
  }) {
    return setArtist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    required TResult orElse(),
  }) {
    if (setArtist != null) {
      return setArtist(this);
    }
    return orElse();
  }
}

abstract class _SetArtist implements ArtistProfileEvent {
  const factory _SetArtist(final Artist artist) = _$_SetArtist;

  Artist get artist;
  @JsonKey(ignore: true)
  _$$_SetArtistCopyWith<_$_SetArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Artist artist) configured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Artist artist)? configured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Artist artist)? configured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistProfileStateCopyWith<$Res> {
  factory $ArtistProfileStateCopyWith(
          ArtistProfileState value, $Res Function(ArtistProfileState) then) =
      _$ArtistProfileStateCopyWithImpl<$Res, ArtistProfileState>;
}

/// @nodoc
class _$ArtistProfileStateCopyWithImpl<$Res, $Val extends ArtistProfileState>
    implements $ArtistProfileStateCopyWith<$Res> {
  _$ArtistProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ArtistProfileStateInitialCopyWith<$Res> {
  factory _$$ArtistProfileStateInitialCopyWith(
          _$ArtistProfileStateInitial value,
          $Res Function(_$ArtistProfileStateInitial) then) =
      __$$ArtistProfileStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArtistProfileStateInitialCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res, _$ArtistProfileStateInitial>
    implements _$$ArtistProfileStateInitialCopyWith<$Res> {
  __$$ArtistProfileStateInitialCopyWithImpl(_$ArtistProfileStateInitial _value,
      $Res Function(_$ArtistProfileStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArtistProfileStateInitial implements ArtistProfileStateInitial {
  const _$ArtistProfileStateInitial();

  @override
  String toString() {
    return 'ArtistProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Artist artist) configured,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Artist artist)? configured,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Artist artist)? configured,
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
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ArtistProfileStateInitial implements ArtistProfileState {
  const factory ArtistProfileStateInitial() = _$ArtistProfileStateInitial;
}

/// @nodoc
abstract class _$$ArtistProfileStateConfiguredCopyWith<$Res> {
  factory _$$ArtistProfileStateConfiguredCopyWith(
          _$ArtistProfileStateConfigured value,
          $Res Function(_$ArtistProfileStateConfigured) then) =
      __$$ArtistProfileStateConfiguredCopyWithImpl<$Res>;
  @useResult
  $Res call({Artist artist});

  $ArtistCopyWith<$Res> get artist;
}

/// @nodoc
class __$$ArtistProfileStateConfiguredCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateConfigured>
    implements _$$ArtistProfileStateConfiguredCopyWith<$Res> {
  __$$ArtistProfileStateConfiguredCopyWithImpl(
      _$ArtistProfileStateConfigured _value,
      $Res Function(_$ArtistProfileStateConfigured) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
  }) {
    return _then(_$ArtistProfileStateConfigured(
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res> get artist {
    return $ArtistCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value));
    });
  }
}

/// @nodoc

class _$ArtistProfileStateConfigured implements ArtistProfileStateConfigured {
  const _$ArtistProfileStateConfigured({required this.artist});

  @override
  final Artist artist;

  @override
  String toString() {
    return 'ArtistProfileState.configured(artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateConfigured &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateConfiguredCopyWith<_$ArtistProfileStateConfigured>
      get copyWith => __$$ArtistProfileStateConfiguredCopyWithImpl<
          _$ArtistProfileStateConfigured>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Artist artist) configured,
  }) {
    return configured(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Artist artist)? configured,
  }) {
    return configured?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Artist artist)? configured,
    required TResult orElse(),
  }) {
    if (configured != null) {
      return configured(artist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
  }) {
    return configured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
  }) {
    return configured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    required TResult orElse(),
  }) {
    if (configured != null) {
      return configured(this);
    }
    return orElse();
  }
}

abstract class ArtistProfileStateConfigured implements ArtistProfileState {
  const factory ArtistProfileStateConfigured({required final Artist artist}) =
      _$ArtistProfileStateConfigured;

  Artist get artist;
  @JsonKey(ignore: true)
  _$$ArtistProfileStateConfiguredCopyWith<_$ArtistProfileStateConfigured>
      get copyWith => throw _privateConstructorUsedError;
}
