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
    required TResult Function() loadingWorks,
    required TResult Function(GetArtistWorksResponse works) loadedWorks,
    required TResult Function(String message) loadWorksError,
    required TResult Function() follow,
    required TResult Function() unFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
    TResult? Function()? loadingWorks,
    TResult? Function(GetArtistWorksResponse works)? loadedWorks,
    TResult? Function(String message)? loadWorksError,
    TResult? Function()? follow,
    TResult? Function()? unFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    TResult Function()? loadingWorks,
    TResult Function(GetArtistWorksResponse works)? loadedWorks,
    TResult Function(String message)? loadWorksError,
    TResult Function()? follow,
    TResult Function()? unFollow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetArtist value) setArtist,
    required TResult Function(_LoadingWorks value) loadingWorks,
    required TResult Function(_LoadedWorks value) loadedWorks,
    required TResult Function(_LoadWorksError value) loadWorksError,
    required TResult Function(_Follow value) follow,
    required TResult Function(_UnFollow value) unFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
    TResult? Function(_LoadingWorks value)? loadingWorks,
    TResult? Function(_LoadedWorks value)? loadedWorks,
    TResult? Function(_LoadWorksError value)? loadWorksError,
    TResult? Function(_Follow value)? follow,
    TResult? Function(_UnFollow value)? unFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    TResult Function(_LoadingWorks value)? loadingWorks,
    TResult Function(_LoadedWorks value)? loadedWorks,
    TResult Function(_LoadWorksError value)? loadWorksError,
    TResult Function(_Follow value)? follow,
    TResult Function(_UnFollow value)? unFollow,
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
    required TResult Function() loadingWorks,
    required TResult Function(GetArtistWorksResponse works) loadedWorks,
    required TResult Function(String message) loadWorksError,
    required TResult Function() follow,
    required TResult Function() unFollow,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
    TResult? Function()? loadingWorks,
    TResult? Function(GetArtistWorksResponse works)? loadedWorks,
    TResult? Function(String message)? loadWorksError,
    TResult? Function()? follow,
    TResult? Function()? unFollow,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    TResult Function()? loadingWorks,
    TResult Function(GetArtistWorksResponse works)? loadedWorks,
    TResult Function(String message)? loadWorksError,
    TResult Function()? follow,
    TResult Function()? unFollow,
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
    required TResult Function(_LoadingWorks value) loadingWorks,
    required TResult Function(_LoadedWorks value) loadedWorks,
    required TResult Function(_LoadWorksError value) loadWorksError,
    required TResult Function(_Follow value) follow,
    required TResult Function(_UnFollow value) unFollow,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
    TResult? Function(_LoadingWorks value)? loadingWorks,
    TResult? Function(_LoadedWorks value)? loadedWorks,
    TResult? Function(_LoadWorksError value)? loadWorksError,
    TResult? Function(_Follow value)? follow,
    TResult? Function(_UnFollow value)? unFollow,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    TResult Function(_LoadingWorks value)? loadingWorks,
    TResult Function(_LoadedWorks value)? loadedWorks,
    TResult Function(_LoadWorksError value)? loadWorksError,
    TResult Function(_Follow value)? follow,
    TResult Function(_UnFollow value)? unFollow,
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
    required TResult Function() loadingWorks,
    required TResult Function(GetArtistWorksResponse works) loadedWorks,
    required TResult Function(String message) loadWorksError,
    required TResult Function() follow,
    required TResult Function() unFollow,
  }) {
    return setArtist(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
    TResult? Function()? loadingWorks,
    TResult? Function(GetArtistWorksResponse works)? loadedWorks,
    TResult? Function(String message)? loadWorksError,
    TResult? Function()? follow,
    TResult? Function()? unFollow,
  }) {
    return setArtist?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    TResult Function()? loadingWorks,
    TResult Function(GetArtistWorksResponse works)? loadedWorks,
    TResult Function(String message)? loadWorksError,
    TResult Function()? follow,
    TResult Function()? unFollow,
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
    required TResult Function(_LoadingWorks value) loadingWorks,
    required TResult Function(_LoadedWorks value) loadedWorks,
    required TResult Function(_LoadWorksError value) loadWorksError,
    required TResult Function(_Follow value) follow,
    required TResult Function(_UnFollow value) unFollow,
  }) {
    return setArtist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
    TResult? Function(_LoadingWorks value)? loadingWorks,
    TResult? Function(_LoadedWorks value)? loadedWorks,
    TResult? Function(_LoadWorksError value)? loadWorksError,
    TResult? Function(_Follow value)? follow,
    TResult? Function(_UnFollow value)? unFollow,
  }) {
    return setArtist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    TResult Function(_LoadingWorks value)? loadingWorks,
    TResult Function(_LoadedWorks value)? loadedWorks,
    TResult Function(_LoadWorksError value)? loadWorksError,
    TResult Function(_Follow value)? follow,
    TResult Function(_UnFollow value)? unFollow,
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
abstract class _$$_LoadingWorksCopyWith<$Res> {
  factory _$$_LoadingWorksCopyWith(
          _$_LoadingWorks value, $Res Function(_$_LoadingWorks) then) =
      __$$_LoadingWorksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingWorksCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$_LoadingWorks>
    implements _$$_LoadingWorksCopyWith<$Res> {
  __$$_LoadingWorksCopyWithImpl(
      _$_LoadingWorks _value, $Res Function(_$_LoadingWorks) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingWorks implements _LoadingWorks {
  const _$_LoadingWorks();

  @override
  String toString() {
    return 'ArtistProfileEvent.loadingWorks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingWorks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Artist artist) setArtist,
    required TResult Function() loadingWorks,
    required TResult Function(GetArtistWorksResponse works) loadedWorks,
    required TResult Function(String message) loadWorksError,
    required TResult Function() follow,
    required TResult Function() unFollow,
  }) {
    return loadingWorks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
    TResult? Function()? loadingWorks,
    TResult? Function(GetArtistWorksResponse works)? loadedWorks,
    TResult? Function(String message)? loadWorksError,
    TResult? Function()? follow,
    TResult? Function()? unFollow,
  }) {
    return loadingWorks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    TResult Function()? loadingWorks,
    TResult Function(GetArtistWorksResponse works)? loadedWorks,
    TResult Function(String message)? loadWorksError,
    TResult Function()? follow,
    TResult Function()? unFollow,
    required TResult orElse(),
  }) {
    if (loadingWorks != null) {
      return loadingWorks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetArtist value) setArtist,
    required TResult Function(_LoadingWorks value) loadingWorks,
    required TResult Function(_LoadedWorks value) loadedWorks,
    required TResult Function(_LoadWorksError value) loadWorksError,
    required TResult Function(_Follow value) follow,
    required TResult Function(_UnFollow value) unFollow,
  }) {
    return loadingWorks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
    TResult? Function(_LoadingWorks value)? loadingWorks,
    TResult? Function(_LoadedWorks value)? loadedWorks,
    TResult? Function(_LoadWorksError value)? loadWorksError,
    TResult? Function(_Follow value)? follow,
    TResult? Function(_UnFollow value)? unFollow,
  }) {
    return loadingWorks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    TResult Function(_LoadingWorks value)? loadingWorks,
    TResult Function(_LoadedWorks value)? loadedWorks,
    TResult Function(_LoadWorksError value)? loadWorksError,
    TResult Function(_Follow value)? follow,
    TResult Function(_UnFollow value)? unFollow,
    required TResult orElse(),
  }) {
    if (loadingWorks != null) {
      return loadingWorks(this);
    }
    return orElse();
  }
}

abstract class _LoadingWorks implements ArtistProfileEvent {
  const factory _LoadingWorks() = _$_LoadingWorks;
}

/// @nodoc
abstract class _$$_LoadedWorksCopyWith<$Res> {
  factory _$$_LoadedWorksCopyWith(
          _$_LoadedWorks value, $Res Function(_$_LoadedWorks) then) =
      __$$_LoadedWorksCopyWithImpl<$Res>;
  @useResult
  $Res call({GetArtistWorksResponse works});

  $GetArtistWorksResponseCopyWith<$Res> get works;
}

/// @nodoc
class __$$_LoadedWorksCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$_LoadedWorks>
    implements _$$_LoadedWorksCopyWith<$Res> {
  __$$_LoadedWorksCopyWithImpl(
      _$_LoadedWorks _value, $Res Function(_$_LoadedWorks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? works = null,
  }) {
    return _then(_$_LoadedWorks(
      null == works
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as GetArtistWorksResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GetArtistWorksResponseCopyWith<$Res> get works {
    return $GetArtistWorksResponseCopyWith<$Res>(_value.works, (value) {
      return _then(_value.copyWith(works: value));
    });
  }
}

/// @nodoc

class _$_LoadedWorks implements _LoadedWorks {
  const _$_LoadedWorks(this.works);

  @override
  final GetArtistWorksResponse works;

  @override
  String toString() {
    return 'ArtistProfileEvent.loadedWorks(works: $works)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedWorks &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedWorksCopyWith<_$_LoadedWorks> get copyWith =>
      __$$_LoadedWorksCopyWithImpl<_$_LoadedWorks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Artist artist) setArtist,
    required TResult Function() loadingWorks,
    required TResult Function(GetArtistWorksResponse works) loadedWorks,
    required TResult Function(String message) loadWorksError,
    required TResult Function() follow,
    required TResult Function() unFollow,
  }) {
    return loadedWorks(works);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
    TResult? Function()? loadingWorks,
    TResult? Function(GetArtistWorksResponse works)? loadedWorks,
    TResult? Function(String message)? loadWorksError,
    TResult? Function()? follow,
    TResult? Function()? unFollow,
  }) {
    return loadedWorks?.call(works);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    TResult Function()? loadingWorks,
    TResult Function(GetArtistWorksResponse works)? loadedWorks,
    TResult Function(String message)? loadWorksError,
    TResult Function()? follow,
    TResult Function()? unFollow,
    required TResult orElse(),
  }) {
    if (loadedWorks != null) {
      return loadedWorks(works);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetArtist value) setArtist,
    required TResult Function(_LoadingWorks value) loadingWorks,
    required TResult Function(_LoadedWorks value) loadedWorks,
    required TResult Function(_LoadWorksError value) loadWorksError,
    required TResult Function(_Follow value) follow,
    required TResult Function(_UnFollow value) unFollow,
  }) {
    return loadedWorks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
    TResult? Function(_LoadingWorks value)? loadingWorks,
    TResult? Function(_LoadedWorks value)? loadedWorks,
    TResult? Function(_LoadWorksError value)? loadWorksError,
    TResult? Function(_Follow value)? follow,
    TResult? Function(_UnFollow value)? unFollow,
  }) {
    return loadedWorks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    TResult Function(_LoadingWorks value)? loadingWorks,
    TResult Function(_LoadedWorks value)? loadedWorks,
    TResult Function(_LoadWorksError value)? loadWorksError,
    TResult Function(_Follow value)? follow,
    TResult Function(_UnFollow value)? unFollow,
    required TResult orElse(),
  }) {
    if (loadedWorks != null) {
      return loadedWorks(this);
    }
    return orElse();
  }
}

abstract class _LoadedWorks implements ArtistProfileEvent {
  const factory _LoadedWorks(final GetArtistWorksResponse works) =
      _$_LoadedWorks;

  GetArtistWorksResponse get works;
  @JsonKey(ignore: true)
  _$$_LoadedWorksCopyWith<_$_LoadedWorks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadWorksErrorCopyWith<$Res> {
  factory _$$_LoadWorksErrorCopyWith(
          _$_LoadWorksError value, $Res Function(_$_LoadWorksError) then) =
      __$$_LoadWorksErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LoadWorksErrorCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$_LoadWorksError>
    implements _$$_LoadWorksErrorCopyWith<$Res> {
  __$$_LoadWorksErrorCopyWithImpl(
      _$_LoadWorksError _value, $Res Function(_$_LoadWorksError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LoadWorksError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadWorksError implements _LoadWorksError {
  const _$_LoadWorksError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ArtistProfileEvent.loadWorksError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadWorksError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadWorksErrorCopyWith<_$_LoadWorksError> get copyWith =>
      __$$_LoadWorksErrorCopyWithImpl<_$_LoadWorksError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Artist artist) setArtist,
    required TResult Function() loadingWorks,
    required TResult Function(GetArtistWorksResponse works) loadedWorks,
    required TResult Function(String message) loadWorksError,
    required TResult Function() follow,
    required TResult Function() unFollow,
  }) {
    return loadWorksError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
    TResult? Function()? loadingWorks,
    TResult? Function(GetArtistWorksResponse works)? loadedWorks,
    TResult? Function(String message)? loadWorksError,
    TResult? Function()? follow,
    TResult? Function()? unFollow,
  }) {
    return loadWorksError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    TResult Function()? loadingWorks,
    TResult Function(GetArtistWorksResponse works)? loadedWorks,
    TResult Function(String message)? loadWorksError,
    TResult Function()? follow,
    TResult Function()? unFollow,
    required TResult orElse(),
  }) {
    if (loadWorksError != null) {
      return loadWorksError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetArtist value) setArtist,
    required TResult Function(_LoadingWorks value) loadingWorks,
    required TResult Function(_LoadedWorks value) loadedWorks,
    required TResult Function(_LoadWorksError value) loadWorksError,
    required TResult Function(_Follow value) follow,
    required TResult Function(_UnFollow value) unFollow,
  }) {
    return loadWorksError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
    TResult? Function(_LoadingWorks value)? loadingWorks,
    TResult? Function(_LoadedWorks value)? loadedWorks,
    TResult? Function(_LoadWorksError value)? loadWorksError,
    TResult? Function(_Follow value)? follow,
    TResult? Function(_UnFollow value)? unFollow,
  }) {
    return loadWorksError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    TResult Function(_LoadingWorks value)? loadingWorks,
    TResult Function(_LoadedWorks value)? loadedWorks,
    TResult Function(_LoadWorksError value)? loadWorksError,
    TResult Function(_Follow value)? follow,
    TResult Function(_UnFollow value)? unFollow,
    required TResult orElse(),
  }) {
    if (loadWorksError != null) {
      return loadWorksError(this);
    }
    return orElse();
  }
}

abstract class _LoadWorksError implements ArtistProfileEvent {
  const factory _LoadWorksError(final String message) = _$_LoadWorksError;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoadWorksErrorCopyWith<_$_LoadWorksError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FollowCopyWith<$Res> {
  factory _$$_FollowCopyWith(_$_Follow value, $Res Function(_$_Follow) then) =
      __$$_FollowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FollowCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$_Follow>
    implements _$$_FollowCopyWith<$Res> {
  __$$_FollowCopyWithImpl(_$_Follow _value, $Res Function(_$_Follow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Follow implements _Follow {
  const _$_Follow();

  @override
  String toString() {
    return 'ArtistProfileEvent.follow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Follow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Artist artist) setArtist,
    required TResult Function() loadingWorks,
    required TResult Function(GetArtistWorksResponse works) loadedWorks,
    required TResult Function(String message) loadWorksError,
    required TResult Function() follow,
    required TResult Function() unFollow,
  }) {
    return follow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
    TResult? Function()? loadingWorks,
    TResult? Function(GetArtistWorksResponse works)? loadedWorks,
    TResult? Function(String message)? loadWorksError,
    TResult? Function()? follow,
    TResult? Function()? unFollow,
  }) {
    return follow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    TResult Function()? loadingWorks,
    TResult Function(GetArtistWorksResponse works)? loadedWorks,
    TResult Function(String message)? loadWorksError,
    TResult Function()? follow,
    TResult Function()? unFollow,
    required TResult orElse(),
  }) {
    if (follow != null) {
      return follow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetArtist value) setArtist,
    required TResult Function(_LoadingWorks value) loadingWorks,
    required TResult Function(_LoadedWorks value) loadedWorks,
    required TResult Function(_LoadWorksError value) loadWorksError,
    required TResult Function(_Follow value) follow,
    required TResult Function(_UnFollow value) unFollow,
  }) {
    return follow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
    TResult? Function(_LoadingWorks value)? loadingWorks,
    TResult? Function(_LoadedWorks value)? loadedWorks,
    TResult? Function(_LoadWorksError value)? loadWorksError,
    TResult? Function(_Follow value)? follow,
    TResult? Function(_UnFollow value)? unFollow,
  }) {
    return follow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    TResult Function(_LoadingWorks value)? loadingWorks,
    TResult Function(_LoadedWorks value)? loadedWorks,
    TResult Function(_LoadWorksError value)? loadWorksError,
    TResult Function(_Follow value)? follow,
    TResult Function(_UnFollow value)? unFollow,
    required TResult orElse(),
  }) {
    if (follow != null) {
      return follow(this);
    }
    return orElse();
  }
}

abstract class _Follow implements ArtistProfileEvent {
  const factory _Follow() = _$_Follow;
}

/// @nodoc
abstract class _$$_UnFollowCopyWith<$Res> {
  factory _$$_UnFollowCopyWith(
          _$_UnFollow value, $Res Function(_$_UnFollow) then) =
      __$$_UnFollowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnFollowCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$_UnFollow>
    implements _$$_UnFollowCopyWith<$Res> {
  __$$_UnFollowCopyWithImpl(
      _$_UnFollow _value, $Res Function(_$_UnFollow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnFollow implements _UnFollow {
  const _$_UnFollow();

  @override
  String toString() {
    return 'ArtistProfileEvent.unFollow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnFollow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Artist artist) setArtist,
    required TResult Function() loadingWorks,
    required TResult Function(GetArtistWorksResponse works) loadedWorks,
    required TResult Function(String message) loadWorksError,
    required TResult Function() follow,
    required TResult Function() unFollow,
  }) {
    return unFollow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Artist artist)? setArtist,
    TResult? Function()? loadingWorks,
    TResult? Function(GetArtistWorksResponse works)? loadedWorks,
    TResult? Function(String message)? loadWorksError,
    TResult? Function()? follow,
    TResult? Function()? unFollow,
  }) {
    return unFollow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Artist artist)? setArtist,
    TResult Function()? loadingWorks,
    TResult Function(GetArtistWorksResponse works)? loadedWorks,
    TResult Function(String message)? loadWorksError,
    TResult Function()? follow,
    TResult Function()? unFollow,
    required TResult orElse(),
  }) {
    if (unFollow != null) {
      return unFollow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetArtist value) setArtist,
    required TResult Function(_LoadingWorks value) loadingWorks,
    required TResult Function(_LoadedWorks value) loadedWorks,
    required TResult Function(_LoadWorksError value) loadWorksError,
    required TResult Function(_Follow value) follow,
    required TResult Function(_UnFollow value) unFollow,
  }) {
    return unFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetArtist value)? setArtist,
    TResult? Function(_LoadingWorks value)? loadingWorks,
    TResult? Function(_LoadedWorks value)? loadedWorks,
    TResult? Function(_LoadWorksError value)? loadWorksError,
    TResult? Function(_Follow value)? follow,
    TResult? Function(_UnFollow value)? unFollow,
  }) {
    return unFollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetArtist value)? setArtist,
    TResult Function(_LoadingWorks value)? loadingWorks,
    TResult Function(_LoadedWorks value)? loadedWorks,
    TResult Function(_LoadWorksError value)? loadWorksError,
    TResult Function(_Follow value)? follow,
    TResult Function(_UnFollow value)? unFollow,
    required TResult orElse(),
  }) {
    if (unFollow != null) {
      return unFollow(this);
    }
    return orElse();
  }
}

abstract class _UnFollow implements ArtistProfileEvent {
  const factory _UnFollow() = _$_UnFollow;
}

/// @nodoc
mixin _$ArtistProfileState {
  Artist? get artist => throw _privateConstructorUsedError;
  GetArtistWorksResponse? get works => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        initial,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        configured,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadingWorks,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadedWorks,
    required TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)
        loadWorksError,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        followed,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        unFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        configured,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult? Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        unFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? configured,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? unFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
    required TResult Function(ArtistProfileStateLoadingWorks value)
        loadingWorks,
    required TResult Function(ArtistProfileStateLoadedWorks value) loadedWorks,
    required TResult Function(ArtistProfileStateLoadWorksError value)
        loadWorksError,
    required TResult Function(ArtistProfileStateFollowed value) followed,
    required TResult Function(ArtistProfileStateUnFollowed value) unFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
    TResult? Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult? Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult? Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult? Function(ArtistProfileStateFollowed value)? followed,
    TResult? Function(ArtistProfileStateUnFollowed value)? unFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    TResult Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult Function(ArtistProfileStateFollowed value)? followed,
    TResult Function(ArtistProfileStateUnFollowed value)? unFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistProfileStateCopyWith<ArtistProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistProfileStateCopyWith<$Res> {
  factory $ArtistProfileStateCopyWith(
          ArtistProfileState value, $Res Function(ArtistProfileState) then) =
      _$ArtistProfileStateCopyWithImpl<$Res, ArtistProfileState>;
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  $ArtistCopyWith<$Res>? get artist;
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class _$ArtistProfileStateCopyWithImpl<$Res, $Val extends ArtistProfileState>
    implements $ArtistProfileStateCopyWith<$Res> {
  _$ArtistProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_value.copyWith(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      works: freezed == works
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as GetArtistWorksResponse?,
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

  @override
  @pragma('vm:prefer-inline')
  $GetArtistWorksResponseCopyWith<$Res>? get works {
    if (_value.works == null) {
      return null;
    }

    return $GetArtistWorksResponseCopyWith<$Res>(_value.works!, (value) {
      return _then(_value.copyWith(works: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistProfileStateInitialCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateInitialCopyWith(
          _$ArtistProfileStateInitial value,
          $Res Function(_$ArtistProfileStateInitial) then) =
      __$$ArtistProfileStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateInitialCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res, _$ArtistProfileStateInitial>
    implements _$$ArtistProfileStateInitialCopyWith<$Res> {
  __$$ArtistProfileStateInitialCopyWithImpl(_$ArtistProfileStateInitial _value,
      $Res Function(_$ArtistProfileStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateInitial(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      works: freezed == works
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as GetArtistWorksResponse?,
    ));
  }
}

/// @nodoc

class _$ArtistProfileStateInitial implements ArtistProfileStateInitial {
  const _$ArtistProfileStateInitial({this.artist = null, this.works = null});

  @override
  @JsonKey()
  final Artist? artist;
  @override
  @JsonKey()
  final GetArtistWorksResponse? works;

  @override
  String toString() {
    return 'ArtistProfileState.initial(artist: $artist, works: $works)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateInitial &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateInitialCopyWith<_$ArtistProfileStateInitial>
      get copyWith => __$$ArtistProfileStateInitialCopyWithImpl<
          _$ArtistProfileStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        initial,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        configured,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadingWorks,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadedWorks,
    required TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)
        loadWorksError,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        followed,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        unFollowed,
  }) {
    return initial(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        configured,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult? Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        unFollowed,
  }) {
    return initial?.call(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? configured,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? unFollowed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(artist, works);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
    required TResult Function(ArtistProfileStateLoadingWorks value)
        loadingWorks,
    required TResult Function(ArtistProfileStateLoadedWorks value) loadedWorks,
    required TResult Function(ArtistProfileStateLoadWorksError value)
        loadWorksError,
    required TResult Function(ArtistProfileStateFollowed value) followed,
    required TResult Function(ArtistProfileStateUnFollowed value) unFollowed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
    TResult? Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult? Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult? Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult? Function(ArtistProfileStateFollowed value)? followed,
    TResult? Function(ArtistProfileStateUnFollowed value)? unFollowed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    TResult Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult Function(ArtistProfileStateFollowed value)? followed,
    TResult Function(ArtistProfileStateUnFollowed value)? unFollowed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ArtistProfileStateInitial implements ArtistProfileState {
  const factory ArtistProfileStateInitial(
      {final Artist? artist,
      final GetArtistWorksResponse? works}) = _$ArtistProfileStateInitial;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateInitialCopyWith<_$ArtistProfileStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateConfiguredCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateConfiguredCopyWith(
          _$ArtistProfileStateConfigured value,
          $Res Function(_$ArtistProfileStateConfigured) then) =
      __$$ArtistProfileStateConfiguredCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
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
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateConfigured(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      works: freezed == works
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as GetArtistWorksResponse?,
    ));
  }
}

/// @nodoc

class _$ArtistProfileStateConfigured implements ArtistProfileStateConfigured {
  const _$ArtistProfileStateConfigured(
      {required this.artist, this.works = null});

  @override
  final Artist? artist;
  @override
  @JsonKey()
  final GetArtistWorksResponse? works;

  @override
  String toString() {
    return 'ArtistProfileState.configured(artist: $artist, works: $works)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateConfigured &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateConfiguredCopyWith<_$ArtistProfileStateConfigured>
      get copyWith => __$$ArtistProfileStateConfiguredCopyWithImpl<
          _$ArtistProfileStateConfigured>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        initial,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        configured,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadingWorks,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadedWorks,
    required TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)
        loadWorksError,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        followed,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        unFollowed,
  }) {
    return configured(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        configured,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult? Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        unFollowed,
  }) {
    return configured?.call(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? configured,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? unFollowed,
    required TResult orElse(),
  }) {
    if (configured != null) {
      return configured(artist, works);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
    required TResult Function(ArtistProfileStateLoadingWorks value)
        loadingWorks,
    required TResult Function(ArtistProfileStateLoadedWorks value) loadedWorks,
    required TResult Function(ArtistProfileStateLoadWorksError value)
        loadWorksError,
    required TResult Function(ArtistProfileStateFollowed value) followed,
    required TResult Function(ArtistProfileStateUnFollowed value) unFollowed,
  }) {
    return configured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
    TResult? Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult? Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult? Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult? Function(ArtistProfileStateFollowed value)? followed,
    TResult? Function(ArtistProfileStateUnFollowed value)? unFollowed,
  }) {
    return configured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    TResult Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult Function(ArtistProfileStateFollowed value)? followed,
    TResult Function(ArtistProfileStateUnFollowed value)? unFollowed,
    required TResult orElse(),
  }) {
    if (configured != null) {
      return configured(this);
    }
    return orElse();
  }
}

abstract class ArtistProfileStateConfigured implements ArtistProfileState {
  const factory ArtistProfileStateConfigured(
      {required final Artist? artist,
      final GetArtistWorksResponse? works}) = _$ArtistProfileStateConfigured;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateConfiguredCopyWith<_$ArtistProfileStateConfigured>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateLoadingWorksCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateLoadingWorksCopyWith(
          _$ArtistProfileStateLoadingWorks value,
          $Res Function(_$ArtistProfileStateLoadingWorks) then) =
      __$$ArtistProfileStateLoadingWorksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateLoadingWorksCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateLoadingWorks>
    implements _$$ArtistProfileStateLoadingWorksCopyWith<$Res> {
  __$$ArtistProfileStateLoadingWorksCopyWithImpl(
      _$ArtistProfileStateLoadingWorks _value,
      $Res Function(_$ArtistProfileStateLoadingWorks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateLoadingWorks(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      works: freezed == works
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as GetArtistWorksResponse?,
    ));
  }
}

/// @nodoc

class _$ArtistProfileStateLoadingWorks
    implements ArtistProfileStateLoadingWorks {
  const _$ArtistProfileStateLoadingWorks(
      {required this.artist, this.works = null});

  @override
  final Artist? artist;
  @override
  @JsonKey()
  final GetArtistWorksResponse? works;

  @override
  String toString() {
    return 'ArtistProfileState.loadingWorks(artist: $artist, works: $works)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateLoadingWorks &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateLoadingWorksCopyWith<_$ArtistProfileStateLoadingWorks>
      get copyWith => __$$ArtistProfileStateLoadingWorksCopyWithImpl<
          _$ArtistProfileStateLoadingWorks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        initial,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        configured,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadingWorks,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadedWorks,
    required TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)
        loadWorksError,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        followed,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        unFollowed,
  }) {
    return loadingWorks(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        configured,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult? Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        unFollowed,
  }) {
    return loadingWorks?.call(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? configured,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? unFollowed,
    required TResult orElse(),
  }) {
    if (loadingWorks != null) {
      return loadingWorks(artist, works);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
    required TResult Function(ArtistProfileStateLoadingWorks value)
        loadingWorks,
    required TResult Function(ArtistProfileStateLoadedWorks value) loadedWorks,
    required TResult Function(ArtistProfileStateLoadWorksError value)
        loadWorksError,
    required TResult Function(ArtistProfileStateFollowed value) followed,
    required TResult Function(ArtistProfileStateUnFollowed value) unFollowed,
  }) {
    return loadingWorks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
    TResult? Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult? Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult? Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult? Function(ArtistProfileStateFollowed value)? followed,
    TResult? Function(ArtistProfileStateUnFollowed value)? unFollowed,
  }) {
    return loadingWorks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    TResult Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult Function(ArtistProfileStateFollowed value)? followed,
    TResult Function(ArtistProfileStateUnFollowed value)? unFollowed,
    required TResult orElse(),
  }) {
    if (loadingWorks != null) {
      return loadingWorks(this);
    }
    return orElse();
  }
}

abstract class ArtistProfileStateLoadingWorks implements ArtistProfileState {
  const factory ArtistProfileStateLoadingWorks(
      {required final Artist? artist,
      final GetArtistWorksResponse? works}) = _$ArtistProfileStateLoadingWorks;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateLoadingWorksCopyWith<_$ArtistProfileStateLoadingWorks>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateLoadedWorksCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateLoadedWorksCopyWith(
          _$ArtistProfileStateLoadedWorks value,
          $Res Function(_$ArtistProfileStateLoadedWorks) then) =
      __$$ArtistProfileStateLoadedWorksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateLoadedWorksCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateLoadedWorks>
    implements _$$ArtistProfileStateLoadedWorksCopyWith<$Res> {
  __$$ArtistProfileStateLoadedWorksCopyWithImpl(
      _$ArtistProfileStateLoadedWorks _value,
      $Res Function(_$ArtistProfileStateLoadedWorks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateLoadedWorks(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      works: freezed == works
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as GetArtistWorksResponse?,
    ));
  }
}

/// @nodoc

class _$ArtistProfileStateLoadedWorks implements ArtistProfileStateLoadedWorks {
  const _$ArtistProfileStateLoadedWorks(
      {required this.artist, required this.works});

  @override
  final Artist? artist;
  @override
  final GetArtistWorksResponse? works;

  @override
  String toString() {
    return 'ArtistProfileState.loadedWorks(artist: $artist, works: $works)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateLoadedWorks &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateLoadedWorksCopyWith<_$ArtistProfileStateLoadedWorks>
      get copyWith => __$$ArtistProfileStateLoadedWorksCopyWithImpl<
          _$ArtistProfileStateLoadedWorks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        initial,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        configured,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadingWorks,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadedWorks,
    required TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)
        loadWorksError,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        followed,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        unFollowed,
  }) {
    return loadedWorks(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        configured,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult? Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        unFollowed,
  }) {
    return loadedWorks?.call(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? configured,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? unFollowed,
    required TResult orElse(),
  }) {
    if (loadedWorks != null) {
      return loadedWorks(artist, works);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
    required TResult Function(ArtistProfileStateLoadingWorks value)
        loadingWorks,
    required TResult Function(ArtistProfileStateLoadedWorks value) loadedWorks,
    required TResult Function(ArtistProfileStateLoadWorksError value)
        loadWorksError,
    required TResult Function(ArtistProfileStateFollowed value) followed,
    required TResult Function(ArtistProfileStateUnFollowed value) unFollowed,
  }) {
    return loadedWorks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
    TResult? Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult? Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult? Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult? Function(ArtistProfileStateFollowed value)? followed,
    TResult? Function(ArtistProfileStateUnFollowed value)? unFollowed,
  }) {
    return loadedWorks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    TResult Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult Function(ArtistProfileStateFollowed value)? followed,
    TResult Function(ArtistProfileStateUnFollowed value)? unFollowed,
    required TResult orElse(),
  }) {
    if (loadedWorks != null) {
      return loadedWorks(this);
    }
    return orElse();
  }
}

abstract class ArtistProfileStateLoadedWorks implements ArtistProfileState {
  const factory ArtistProfileStateLoadedWorks(
          {required final Artist? artist,
          required final GetArtistWorksResponse? works}) =
      _$ArtistProfileStateLoadedWorks;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateLoadedWorksCopyWith<_$ArtistProfileStateLoadedWorks>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateLoadWorksErrorCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateLoadWorksErrorCopyWith(
          _$ArtistProfileStateLoadWorksError value,
          $Res Function(_$ArtistProfileStateLoadWorksError) then) =
      __$$ArtistProfileStateLoadWorksErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works, String message});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateLoadWorksErrorCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateLoadWorksError>
    implements _$$ArtistProfileStateLoadWorksErrorCopyWith<$Res> {
  __$$ArtistProfileStateLoadWorksErrorCopyWithImpl(
      _$ArtistProfileStateLoadWorksError _value,
      $Res Function(_$ArtistProfileStateLoadWorksError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
    Object? message = null,
  }) {
    return _then(_$ArtistProfileStateLoadWorksError(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      works: freezed == works
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as GetArtistWorksResponse?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArtistProfileStateLoadWorksError
    implements ArtistProfileStateLoadWorksError {
  const _$ArtistProfileStateLoadWorksError(
      {required this.artist, required this.works, required this.message});

  @override
  final Artist? artist;
  @override
  final GetArtistWorksResponse? works;
  @override
  final String message;

  @override
  String toString() {
    return 'ArtistProfileState.loadWorksError(artist: $artist, works: $works, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateLoadWorksError &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateLoadWorksErrorCopyWith<
          _$ArtistProfileStateLoadWorksError>
      get copyWith => __$$ArtistProfileStateLoadWorksErrorCopyWithImpl<
          _$ArtistProfileStateLoadWorksError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        initial,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        configured,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadingWorks,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadedWorks,
    required TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)
        loadWorksError,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        followed,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        unFollowed,
  }) {
    return loadWorksError(artist, works, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        configured,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult? Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        unFollowed,
  }) {
    return loadWorksError?.call(artist, works, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? configured,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? unFollowed,
    required TResult orElse(),
  }) {
    if (loadWorksError != null) {
      return loadWorksError(artist, works, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
    required TResult Function(ArtistProfileStateLoadingWorks value)
        loadingWorks,
    required TResult Function(ArtistProfileStateLoadedWorks value) loadedWorks,
    required TResult Function(ArtistProfileStateLoadWorksError value)
        loadWorksError,
    required TResult Function(ArtistProfileStateFollowed value) followed,
    required TResult Function(ArtistProfileStateUnFollowed value) unFollowed,
  }) {
    return loadWorksError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
    TResult? Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult? Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult? Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult? Function(ArtistProfileStateFollowed value)? followed,
    TResult? Function(ArtistProfileStateUnFollowed value)? unFollowed,
  }) {
    return loadWorksError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    TResult Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult Function(ArtistProfileStateFollowed value)? followed,
    TResult Function(ArtistProfileStateUnFollowed value)? unFollowed,
    required TResult orElse(),
  }) {
    if (loadWorksError != null) {
      return loadWorksError(this);
    }
    return orElse();
  }
}

abstract class ArtistProfileStateLoadWorksError implements ArtistProfileState {
  const factory ArtistProfileStateLoadWorksError(
      {required final Artist? artist,
      required final GetArtistWorksResponse? works,
      required final String message}) = _$ArtistProfileStateLoadWorksError;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateLoadWorksErrorCopyWith<
          _$ArtistProfileStateLoadWorksError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateFollowedCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateFollowedCopyWith(
          _$ArtistProfileStateFollowed value,
          $Res Function(_$ArtistProfileStateFollowed) then) =
      __$$ArtistProfileStateFollowedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateFollowedCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res, _$ArtistProfileStateFollowed>
    implements _$$ArtistProfileStateFollowedCopyWith<$Res> {
  __$$ArtistProfileStateFollowedCopyWithImpl(
      _$ArtistProfileStateFollowed _value,
      $Res Function(_$ArtistProfileStateFollowed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateFollowed(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      works: freezed == works
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as GetArtistWorksResponse?,
    ));
  }
}

/// @nodoc

class _$ArtistProfileStateFollowed implements ArtistProfileStateFollowed {
  const _$ArtistProfileStateFollowed(
      {required this.artist, required this.works});

  @override
  final Artist? artist;
  @override
  final GetArtistWorksResponse? works;

  @override
  String toString() {
    return 'ArtistProfileState.followed(artist: $artist, works: $works)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateFollowed &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateFollowedCopyWith<_$ArtistProfileStateFollowed>
      get copyWith => __$$ArtistProfileStateFollowedCopyWithImpl<
          _$ArtistProfileStateFollowed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        initial,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        configured,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadingWorks,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadedWorks,
    required TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)
        loadWorksError,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        followed,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        unFollowed,
  }) {
    return followed(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        configured,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult? Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        unFollowed,
  }) {
    return followed?.call(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? configured,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? unFollowed,
    required TResult orElse(),
  }) {
    if (followed != null) {
      return followed(artist, works);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
    required TResult Function(ArtistProfileStateLoadingWorks value)
        loadingWorks,
    required TResult Function(ArtistProfileStateLoadedWorks value) loadedWorks,
    required TResult Function(ArtistProfileStateLoadWorksError value)
        loadWorksError,
    required TResult Function(ArtistProfileStateFollowed value) followed,
    required TResult Function(ArtistProfileStateUnFollowed value) unFollowed,
  }) {
    return followed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
    TResult? Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult? Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult? Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult? Function(ArtistProfileStateFollowed value)? followed,
    TResult? Function(ArtistProfileStateUnFollowed value)? unFollowed,
  }) {
    return followed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    TResult Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult Function(ArtistProfileStateFollowed value)? followed,
    TResult Function(ArtistProfileStateUnFollowed value)? unFollowed,
    required TResult orElse(),
  }) {
    if (followed != null) {
      return followed(this);
    }
    return orElse();
  }
}

abstract class ArtistProfileStateFollowed implements ArtistProfileState {
  const factory ArtistProfileStateFollowed(
          {required final Artist? artist,
          required final GetArtistWorksResponse? works}) =
      _$ArtistProfileStateFollowed;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateFollowedCopyWith<_$ArtistProfileStateFollowed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateUnFollowedCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateUnFollowedCopyWith(
          _$ArtistProfileStateUnFollowed value,
          $Res Function(_$ArtistProfileStateUnFollowed) then) =
      __$$ArtistProfileStateUnFollowedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateUnFollowedCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateUnFollowed>
    implements _$$ArtistProfileStateUnFollowedCopyWith<$Res> {
  __$$ArtistProfileStateUnFollowedCopyWithImpl(
      _$ArtistProfileStateUnFollowed _value,
      $Res Function(_$ArtistProfileStateUnFollowed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateUnFollowed(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      works: freezed == works
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as GetArtistWorksResponse?,
    ));
  }
}

/// @nodoc

class _$ArtistProfileStateUnFollowed implements ArtistProfileStateUnFollowed {
  const _$ArtistProfileStateUnFollowed(
      {required this.artist, required this.works});

  @override
  final Artist? artist;
  @override
  final GetArtistWorksResponse? works;

  @override
  String toString() {
    return 'ArtistProfileState.unFollowed(artist: $artist, works: $works)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateUnFollowed &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateUnFollowedCopyWith<_$ArtistProfileStateUnFollowed>
      get copyWith => __$$ArtistProfileStateUnFollowedCopyWithImpl<
          _$ArtistProfileStateUnFollowed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        initial,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        configured,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadingWorks,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        loadedWorks,
    required TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)
        loadWorksError,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        followed,
    required TResult Function(Artist? artist, GetArtistWorksResponse? works)
        unFollowed,
  }) {
    return unFollowed(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        configured,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult? Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult? Function(Artist? artist, GetArtistWorksResponse? works)?
        unFollowed,
  }) {
    return unFollowed?.call(artist, works);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? initial,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? configured,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadingWorks,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)?
        loadedWorks,
    TResult Function(
            Artist? artist, GetArtistWorksResponse? works, String message)?
        loadWorksError,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? followed,
    TResult Function(Artist? artist, GetArtistWorksResponse? works)? unFollowed,
    required TResult orElse(),
  }) {
    if (unFollowed != null) {
      return unFollowed(artist, works);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistProfileStateInitial value) initial,
    required TResult Function(ArtistProfileStateConfigured value) configured,
    required TResult Function(ArtistProfileStateLoadingWorks value)
        loadingWorks,
    required TResult Function(ArtistProfileStateLoadedWorks value) loadedWorks,
    required TResult Function(ArtistProfileStateLoadWorksError value)
        loadWorksError,
    required TResult Function(ArtistProfileStateFollowed value) followed,
    required TResult Function(ArtistProfileStateUnFollowed value) unFollowed,
  }) {
    return unFollowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistProfileStateInitial value)? initial,
    TResult? Function(ArtistProfileStateConfigured value)? configured,
    TResult? Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult? Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult? Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult? Function(ArtistProfileStateFollowed value)? followed,
    TResult? Function(ArtistProfileStateUnFollowed value)? unFollowed,
  }) {
    return unFollowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistProfileStateInitial value)? initial,
    TResult Function(ArtistProfileStateConfigured value)? configured,
    TResult Function(ArtistProfileStateLoadingWorks value)? loadingWorks,
    TResult Function(ArtistProfileStateLoadedWorks value)? loadedWorks,
    TResult Function(ArtistProfileStateLoadWorksError value)? loadWorksError,
    TResult Function(ArtistProfileStateFollowed value)? followed,
    TResult Function(ArtistProfileStateUnFollowed value)? unFollowed,
    required TResult orElse(),
  }) {
    if (unFollowed != null) {
      return unFollowed(this);
    }
    return orElse();
  }
}

abstract class ArtistProfileStateUnFollowed implements ArtistProfileState {
  const factory ArtistProfileStateUnFollowed(
          {required final Artist? artist,
          required final GetArtistWorksResponse? works}) =
      _$ArtistProfileStateUnFollowed;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateUnFollowedCopyWith<_$ArtistProfileStateUnFollowed>
      get copyWith => throw _privateConstructorUsedError;
}
