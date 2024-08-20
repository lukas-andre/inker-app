// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artists_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ArtistsListEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ArtistsListEvent.started()';
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
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddArtistsImplCopyWith<$Res> {
  factory _$$AddArtistsImplCopyWith(
          _$AddArtistsImpl value, $Res Function(_$AddArtistsImpl) then) =
      __$$AddArtistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Artist> artists});
}

/// @nodoc
class __$$AddArtistsImplCopyWithImpl<$Res>
    extends _$ArtistsListEventCopyWithImpl<$Res, _$AddArtistsImpl>
    implements _$$AddArtistsImplCopyWith<$Res> {
  __$$AddArtistsImplCopyWithImpl(
      _$AddArtistsImpl _value, $Res Function(_$AddArtistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$AddArtistsImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$AddArtistsImpl implements _AddArtists {
  const _$AddArtistsImpl({required final List<Artist> artists})
      : _artists = artists;

  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'ArtistsListEvent.addArtists(artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddArtistsImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddArtistsImplCopyWith<_$AddArtistsImpl> get copyWith =>
      __$$AddArtistsImplCopyWithImpl<_$AddArtistsImpl>(this, _$identity);

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
      _$AddArtistsImpl;

  List<Artist> get artists;
  @JsonKey(ignore: true)
  _$$AddArtistsImplCopyWith<_$AddArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearArtistsImplCopyWith<$Res> {
  factory _$$ClearArtistsImplCopyWith(
          _$ClearArtistsImpl value, $Res Function(_$ClearArtistsImpl) then) =
      __$$ClearArtistsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearArtistsImplCopyWithImpl<$Res>
    extends _$ArtistsListEventCopyWithImpl<$Res, _$ClearArtistsImpl>
    implements _$$ClearArtistsImplCopyWith<$Res> {
  __$$ClearArtistsImplCopyWithImpl(
      _$ClearArtistsImpl _value, $Res Function(_$ClearArtistsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearArtistsImpl implements _ClearArtists {
  const _$ClearArtistsImpl();

  @override
  String toString() {
    return 'ArtistsListEvent.clearArtists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearArtistsImpl);
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
  const factory _ClearArtists() = _$ClearArtistsImpl;
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
abstract class _$$ArtistsListStateInitialImplCopyWith<$Res>
    implements $ArtistsListStateCopyWith<$Res> {
  factory _$$ArtistsListStateInitialImplCopyWith(
          _$ArtistsListStateInitialImpl value,
          $Res Function(_$ArtistsListStateInitialImpl) then) =
      __$$ArtistsListStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Artist> artists});
}

/// @nodoc
class __$$ArtistsListStateInitialImplCopyWithImpl<$Res>
    extends _$ArtistsListStateCopyWithImpl<$Res, _$ArtistsListStateInitialImpl>
    implements _$$ArtistsListStateInitialImplCopyWith<$Res> {
  __$$ArtistsListStateInitialImplCopyWithImpl(
      _$ArtistsListStateInitialImpl _value,
      $Res Function(_$ArtistsListStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$ArtistsListStateInitialImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$ArtistsListStateInitialImpl implements ArtistsListStateInitial {
  const _$ArtistsListStateInitialImpl({final List<Artist> artists = const []})
      : _artists = artists;

  final List<Artist> _artists;
  @override
  @JsonKey()
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'ArtistsListState.initial(artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsListStateInitialImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsListStateInitialImplCopyWith<_$ArtistsListStateInitialImpl>
      get copyWith => __$$ArtistsListStateInitialImplCopyWithImpl<
          _$ArtistsListStateInitialImpl>(this, _$identity);

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
      _$ArtistsListStateInitialImpl;

  @override
  List<Artist> get artists;
  @override
  @JsonKey(ignore: true)
  _$$ArtistsListStateInitialImplCopyWith<_$ArtistsListStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistsListStateLoadedImplCopyWith<$Res>
    implements $ArtistsListStateCopyWith<$Res> {
  factory _$$ArtistsListStateLoadedImplCopyWith(
          _$ArtistsListStateLoadedImpl value,
          $Res Function(_$ArtistsListStateLoadedImpl) then) =
      __$$ArtistsListStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Artist> artists});
}

/// @nodoc
class __$$ArtistsListStateLoadedImplCopyWithImpl<$Res>
    extends _$ArtistsListStateCopyWithImpl<$Res, _$ArtistsListStateLoadedImpl>
    implements _$$ArtistsListStateLoadedImplCopyWith<$Res> {
  __$$ArtistsListStateLoadedImplCopyWithImpl(
      _$ArtistsListStateLoadedImpl _value,
      $Res Function(_$ArtistsListStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$ArtistsListStateLoadedImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$ArtistsListStateLoadedImpl implements ArtistsListStateLoaded {
  const _$ArtistsListStateLoadedImpl({final List<Artist> artists = const []})
      : _artists = artists;

  final List<Artist> _artists;
  @override
  @JsonKey()
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'ArtistsListState.loaded(artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsListStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsListStateLoadedImplCopyWith<_$ArtistsListStateLoadedImpl>
      get copyWith => __$$ArtistsListStateLoadedImplCopyWithImpl<
          _$ArtistsListStateLoadedImpl>(this, _$identity);

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
      _$ArtistsListStateLoadedImpl;

  @override
  List<Artist> get artists;
  @override
  @JsonKey(ignore: true)
  _$$ArtistsListStateLoadedImplCopyWith<_$ArtistsListStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
