// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteAccountEvent {
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteAccountRequested value) requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccountRequested value)? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccountRequested value)? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteAccountEventCopyWith<DeleteAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountEventCopyWith<$Res> {
  factory $DeleteAccountEventCopyWith(
          DeleteAccountEvent value, $Res Function(DeleteAccountEvent) then) =
      _$DeleteAccountEventCopyWithImpl<$Res, DeleteAccountEvent>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$DeleteAccountEventCopyWithImpl<$Res, $Val extends DeleteAccountEvent>
    implements $DeleteAccountEventCopyWith<$Res> {
  _$DeleteAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteAccountRequestedImplCopyWith<$Res>
    implements $DeleteAccountEventCopyWith<$Res> {
  factory _$$DeleteAccountRequestedImplCopyWith(
          _$DeleteAccountRequestedImpl value,
          $Res Function(_$DeleteAccountRequestedImpl) then) =
      __$$DeleteAccountRequestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$DeleteAccountRequestedImplCopyWithImpl<$Res>
    extends _$DeleteAccountEventCopyWithImpl<$Res, _$DeleteAccountRequestedImpl>
    implements _$$DeleteAccountRequestedImplCopyWith<$Res> {
  __$$DeleteAccountRequestedImplCopyWithImpl(
      _$DeleteAccountRequestedImpl _value,
      $Res Function(_$DeleteAccountRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$DeleteAccountRequestedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAccountRequestedImpl implements _DeleteAccountRequested {
  const _$DeleteAccountRequestedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'DeleteAccountEvent.requested(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountRequestedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountRequestedImplCopyWith<_$DeleteAccountRequestedImpl>
      get copyWith => __$$DeleteAccountRequestedImplCopyWithImpl<
          _$DeleteAccountRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) requested,
  }) {
    return requested(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password)? requested,
  }) {
    return requested?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteAccountRequested value) requested,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccountRequested value)? requested,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccountRequested value)? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountRequested implements DeleteAccountEvent {
  const factory _DeleteAccountRequested(final String password) =
      _$DeleteAccountRequestedImpl;

  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$DeleteAccountRequestedImplCopyWith<_$DeleteAccountRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteAccountInitial value) initial,
    required TResult Function(_DeleteAccountInProgress value) inProgress,
    required TResult Function(_DeleteAccountSuccess value) success,
    required TResult Function(_DeleteAccountFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccountInitial value)? initial,
    TResult? Function(_DeleteAccountInProgress value)? inProgress,
    TResult? Function(_DeleteAccountSuccess value)? success,
    TResult? Function(_DeleteAccountFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccountInitial value)? initial,
    TResult Function(_DeleteAccountInProgress value)? inProgress,
    TResult Function(_DeleteAccountSuccess value)? success,
    TResult Function(_DeleteAccountFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountStateCopyWith<$Res> {
  factory $DeleteAccountStateCopyWith(
          DeleteAccountState value, $Res Function(DeleteAccountState) then) =
      _$DeleteAccountStateCopyWithImpl<$Res, DeleteAccountState>;
}

/// @nodoc
class _$DeleteAccountStateCopyWithImpl<$Res, $Val extends DeleteAccountState>
    implements $DeleteAccountStateCopyWith<$Res> {
  _$DeleteAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteAccountInitialImplCopyWith<$Res> {
  factory _$$DeleteAccountInitialImplCopyWith(_$DeleteAccountInitialImpl value,
          $Res Function(_$DeleteAccountInitialImpl) then) =
      __$$DeleteAccountInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAccountInitialImplCopyWithImpl<$Res>
    extends _$DeleteAccountStateCopyWithImpl<$Res, _$DeleteAccountInitialImpl>
    implements _$$DeleteAccountInitialImplCopyWith<$Res> {
  __$$DeleteAccountInitialImplCopyWithImpl(_$DeleteAccountInitialImpl _value,
      $Res Function(_$DeleteAccountInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAccountInitialImpl implements _DeleteAccountInitial {
  const _$DeleteAccountInitialImpl();

  @override
  String toString() {
    return 'DeleteAccountState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failure,
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
    required TResult Function(_DeleteAccountInitial value) initial,
    required TResult Function(_DeleteAccountInProgress value) inProgress,
    required TResult Function(_DeleteAccountSuccess value) success,
    required TResult Function(_DeleteAccountFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccountInitial value)? initial,
    TResult? Function(_DeleteAccountInProgress value)? inProgress,
    TResult? Function(_DeleteAccountSuccess value)? success,
    TResult? Function(_DeleteAccountFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccountInitial value)? initial,
    TResult Function(_DeleteAccountInProgress value)? inProgress,
    TResult Function(_DeleteAccountSuccess value)? success,
    TResult Function(_DeleteAccountFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountInitial implements DeleteAccountState {
  const factory _DeleteAccountInitial() = _$DeleteAccountInitialImpl;
}

/// @nodoc
abstract class _$$DeleteAccountInProgressImplCopyWith<$Res> {
  factory _$$DeleteAccountInProgressImplCopyWith(
          _$DeleteAccountInProgressImpl value,
          $Res Function(_$DeleteAccountInProgressImpl) then) =
      __$$DeleteAccountInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAccountInProgressImplCopyWithImpl<$Res>
    extends _$DeleteAccountStateCopyWithImpl<$Res,
        _$DeleteAccountInProgressImpl>
    implements _$$DeleteAccountInProgressImplCopyWith<$Res> {
  __$$DeleteAccountInProgressImplCopyWithImpl(
      _$DeleteAccountInProgressImpl _value,
      $Res Function(_$DeleteAccountInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAccountInProgressImpl implements _DeleteAccountInProgress {
  const _$DeleteAccountInProgressImpl();

  @override
  String toString() {
    return 'DeleteAccountState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteAccountInitial value) initial,
    required TResult Function(_DeleteAccountInProgress value) inProgress,
    required TResult Function(_DeleteAccountSuccess value) success,
    required TResult Function(_DeleteAccountFailure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccountInitial value)? initial,
    TResult? Function(_DeleteAccountInProgress value)? inProgress,
    TResult? Function(_DeleteAccountSuccess value)? success,
    TResult? Function(_DeleteAccountFailure value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccountInitial value)? initial,
    TResult Function(_DeleteAccountInProgress value)? inProgress,
    TResult Function(_DeleteAccountSuccess value)? success,
    TResult Function(_DeleteAccountFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountInProgress implements DeleteAccountState {
  const factory _DeleteAccountInProgress() = _$DeleteAccountInProgressImpl;
}

/// @nodoc
abstract class _$$DeleteAccountSuccessImplCopyWith<$Res> {
  factory _$$DeleteAccountSuccessImplCopyWith(_$DeleteAccountSuccessImpl value,
          $Res Function(_$DeleteAccountSuccessImpl) then) =
      __$$DeleteAccountSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAccountSuccessImplCopyWithImpl<$Res>
    extends _$DeleteAccountStateCopyWithImpl<$Res, _$DeleteAccountSuccessImpl>
    implements _$$DeleteAccountSuccessImplCopyWith<$Res> {
  __$$DeleteAccountSuccessImplCopyWithImpl(_$DeleteAccountSuccessImpl _value,
      $Res Function(_$DeleteAccountSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAccountSuccessImpl implements _DeleteAccountSuccess {
  const _$DeleteAccountSuccessImpl();

  @override
  String toString() {
    return 'DeleteAccountState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteAccountInitial value) initial,
    required TResult Function(_DeleteAccountInProgress value) inProgress,
    required TResult Function(_DeleteAccountSuccess value) success,
    required TResult Function(_DeleteAccountFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccountInitial value)? initial,
    TResult? Function(_DeleteAccountInProgress value)? inProgress,
    TResult? Function(_DeleteAccountSuccess value)? success,
    TResult? Function(_DeleteAccountFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccountInitial value)? initial,
    TResult Function(_DeleteAccountInProgress value)? inProgress,
    TResult Function(_DeleteAccountSuccess value)? success,
    TResult Function(_DeleteAccountFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountSuccess implements DeleteAccountState {
  const factory _DeleteAccountSuccess() = _$DeleteAccountSuccessImpl;
}

/// @nodoc
abstract class _$$DeleteAccountFailureImplCopyWith<$Res> {
  factory _$$DeleteAccountFailureImplCopyWith(_$DeleteAccountFailureImpl value,
          $Res Function(_$DeleteAccountFailureImpl) then) =
      __$$DeleteAccountFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DeleteAccountFailureImplCopyWithImpl<$Res>
    extends _$DeleteAccountStateCopyWithImpl<$Res, _$DeleteAccountFailureImpl>
    implements _$$DeleteAccountFailureImplCopyWith<$Res> {
  __$$DeleteAccountFailureImplCopyWithImpl(_$DeleteAccountFailureImpl _value,
      $Res Function(_$DeleteAccountFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DeleteAccountFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAccountFailureImpl implements _DeleteAccountFailure {
  const _$DeleteAccountFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DeleteAccountState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountFailureImplCopyWith<_$DeleteAccountFailureImpl>
      get copyWith =>
          __$$DeleteAccountFailureImplCopyWithImpl<_$DeleteAccountFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteAccountInitial value) initial,
    required TResult Function(_DeleteAccountInProgress value) inProgress,
    required TResult Function(_DeleteAccountSuccess value) success,
    required TResult Function(_DeleteAccountFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccountInitial value)? initial,
    TResult? Function(_DeleteAccountInProgress value)? inProgress,
    TResult? Function(_DeleteAccountSuccess value)? success,
    TResult? Function(_DeleteAccountFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccountInitial value)? initial,
    TResult Function(_DeleteAccountInProgress value)? inProgress,
    TResult Function(_DeleteAccountSuccess value)? success,
    TResult Function(_DeleteAccountFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountFailure implements DeleteAccountState {
  const factory _DeleteAccountFailure({required final String error}) =
      _$DeleteAccountFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$DeleteAccountFailureImplCopyWith<_$DeleteAccountFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
