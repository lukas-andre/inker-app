// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ArtistProfileEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
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
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SetArtistImplCopyWith<$Res> {
  factory _$$SetArtistImplCopyWith(
          _$SetArtistImpl value, $Res Function(_$SetArtistImpl) then) =
      __$$SetArtistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Artist artist});

  $ArtistCopyWith<$Res> get artist;
}

/// @nodoc
class __$$SetArtistImplCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$SetArtistImpl>
    implements _$$SetArtistImplCopyWith<$Res> {
  __$$SetArtistImplCopyWithImpl(
      _$SetArtistImpl _value, $Res Function(_$SetArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
  }) {
    return _then(_$SetArtistImpl(
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

class _$SetArtistImpl implements _SetArtist {
  const _$SetArtistImpl(this.artist);

  @override
  final Artist artist;

  @override
  String toString() {
    return 'ArtistProfileEvent.setArtist(artist: $artist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetArtistImpl &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetArtistImplCopyWith<_$SetArtistImpl> get copyWith =>
      __$$SetArtistImplCopyWithImpl<_$SetArtistImpl>(this, _$identity);

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
  const factory _SetArtist(final Artist artist) = _$SetArtistImpl;

  Artist get artist;
  @JsonKey(ignore: true)
  _$$SetArtistImplCopyWith<_$SetArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingWorksImplCopyWith<$Res> {
  factory _$$LoadingWorksImplCopyWith(
          _$LoadingWorksImpl value, $Res Function(_$LoadingWorksImpl) then) =
      __$$LoadingWorksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingWorksImplCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$LoadingWorksImpl>
    implements _$$LoadingWorksImplCopyWith<$Res> {
  __$$LoadingWorksImplCopyWithImpl(
      _$LoadingWorksImpl _value, $Res Function(_$LoadingWorksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingWorksImpl implements _LoadingWorks {
  const _$LoadingWorksImpl();

  @override
  String toString() {
    return 'ArtistProfileEvent.loadingWorks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingWorksImpl);
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
  const factory _LoadingWorks() = _$LoadingWorksImpl;
}

/// @nodoc
abstract class _$$LoadedWorksImplCopyWith<$Res> {
  factory _$$LoadedWorksImplCopyWith(
          _$LoadedWorksImpl value, $Res Function(_$LoadedWorksImpl) then) =
      __$$LoadedWorksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetArtistWorksResponse works});

  $GetArtistWorksResponseCopyWith<$Res> get works;
}

/// @nodoc
class __$$LoadedWorksImplCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$LoadedWorksImpl>
    implements _$$LoadedWorksImplCopyWith<$Res> {
  __$$LoadedWorksImplCopyWithImpl(
      _$LoadedWorksImpl _value, $Res Function(_$LoadedWorksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? works = null,
  }) {
    return _then(_$LoadedWorksImpl(
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

class _$LoadedWorksImpl implements _LoadedWorks {
  const _$LoadedWorksImpl(this.works);

  @override
  final GetArtistWorksResponse works;

  @override
  String toString() {
    return 'ArtistProfileEvent.loadedWorks(works: $works)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedWorksImpl &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedWorksImplCopyWith<_$LoadedWorksImpl> get copyWith =>
      __$$LoadedWorksImplCopyWithImpl<_$LoadedWorksImpl>(this, _$identity);

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
      _$LoadedWorksImpl;

  GetArtistWorksResponse get works;
  @JsonKey(ignore: true)
  _$$LoadedWorksImplCopyWith<_$LoadedWorksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadWorksErrorImplCopyWith<$Res> {
  factory _$$LoadWorksErrorImplCopyWith(_$LoadWorksErrorImpl value,
          $Res Function(_$LoadWorksErrorImpl) then) =
      __$$LoadWorksErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadWorksErrorImplCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$LoadWorksErrorImpl>
    implements _$$LoadWorksErrorImplCopyWith<$Res> {
  __$$LoadWorksErrorImplCopyWithImpl(
      _$LoadWorksErrorImpl _value, $Res Function(_$LoadWorksErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadWorksErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadWorksErrorImpl implements _LoadWorksError {
  const _$LoadWorksErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ArtistProfileEvent.loadWorksError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWorksErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadWorksErrorImplCopyWith<_$LoadWorksErrorImpl> get copyWith =>
      __$$LoadWorksErrorImplCopyWithImpl<_$LoadWorksErrorImpl>(
          this, _$identity);

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
  const factory _LoadWorksError(final String message) = _$LoadWorksErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadWorksErrorImplCopyWith<_$LoadWorksErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FollowImplCopyWith<$Res> {
  factory _$$FollowImplCopyWith(
          _$FollowImpl value, $Res Function(_$FollowImpl) then) =
      __$$FollowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FollowImplCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$FollowImpl>
    implements _$$FollowImplCopyWith<$Res> {
  __$$FollowImplCopyWithImpl(
      _$FollowImpl _value, $Res Function(_$FollowImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FollowImpl implements _Follow {
  const _$FollowImpl();

  @override
  String toString() {
    return 'ArtistProfileEvent.follow()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FollowImpl);
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
  const factory _Follow() = _$FollowImpl;
}

/// @nodoc
abstract class _$$UnFollowImplCopyWith<$Res> {
  factory _$$UnFollowImplCopyWith(
          _$UnFollowImpl value, $Res Function(_$UnFollowImpl) then) =
      __$$UnFollowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnFollowImplCopyWithImpl<$Res>
    extends _$ArtistProfileEventCopyWithImpl<$Res, _$UnFollowImpl>
    implements _$$UnFollowImplCopyWith<$Res> {
  __$$UnFollowImplCopyWithImpl(
      _$UnFollowImpl _value, $Res Function(_$UnFollowImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnFollowImpl implements _UnFollow {
  const _$UnFollowImpl();

  @override
  String toString() {
    return 'ArtistProfileEvent.unFollow()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnFollowImpl);
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
  const factory _UnFollow() = _$UnFollowImpl;
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
abstract class _$$ArtistProfileStateInitialImplCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateInitialImplCopyWith(
          _$ArtistProfileStateInitialImpl value,
          $Res Function(_$ArtistProfileStateInitialImpl) then) =
      __$$ArtistProfileStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateInitialImplCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateInitialImpl>
    implements _$$ArtistProfileStateInitialImplCopyWith<$Res> {
  __$$ArtistProfileStateInitialImplCopyWithImpl(
      _$ArtistProfileStateInitialImpl _value,
      $Res Function(_$ArtistProfileStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateInitialImpl(
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

class _$ArtistProfileStateInitialImpl implements ArtistProfileStateInitial {
  const _$ArtistProfileStateInitialImpl(
      {this.artist = null, this.works = null});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateInitialImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateInitialImplCopyWith<_$ArtistProfileStateInitialImpl>
      get copyWith => __$$ArtistProfileStateInitialImplCopyWithImpl<
          _$ArtistProfileStateInitialImpl>(this, _$identity);

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
      final GetArtistWorksResponse? works}) = _$ArtistProfileStateInitialImpl;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateInitialImplCopyWith<_$ArtistProfileStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateConfiguredImplCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateConfiguredImplCopyWith(
          _$ArtistProfileStateConfiguredImpl value,
          $Res Function(_$ArtistProfileStateConfiguredImpl) then) =
      __$$ArtistProfileStateConfiguredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateConfiguredImplCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateConfiguredImpl>
    implements _$$ArtistProfileStateConfiguredImplCopyWith<$Res> {
  __$$ArtistProfileStateConfiguredImplCopyWithImpl(
      _$ArtistProfileStateConfiguredImpl _value,
      $Res Function(_$ArtistProfileStateConfiguredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateConfiguredImpl(
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

class _$ArtistProfileStateConfiguredImpl
    implements ArtistProfileStateConfigured {
  const _$ArtistProfileStateConfiguredImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateConfiguredImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateConfiguredImplCopyWith<
          _$ArtistProfileStateConfiguredImpl>
      get copyWith => __$$ArtistProfileStateConfiguredImplCopyWithImpl<
          _$ArtistProfileStateConfiguredImpl>(this, _$identity);

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
          final GetArtistWorksResponse? works}) =
      _$ArtistProfileStateConfiguredImpl;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateConfiguredImplCopyWith<
          _$ArtistProfileStateConfiguredImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateLoadingWorksImplCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateLoadingWorksImplCopyWith(
          _$ArtistProfileStateLoadingWorksImpl value,
          $Res Function(_$ArtistProfileStateLoadingWorksImpl) then) =
      __$$ArtistProfileStateLoadingWorksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateLoadingWorksImplCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateLoadingWorksImpl>
    implements _$$ArtistProfileStateLoadingWorksImplCopyWith<$Res> {
  __$$ArtistProfileStateLoadingWorksImplCopyWithImpl(
      _$ArtistProfileStateLoadingWorksImpl _value,
      $Res Function(_$ArtistProfileStateLoadingWorksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateLoadingWorksImpl(
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

class _$ArtistProfileStateLoadingWorksImpl
    implements ArtistProfileStateLoadingWorks {
  const _$ArtistProfileStateLoadingWorksImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateLoadingWorksImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateLoadingWorksImplCopyWith<
          _$ArtistProfileStateLoadingWorksImpl>
      get copyWith => __$$ArtistProfileStateLoadingWorksImplCopyWithImpl<
          _$ArtistProfileStateLoadingWorksImpl>(this, _$identity);

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
          final GetArtistWorksResponse? works}) =
      _$ArtistProfileStateLoadingWorksImpl;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateLoadingWorksImplCopyWith<
          _$ArtistProfileStateLoadingWorksImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateLoadedWorksImplCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateLoadedWorksImplCopyWith(
          _$ArtistProfileStateLoadedWorksImpl value,
          $Res Function(_$ArtistProfileStateLoadedWorksImpl) then) =
      __$$ArtistProfileStateLoadedWorksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateLoadedWorksImplCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateLoadedWorksImpl>
    implements _$$ArtistProfileStateLoadedWorksImplCopyWith<$Res> {
  __$$ArtistProfileStateLoadedWorksImplCopyWithImpl(
      _$ArtistProfileStateLoadedWorksImpl _value,
      $Res Function(_$ArtistProfileStateLoadedWorksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateLoadedWorksImpl(
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

class _$ArtistProfileStateLoadedWorksImpl
    implements ArtistProfileStateLoadedWorks {
  const _$ArtistProfileStateLoadedWorksImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateLoadedWorksImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateLoadedWorksImplCopyWith<
          _$ArtistProfileStateLoadedWorksImpl>
      get copyWith => __$$ArtistProfileStateLoadedWorksImplCopyWithImpl<
          _$ArtistProfileStateLoadedWorksImpl>(this, _$identity);

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
      _$ArtistProfileStateLoadedWorksImpl;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateLoadedWorksImplCopyWith<
          _$ArtistProfileStateLoadedWorksImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateLoadWorksErrorImplCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateLoadWorksErrorImplCopyWith(
          _$ArtistProfileStateLoadWorksErrorImpl value,
          $Res Function(_$ArtistProfileStateLoadWorksErrorImpl) then) =
      __$$ArtistProfileStateLoadWorksErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works, String message});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateLoadWorksErrorImplCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateLoadWorksErrorImpl>
    implements _$$ArtistProfileStateLoadWorksErrorImplCopyWith<$Res> {
  __$$ArtistProfileStateLoadWorksErrorImplCopyWithImpl(
      _$ArtistProfileStateLoadWorksErrorImpl _value,
      $Res Function(_$ArtistProfileStateLoadWorksErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
    Object? message = null,
  }) {
    return _then(_$ArtistProfileStateLoadWorksErrorImpl(
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

class _$ArtistProfileStateLoadWorksErrorImpl
    implements ArtistProfileStateLoadWorksError {
  const _$ArtistProfileStateLoadWorksErrorImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateLoadWorksErrorImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateLoadWorksErrorImplCopyWith<
          _$ArtistProfileStateLoadWorksErrorImpl>
      get copyWith => __$$ArtistProfileStateLoadWorksErrorImplCopyWithImpl<
          _$ArtistProfileStateLoadWorksErrorImpl>(this, _$identity);

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
      required final String message}) = _$ArtistProfileStateLoadWorksErrorImpl;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateLoadWorksErrorImplCopyWith<
          _$ArtistProfileStateLoadWorksErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateFollowedImplCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateFollowedImplCopyWith(
          _$ArtistProfileStateFollowedImpl value,
          $Res Function(_$ArtistProfileStateFollowedImpl) then) =
      __$$ArtistProfileStateFollowedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateFollowedImplCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateFollowedImpl>
    implements _$$ArtistProfileStateFollowedImplCopyWith<$Res> {
  __$$ArtistProfileStateFollowedImplCopyWithImpl(
      _$ArtistProfileStateFollowedImpl _value,
      $Res Function(_$ArtistProfileStateFollowedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateFollowedImpl(
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

class _$ArtistProfileStateFollowedImpl implements ArtistProfileStateFollowed {
  const _$ArtistProfileStateFollowedImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateFollowedImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateFollowedImplCopyWith<_$ArtistProfileStateFollowedImpl>
      get copyWith => __$$ArtistProfileStateFollowedImplCopyWithImpl<
          _$ArtistProfileStateFollowedImpl>(this, _$identity);

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
      _$ArtistProfileStateFollowedImpl;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateFollowedImplCopyWith<_$ArtistProfileStateFollowedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistProfileStateUnFollowedImplCopyWith<$Res>
    implements $ArtistProfileStateCopyWith<$Res> {
  factory _$$ArtistProfileStateUnFollowedImplCopyWith(
          _$ArtistProfileStateUnFollowedImpl value,
          $Res Function(_$ArtistProfileStateUnFollowedImpl) then) =
      __$$ArtistProfileStateUnFollowedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Artist? artist, GetArtistWorksResponse? works});

  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $GetArtistWorksResponseCopyWith<$Res>? get works;
}

/// @nodoc
class __$$ArtistProfileStateUnFollowedImplCopyWithImpl<$Res>
    extends _$ArtistProfileStateCopyWithImpl<$Res,
        _$ArtistProfileStateUnFollowedImpl>
    implements _$$ArtistProfileStateUnFollowedImplCopyWith<$Res> {
  __$$ArtistProfileStateUnFollowedImplCopyWithImpl(
      _$ArtistProfileStateUnFollowedImpl _value,
      $Res Function(_$ArtistProfileStateUnFollowedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? works = freezed,
  }) {
    return _then(_$ArtistProfileStateUnFollowedImpl(
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

class _$ArtistProfileStateUnFollowedImpl
    implements ArtistProfileStateUnFollowed {
  const _$ArtistProfileStateUnFollowedImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileStateUnFollowedImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.works, works) || other.works == works));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist, works);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileStateUnFollowedImplCopyWith<
          _$ArtistProfileStateUnFollowedImpl>
      get copyWith => __$$ArtistProfileStateUnFollowedImplCopyWithImpl<
          _$ArtistProfileStateUnFollowedImpl>(this, _$identity);

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
      _$ArtistProfileStateUnFollowedImpl;

  @override
  Artist? get artist;
  @override
  GetArtistWorksResponse? get works;
  @override
  @JsonKey(ignore: true)
  _$$ArtistProfileStateUnFollowedImplCopyWith<
          _$ArtistProfileStateUnFollowedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
