// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)
        loaded,
    required TResult Function(String message, TokenBalance? lastKnownBalance)
        error,
    required TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)
        insufficientBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult? Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult? Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_InsufficientBalance value) insufficientBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_InsufficientBalance value)? insufficientBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_InsufficientBalance value)? insufficientBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStateCopyWith<$Res> {
  factory $TokenStateCopyWith(
          TokenState value, $Res Function(TokenState) then) =
      _$TokenStateCopyWithImpl<$Res, TokenState>;
}

/// @nodoc
class _$TokenStateCopyWithImpl<$Res, $Val extends TokenState>
    implements $TokenStateCopyWith<$Res> {
  _$TokenStateCopyWithImpl(this._value, this._then);

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
    extends _$TokenStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TokenState.initial()';
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
    required TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)
        loaded,
    required TResult Function(String message, TokenBalance? lastKnownBalance)
        error,
    required TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)
        insufficientBalance,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult? Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult? Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
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
    required TResult Function(_InsufficientBalance value) insufficientBalance,
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
    TResult? Function(_InsufficientBalance value)? insufficientBalance,
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
    TResult Function(_InsufficientBalance value)? insufficientBalance,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TokenState {
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
    extends _$TokenStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'TokenState.loading()';
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
    required TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)
        loaded,
    required TResult Function(String message, TokenBalance? lastKnownBalance)
        error,
    required TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)
        insufficientBalance,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult? Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult? Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
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
    required TResult Function(_InsufficientBalance value) insufficientBalance,
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
    TResult? Function(_InsufficientBalance value)? insufficientBalance,
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
    TResult Function(_InsufficientBalance value)? insufficientBalance,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TokenState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TokenBalance balance, List<TokenPackage> packages, bool isRefreshing});

  $TokenBalanceCopyWith<$Res> get balance;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? packages = null,
    Object? isRefreshing = null,
  }) {
    return _then(_$LoadedImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as TokenBalance,
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<TokenPackage>,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenBalanceCopyWith<$Res> get balance {
    return $TokenBalanceCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.balance,
      final List<TokenPackage> packages = const [],
      this.isRefreshing = false})
      : _packages = packages;

  @override
  final TokenBalance balance;
  final List<TokenPackage> _packages;
  @override
  @JsonKey()
  List<TokenPackage> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  @JsonKey()
  final bool isRefreshing;

  @override
  String toString() {
    return 'TokenState.loaded(balance: $balance, packages: $packages, isRefreshing: $isRefreshing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance,
      const DeepCollectionEquality().hash(_packages), isRefreshing);

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
    required TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)
        loaded,
    required TResult Function(String message, TokenBalance? lastKnownBalance)
        error,
    required TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)
        insufficientBalance,
  }) {
    return loaded(balance, packages, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult? Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult? Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
  }) {
    return loaded?.call(balance, packages, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(balance, packages, isRefreshing);
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
    required TResult Function(_InsufficientBalance value) insufficientBalance,
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
    TResult? Function(_InsufficientBalance value)? insufficientBalance,
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
    TResult Function(_InsufficientBalance value)? insufficientBalance,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TokenState {
  const factory _Loaded(
      {required final TokenBalance balance,
      final List<TokenPackage> packages,
      final bool isRefreshing}) = _$LoadedImpl;

  TokenBalance get balance;
  List<TokenPackage> get packages;
  bool get isRefreshing;
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
  $Res call({String message, TokenBalance? lastKnownBalance});

  $TokenBalanceCopyWith<$Res>? get lastKnownBalance;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? lastKnownBalance = freezed,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      lastKnownBalance: freezed == lastKnownBalance
          ? _value.lastKnownBalance
          : lastKnownBalance // ignore: cast_nullable_to_non_nullable
              as TokenBalance?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenBalanceCopyWith<$Res>? get lastKnownBalance {
    if (_value.lastKnownBalance == null) {
      return null;
    }

    return $TokenBalanceCopyWith<$Res>(_value.lastKnownBalance!, (value) {
      return _then(_value.copyWith(lastKnownBalance: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message, this.lastKnownBalance});

  @override
  final String message;
  @override
  final TokenBalance? lastKnownBalance;

  @override
  String toString() {
    return 'TokenState.error(message: $message, lastKnownBalance: $lastKnownBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.lastKnownBalance, lastKnownBalance) ||
                other.lastKnownBalance == lastKnownBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, lastKnownBalance);

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
    required TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)
        loaded,
    required TResult Function(String message, TokenBalance? lastKnownBalance)
        error,
    required TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)
        insufficientBalance,
  }) {
    return error(message, lastKnownBalance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult? Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult? Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
  }) {
    return error?.call(message, lastKnownBalance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, lastKnownBalance);
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
    required TResult Function(_InsufficientBalance value) insufficientBalance,
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
    TResult? Function(_InsufficientBalance value)? insufficientBalance,
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
    TResult Function(_InsufficientBalance value)? insufficientBalance,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TokenState {
  const factory _Error(
      {required final String message,
      final TokenBalance? lastKnownBalance}) = _$ErrorImpl;

  String get message;
  TokenBalance? get lastKnownBalance;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsufficientBalanceImplCopyWith<$Res> {
  factory _$$InsufficientBalanceImplCopyWith(_$InsufficientBalanceImpl value,
          $Res Function(_$InsufficientBalanceImpl) then) =
      __$$InsufficientBalanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TokenBalance balance, int requiredAmount, List<TokenPackage> packages});

  $TokenBalanceCopyWith<$Res> get balance;
}

/// @nodoc
class __$$InsufficientBalanceImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$InsufficientBalanceImpl>
    implements _$$InsufficientBalanceImplCopyWith<$Res> {
  __$$InsufficientBalanceImplCopyWithImpl(_$InsufficientBalanceImpl _value,
      $Res Function(_$InsufficientBalanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? requiredAmount = null,
    Object? packages = null,
  }) {
    return _then(_$InsufficientBalanceImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as TokenBalance,
      requiredAmount: null == requiredAmount
          ? _value.requiredAmount
          : requiredAmount // ignore: cast_nullable_to_non_nullable
              as int,
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<TokenPackage>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenBalanceCopyWith<$Res> get balance {
    return $TokenBalanceCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value));
    });
  }
}

/// @nodoc

class _$InsufficientBalanceImpl implements _InsufficientBalance {
  const _$InsufficientBalanceImpl(
      {required this.balance,
      required this.requiredAmount,
      final List<TokenPackage> packages = const []})
      : _packages = packages;

  @override
  final TokenBalance balance;
  @override
  final int requiredAmount;
  final List<TokenPackage> _packages;
  @override
  @JsonKey()
  List<TokenPackage> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  String toString() {
    return 'TokenState.insufficientBalance(balance: $balance, requiredAmount: $requiredAmount, packages: $packages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsufficientBalanceImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.requiredAmount, requiredAmount) ||
                other.requiredAmount == requiredAmount) &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance, requiredAmount,
      const DeepCollectionEquality().hash(_packages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsufficientBalanceImplCopyWith<_$InsufficientBalanceImpl> get copyWith =>
      __$$InsufficientBalanceImplCopyWithImpl<_$InsufficientBalanceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)
        loaded,
    required TResult Function(String message, TokenBalance? lastKnownBalance)
        error,
    required TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)
        insufficientBalance,
  }) {
    return insufficientBalance(balance, requiredAmount, packages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult? Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult? Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
  }) {
    return insufficientBalance?.call(balance, requiredAmount, packages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenBalance balance, List<TokenPackage> packages,
            bool isRefreshing)?
        loaded,
    TResult Function(String message, TokenBalance? lastKnownBalance)? error,
    TResult Function(TokenBalance balance, int requiredAmount,
            List<TokenPackage> packages)?
        insufficientBalance,
    required TResult orElse(),
  }) {
    if (insufficientBalance != null) {
      return insufficientBalance(balance, requiredAmount, packages);
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
    required TResult Function(_InsufficientBalance value) insufficientBalance,
  }) {
    return insufficientBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_InsufficientBalance value)? insufficientBalance,
  }) {
    return insufficientBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_InsufficientBalance value)? insufficientBalance,
    required TResult orElse(),
  }) {
    if (insufficientBalance != null) {
      return insufficientBalance(this);
    }
    return orElse();
  }
}

abstract class _InsufficientBalance implements TokenState {
  const factory _InsufficientBalance(
      {required final TokenBalance balance,
      required final int requiredAmount,
      final List<TokenPackage> packages}) = _$InsufficientBalanceImpl;

  TokenBalance get balance;
  int get requiredAmount;
  List<TokenPackage> get packages;
  @JsonKey(ignore: true)
  _$$InsufficientBalanceImplCopyWith<_$InsufficientBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
