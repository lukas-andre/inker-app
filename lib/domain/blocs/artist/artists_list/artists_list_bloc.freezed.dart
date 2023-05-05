// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artists_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArtistsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Artist> artists) addArtists,
    required TResult Function() clearArtists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Artist> artists)? addArtists,
    TResult? Function()? clearArtists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Artist> artists)? addArtists,
    TResult Function()? clearArtists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddArtists value) addArtists,
    required TResult Function(_ClearArtists value) clearArtists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddArtists value)? addArtists,
    TResult? Function(_ClearArtists value)? clearArtists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddArtists value)? addArtists,
    TResult Function(_ClearArtists value)? clearArtists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsListEventCopyWith<$Res> {
  factory $ArtistsListEventCopyWith(
          ArtistsListEvent value, $Res Function(ArtistsListEvent) then) =
      _$ArtistsListEventCopyWithImpl<$Res, ArtistsListEvent>;
}

/// @nodoc
class _$ArtistsListEventCopyWithImpl<$Res, $Val extends ArtistsListEvent>
    implements $ArtistsListEventCopyWith<$Res> {
  _$ArtistsListEventCopyWithImpl(this._value, this._then);

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
    extends _$ArtistsListEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ArtistsListEvent.started()';
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
    required TResult Function(List<Artist> artists) addArtists,
    required TResult Function() clearArtists,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Artist> artists)? addArtists,
    TResult? Function()? clearArtists,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Artist> artists)? addArtists,
    TResult Function()? clearArtists,
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
    required TResult Function(_AddArtists value) addArtists,
    required TResult Function(_ClearArtists value) clearArtists,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddArtists value)? addArtists,
    TResult? Function(_ClearArtists value)? clearArtists,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddArtists value)? addArtists,
    TResult Function(_ClearArtists value)? clearArtists,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ArtistsListEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AddArtistsCopyWith<$Res> {
  factory _$$_AddArtistsCopyWith(
          _$_AddArtists value, $Res Function(_$_AddArtists) then) =
      __$$_AddArtistsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Artist> artists});
}

/// @nodoc
class __$$_AddArtistsCopyWithImpl<$Res>
    extends _$ArtistsListEventCopyWithImpl<$Res, _$_AddArtists>
    implements _$$_AddArtistsCopyWith<$Res> {
  __$$_AddArtistsCopyWithImpl(
      _$_AddArtists _value, $Res Function(_$_AddArtists) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$_AddArtists(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$_AddArtists implements _AddArtists {
  const _$_AddArtists({required final List<Artist> artists})
      : _artists = artists;

  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'ArtistsListEvent.addArtists(artists: $artists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddArtists &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddArtistsCopyWith<_$_AddArtists> get copyWith =>
      __$$_AddArtistsCopyWithImpl<_$_AddArtists>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Artist> artists) addArtists,
    required TResult Function() clearArtists,
  }) {
    return addArtists(artists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Artist> artists)? addArtists,
    TResult? Function()? clearArtists,
  }) {
    return addArtists?.call(artists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Artist> artists)? addArtists,
    TResult Function()? clearArtists,
    required TResult orElse(),
  }) {
    if (addArtists != null) {
      return addArtists(artists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddArtists value) addArtists,
    required TResult Function(_ClearArtists value) clearArtists,
  }) {
    return addArtists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddArtists value)? addArtists,
    TResult? Function(_ClearArtists value)? clearArtists,
  }) {
    return addArtists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddArtists value)? addArtists,
    TResult Function(_ClearArtists value)? clearArtists,
    required TResult orElse(),
  }) {
    if (addArtists != null) {
      return addArtists(this);
    }
    return orElse();
  }
}

abstract class _AddArtists implements ArtistsListEvent {
  const factory _AddArtists({required final List<Artist> artists}) =
      _$_AddArtists;

  List<Artist> get artists;
  @JsonKey(ignore: true)
  _$$_AddArtistsCopyWith<_$_AddArtists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearArtistsCopyWith<$Res> {
  factory _$$_ClearArtistsCopyWith(
          _$_ClearArtists value, $Res Function(_$_ClearArtists) then) =
      __$$_ClearArtistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearArtistsCopyWithImpl<$Res>
    extends _$ArtistsListEventCopyWithImpl<$Res, _$_ClearArtists>
    implements _$$_ClearArtistsCopyWith<$Res> {
  __$$_ClearArtistsCopyWithImpl(
      _$_ClearArtists _value, $Res Function(_$_ClearArtists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearArtists implements _ClearArtists {
  const _$_ClearArtists();

  @override
  String toString() {
    return 'ArtistsListEvent.clearArtists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearArtists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Artist> artists) addArtists,
    required TResult Function() clearArtists,
  }) {
    return clearArtists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Artist> artists)? addArtists,
    TResult? Function()? clearArtists,
  }) {
    return clearArtists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Artist> artists)? addArtists,
    TResult Function()? clearArtists,
    required TResult orElse(),
  }) {
    if (clearArtists != null) {
      return clearArtists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddArtists value) addArtists,
    required TResult Function(_ClearArtists value) clearArtists,
  }) {
    return clearArtists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddArtists value)? addArtists,
    TResult? Function(_ClearArtists value)? clearArtists,
  }) {
    return clearArtists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddArtists value)? addArtists,
    TResult Function(_ClearArtists value)? clearArtists,
    required TResult orElse(),
  }) {
    if (clearArtists != null) {
      return clearArtists(this);
    }
    return orElse();
  }
}

abstract class _ClearArtists implements ArtistsListEvent {
  const factory _ClearArtists() = _$_ClearArtists;
}

/// @nodoc
mixin _$ArtistsListState {
  List<Artist> get artists => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Artist> artists) initial,
    required TResult Function(List<Artist> artists) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Artist> artists)? initial,
    TResult? Function(List<Artist> artists)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Artist> artists)? initial,
    TResult Function(List<Artist> artists)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistsListStateInitial value) initial,
    required TResult Function(ArtistsListStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistsListStateInitial value)? initial,
    TResult? Function(ArtistsListStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistsListStateInitial value)? initial,
    TResult Function(ArtistsListStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistsListStateCopyWith<ArtistsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsListStateCopyWith<$Res> {
  factory $ArtistsListStateCopyWith(
          ArtistsListState value, $Res Function(ArtistsListState) then) =
      _$ArtistsListStateCopyWithImpl<$Res, ArtistsListState>;
  @useResult
  $Res call({List<Artist> artists});
}

/// @nodoc
class _$ArtistsListStateCopyWithImpl<$Res, $Val extends ArtistsListState>
    implements $ArtistsListStateCopyWith<$Res> {
  _$ArtistsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_value.copyWith(
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistsListStateInitialCopyWith<$Res>
    implements $ArtistsListStateCopyWith<$Res> {
  factory _$$ArtistsListStateInitialCopyWith(_$ArtistsListStateInitial value,
          $Res Function(_$ArtistsListStateInitial) then) =
      __$$ArtistsListStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Artist> artists});
}

/// @nodoc
class __$$ArtistsListStateInitialCopyWithImpl<$Res>
    extends _$ArtistsListStateCopyWithImpl<$Res, _$ArtistsListStateInitial>
    implements _$$ArtistsListStateInitialCopyWith<$Res> {
  __$$ArtistsListStateInitialCopyWithImpl(_$ArtistsListStateInitial _value,
      $Res Function(_$ArtistsListStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$ArtistsListStateInitial(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$ArtistsListStateInitial implements ArtistsListStateInitial {
  const _$ArtistsListStateInitial({final List<Artist> artists = const []})
      : _artists = artists;

  final List<Artist> _artists;
  @override
  @JsonKey()
  List<Artist> get artists {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'ArtistsListState.initial(artists: $artists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsListStateInitial &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsListStateInitialCopyWith<_$ArtistsListStateInitial> get copyWith =>
      __$$ArtistsListStateInitialCopyWithImpl<_$ArtistsListStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Artist> artists) initial,
    required TResult Function(List<Artist> artists) loaded,
  }) {
    return initial(artists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Artist> artists)? initial,
    TResult? Function(List<Artist> artists)? loaded,
  }) {
    return initial?.call(artists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Artist> artists)? initial,
    TResult Function(List<Artist> artists)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(artists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistsListStateInitial value) initial,
    required TResult Function(ArtistsListStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistsListStateInitial value)? initial,
    TResult? Function(ArtistsListStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistsListStateInitial value)? initial,
    TResult Function(ArtistsListStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ArtistsListStateInitial implements ArtistsListState {
  const factory ArtistsListStateInitial({final List<Artist> artists}) =
      _$ArtistsListStateInitial;

  @override
  List<Artist> get artists;
  @override
  @JsonKey(ignore: true)
  _$$ArtistsListStateInitialCopyWith<_$ArtistsListStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistsListStateLoadedCopyWith<$Res>
    implements $ArtistsListStateCopyWith<$Res> {
  factory _$$ArtistsListStateLoadedCopyWith(_$ArtistsListStateLoaded value,
          $Res Function(_$ArtistsListStateLoaded) then) =
      __$$ArtistsListStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Artist> artists});
}

/// @nodoc
class __$$ArtistsListStateLoadedCopyWithImpl<$Res>
    extends _$ArtistsListStateCopyWithImpl<$Res, _$ArtistsListStateLoaded>
    implements _$$ArtistsListStateLoadedCopyWith<$Res> {
  __$$ArtistsListStateLoadedCopyWithImpl(_$ArtistsListStateLoaded _value,
      $Res Function(_$ArtistsListStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$ArtistsListStateLoaded(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$ArtistsListStateLoaded implements ArtistsListStateLoaded {
  const _$ArtistsListStateLoaded({final List<Artist> artists = const []})
      : _artists = artists;

  final List<Artist> _artists;
  @override
  @JsonKey()
  List<Artist> get artists {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'ArtistsListState.loaded(artists: $artists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsListStateLoaded &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsListStateLoadedCopyWith<_$ArtistsListStateLoaded> get copyWith =>
      __$$ArtistsListStateLoadedCopyWithImpl<_$ArtistsListStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Artist> artists) initial,
    required TResult Function(List<Artist> artists) loaded,
  }) {
    return loaded(artists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Artist> artists)? initial,
    TResult? Function(List<Artist> artists)? loaded,
  }) {
    return loaded?.call(artists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Artist> artists)? initial,
    TResult Function(List<Artist> artists)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(artists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistsListStateInitial value) initial,
    required TResult Function(ArtistsListStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistsListStateInitial value)? initial,
    TResult? Function(ArtistsListStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistsListStateInitial value)? initial,
    TResult Function(ArtistsListStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ArtistsListStateLoaded implements ArtistsListState {
  const factory ArtistsListStateLoaded({final List<Artist> artists}) =
      _$ArtistsListStateLoaded;

  @override
  List<Artist> get artists;
  @override
  @JsonKey(ignore: true)
  _$$ArtistsListStateLoadedCopyWith<_$ArtistsListStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
