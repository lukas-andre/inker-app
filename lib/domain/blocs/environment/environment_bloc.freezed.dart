// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'environment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EnvironmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEnvironments,
    required TResult Function(String environmentId) changeEnvironment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEnvironments,
    TResult? Function(String environmentId)? changeEnvironment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEnvironments,
    TResult Function(String environmentId)? changeEnvironment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEnvironments value) loadEnvironments,
    required TResult Function(ChangeEnvironment value) changeEnvironment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadEnvironments value)? loadEnvironments,
    TResult? Function(ChangeEnvironment value)? changeEnvironment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEnvironments value)? loadEnvironments,
    TResult Function(ChangeEnvironment value)? changeEnvironment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentEventCopyWith<$Res> {
  factory $EnvironmentEventCopyWith(
          EnvironmentEvent value, $Res Function(EnvironmentEvent) then) =
      _$EnvironmentEventCopyWithImpl<$Res, EnvironmentEvent>;
}

/// @nodoc
class _$EnvironmentEventCopyWithImpl<$Res, $Val extends EnvironmentEvent>
    implements $EnvironmentEventCopyWith<$Res> {
  _$EnvironmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadEnvironmentsImplCopyWith<$Res> {
  factory _$$LoadEnvironmentsImplCopyWith(_$LoadEnvironmentsImpl value,
          $Res Function(_$LoadEnvironmentsImpl) then) =
      __$$LoadEnvironmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadEnvironmentsImplCopyWithImpl<$Res>
    extends _$EnvironmentEventCopyWithImpl<$Res, _$LoadEnvironmentsImpl>
    implements _$$LoadEnvironmentsImplCopyWith<$Res> {
  __$$LoadEnvironmentsImplCopyWithImpl(_$LoadEnvironmentsImpl _value,
      $Res Function(_$LoadEnvironmentsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadEnvironmentsImpl implements LoadEnvironments {
  const _$LoadEnvironmentsImpl();

  @override
  String toString() {
    return 'EnvironmentEvent.loadEnvironments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadEnvironmentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEnvironments,
    required TResult Function(String environmentId) changeEnvironment,
  }) {
    return loadEnvironments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEnvironments,
    TResult? Function(String environmentId)? changeEnvironment,
  }) {
    return loadEnvironments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEnvironments,
    TResult Function(String environmentId)? changeEnvironment,
    required TResult orElse(),
  }) {
    if (loadEnvironments != null) {
      return loadEnvironments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEnvironments value) loadEnvironments,
    required TResult Function(ChangeEnvironment value) changeEnvironment,
  }) {
    return loadEnvironments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadEnvironments value)? loadEnvironments,
    TResult? Function(ChangeEnvironment value)? changeEnvironment,
  }) {
    return loadEnvironments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEnvironments value)? loadEnvironments,
    TResult Function(ChangeEnvironment value)? changeEnvironment,
    required TResult orElse(),
  }) {
    if (loadEnvironments != null) {
      return loadEnvironments(this);
    }
    return orElse();
  }
}

abstract class LoadEnvironments implements EnvironmentEvent {
  const factory LoadEnvironments() = _$LoadEnvironmentsImpl;
}

/// @nodoc
abstract class _$$ChangeEnvironmentImplCopyWith<$Res> {
  factory _$$ChangeEnvironmentImplCopyWith(_$ChangeEnvironmentImpl value,
          $Res Function(_$ChangeEnvironmentImpl) then) =
      __$$ChangeEnvironmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String environmentId});
}

/// @nodoc
class __$$ChangeEnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentEventCopyWithImpl<$Res, _$ChangeEnvironmentImpl>
    implements _$$ChangeEnvironmentImplCopyWith<$Res> {
  __$$ChangeEnvironmentImplCopyWithImpl(_$ChangeEnvironmentImpl _value,
      $Res Function(_$ChangeEnvironmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environmentId = null,
  }) {
    return _then(_$ChangeEnvironmentImpl(
      environmentId: null == environmentId
          ? _value.environmentId
          : environmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeEnvironmentImpl implements ChangeEnvironment {
  const _$ChangeEnvironmentImpl({required this.environmentId});

  @override
  final String environmentId;

  @override
  String toString() {
    return 'EnvironmentEvent.changeEnvironment(environmentId: $environmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEnvironmentImpl &&
            (identical(other.environmentId, environmentId) ||
                other.environmentId == environmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, environmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEnvironmentImplCopyWith<_$ChangeEnvironmentImpl> get copyWith =>
      __$$ChangeEnvironmentImplCopyWithImpl<_$ChangeEnvironmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEnvironments,
    required TResult Function(String environmentId) changeEnvironment,
  }) {
    return changeEnvironment(environmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEnvironments,
    TResult? Function(String environmentId)? changeEnvironment,
  }) {
    return changeEnvironment?.call(environmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEnvironments,
    TResult Function(String environmentId)? changeEnvironment,
    required TResult orElse(),
  }) {
    if (changeEnvironment != null) {
      return changeEnvironment(environmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEnvironments value) loadEnvironments,
    required TResult Function(ChangeEnvironment value) changeEnvironment,
  }) {
    return changeEnvironment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadEnvironments value)? loadEnvironments,
    TResult? Function(ChangeEnvironment value)? changeEnvironment,
  }) {
    return changeEnvironment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEnvironments value)? loadEnvironments,
    TResult Function(ChangeEnvironment value)? changeEnvironment,
    required TResult orElse(),
  }) {
    if (changeEnvironment != null) {
      return changeEnvironment(this);
    }
    return orElse();
  }
}

abstract class ChangeEnvironment implements EnvironmentEvent {
  const factory ChangeEnvironment({required final String environmentId}) =
      _$ChangeEnvironmentImpl;

  String get environmentId;
  @JsonKey(ignore: true)
  _$$ChangeEnvironmentImplCopyWith<_$ChangeEnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EnvironmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)
        loaded,
    required TResult Function(
            Environment previousEnvironment, Environment newEnvironment)
        changed,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult? Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Changed value) changed,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Changed value)? changed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentStateCopyWith<$Res> {
  factory $EnvironmentStateCopyWith(
          EnvironmentState value, $Res Function(EnvironmentState) then) =
      _$EnvironmentStateCopyWithImpl<$Res, EnvironmentState>;
}

/// @nodoc
class _$EnvironmentStateCopyWithImpl<$Res, $Val extends EnvironmentState>
    implements $EnvironmentStateCopyWith<$Res> {
  _$EnvironmentStateCopyWithImpl(this._value, this._then);

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
    extends _$EnvironmentStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'EnvironmentState.initial()';
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
    required TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)
        loaded,
    required TResult Function(
            Environment previousEnvironment, Environment newEnvironment)
        changed,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult? Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
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
    required TResult Function(_Changed value) changed,
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
    TResult? Function(_Changed value)? changed,
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
    TResult Function(_Changed value)? changed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EnvironmentState {
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
    extends _$EnvironmentStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'EnvironmentState.loading()';
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
    required TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)
        loaded,
    required TResult Function(
            Environment previousEnvironment, Environment newEnvironment)
        changed,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult? Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
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
    required TResult Function(_Changed value) changed,
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
    TResult? Function(_Changed value)? changed,
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
    TResult Function(_Changed value)? changed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EnvironmentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Environment currentEnvironment,
      EnvironmentsConfig availableEnvironments});

  $EnvironmentCopyWith<$Res> get currentEnvironment;
  $EnvironmentsConfigCopyWith<$Res> get availableEnvironments;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$EnvironmentStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEnvironment = null,
    Object? availableEnvironments = null,
  }) {
    return _then(_$LoadedImpl(
      currentEnvironment: null == currentEnvironment
          ? _value.currentEnvironment
          : currentEnvironment // ignore: cast_nullable_to_non_nullable
              as Environment,
      availableEnvironments: null == availableEnvironments
          ? _value.availableEnvironments
          : availableEnvironments // ignore: cast_nullable_to_non_nullable
              as EnvironmentsConfig,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EnvironmentCopyWith<$Res> get currentEnvironment {
    return $EnvironmentCopyWith<$Res>(_value.currentEnvironment, (value) {
      return _then(_value.copyWith(currentEnvironment: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EnvironmentsConfigCopyWith<$Res> get availableEnvironments {
    return $EnvironmentsConfigCopyWith<$Res>(_value.availableEnvironments,
        (value) {
      return _then(_value.copyWith(availableEnvironments: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.currentEnvironment, required this.availableEnvironments});

  @override
  final Environment currentEnvironment;
  @override
  final EnvironmentsConfig availableEnvironments;

  @override
  String toString() {
    return 'EnvironmentState.loaded(currentEnvironment: $currentEnvironment, availableEnvironments: $availableEnvironments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.currentEnvironment, currentEnvironment) ||
                other.currentEnvironment == currentEnvironment) &&
            (identical(other.availableEnvironments, availableEnvironments) ||
                other.availableEnvironments == availableEnvironments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentEnvironment, availableEnvironments);

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
    required TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)
        loaded,
    required TResult Function(
            Environment previousEnvironment, Environment newEnvironment)
        changed,
    required TResult Function(String message) error,
  }) {
    return loaded(currentEnvironment, availableEnvironments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult? Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(currentEnvironment, availableEnvironments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentEnvironment, availableEnvironments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Changed value) changed,
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
    TResult? Function(_Changed value)? changed,
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
    TResult Function(_Changed value)? changed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements EnvironmentState {
  const factory _Loaded(
      {required final Environment currentEnvironment,
      required final EnvironmentsConfig availableEnvironments}) = _$LoadedImpl;

  Environment get currentEnvironment;
  EnvironmentsConfig get availableEnvironments;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedImplCopyWith<$Res> {
  factory _$$ChangedImplCopyWith(
          _$ChangedImpl value, $Res Function(_$ChangedImpl) then) =
      __$$ChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Environment previousEnvironment, Environment newEnvironment});

  $EnvironmentCopyWith<$Res> get previousEnvironment;
  $EnvironmentCopyWith<$Res> get newEnvironment;
}

/// @nodoc
class __$$ChangedImplCopyWithImpl<$Res>
    extends _$EnvironmentStateCopyWithImpl<$Res, _$ChangedImpl>
    implements _$$ChangedImplCopyWith<$Res> {
  __$$ChangedImplCopyWithImpl(
      _$ChangedImpl _value, $Res Function(_$ChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousEnvironment = null,
    Object? newEnvironment = null,
  }) {
    return _then(_$ChangedImpl(
      previousEnvironment: null == previousEnvironment
          ? _value.previousEnvironment
          : previousEnvironment // ignore: cast_nullable_to_non_nullable
              as Environment,
      newEnvironment: null == newEnvironment
          ? _value.newEnvironment
          : newEnvironment // ignore: cast_nullable_to_non_nullable
              as Environment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EnvironmentCopyWith<$Res> get previousEnvironment {
    return $EnvironmentCopyWith<$Res>(_value.previousEnvironment, (value) {
      return _then(_value.copyWith(previousEnvironment: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EnvironmentCopyWith<$Res> get newEnvironment {
    return $EnvironmentCopyWith<$Res>(_value.newEnvironment, (value) {
      return _then(_value.copyWith(newEnvironment: value));
    });
  }
}

/// @nodoc

class _$ChangedImpl implements _Changed {
  const _$ChangedImpl(
      {required this.previousEnvironment, required this.newEnvironment});

  @override
  final Environment previousEnvironment;
  @override
  final Environment newEnvironment;

  @override
  String toString() {
    return 'EnvironmentState.changed(previousEnvironment: $previousEnvironment, newEnvironment: $newEnvironment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedImpl &&
            (identical(other.previousEnvironment, previousEnvironment) ||
                other.previousEnvironment == previousEnvironment) &&
            (identical(other.newEnvironment, newEnvironment) ||
                other.newEnvironment == newEnvironment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, previousEnvironment, newEnvironment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedImplCopyWith<_$ChangedImpl> get copyWith =>
      __$$ChangedImplCopyWithImpl<_$ChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)
        loaded,
    required TResult Function(
            Environment previousEnvironment, Environment newEnvironment)
        changed,
    required TResult Function(String message) error,
  }) {
    return changed(previousEnvironment, newEnvironment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult? Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
    TResult? Function(String message)? error,
  }) {
    return changed?.call(previousEnvironment, newEnvironment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(previousEnvironment, newEnvironment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Changed value) changed,
    required TResult Function(_Error value) error,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Error value)? error,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Changed value)? changed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements EnvironmentState {
  const factory _Changed(
      {required final Environment previousEnvironment,
      required final Environment newEnvironment}) = _$ChangedImpl;

  Environment get previousEnvironment;
  Environment get newEnvironment;
  @JsonKey(ignore: true)
  _$$ChangedImplCopyWith<_$ChangedImpl> get copyWith =>
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
    extends _$EnvironmentStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'EnvironmentState.error(message: $message)';
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
    required TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)
        loaded,
    required TResult Function(
            Environment previousEnvironment, Environment newEnvironment)
        changed,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult? Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Environment currentEnvironment,
            EnvironmentsConfig availableEnvironments)?
        loaded,
    TResult Function(
            Environment previousEnvironment, Environment newEnvironment)?
        changed,
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
    required TResult Function(_Changed value) changed,
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
    TResult? Function(_Changed value)? changed,
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
    TResult Function(_Changed value)? changed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements EnvironmentState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
