// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_reactivation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountReactivationState {
  VerificationMethod get selectedMethod => throw _privateConstructorUsedError;
  ReactivationStatus get status => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;
  String? get identifierError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get verificationCode => throw _privateConstructorUsedError;
  String? get validatedUserId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountReactivationStateCopyWith<AccountReactivationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountReactivationStateCopyWith<$Res> {
  factory $AccountReactivationStateCopyWith(AccountReactivationState value,
          $Res Function(AccountReactivationState) then) =
      _$AccountReactivationStateCopyWithImpl<$Res, AccountReactivationState>;
  @useResult
  $Res call(
      {VerificationMethod selectedMethod,
      ReactivationStatus status,
      String identifier,
      String? identifierError,
      String? errorMessage,
      String? verificationCode,
      String? validatedUserId,
      bool isLoading});
}

/// @nodoc
class _$AccountReactivationStateCopyWithImpl<$Res,
        $Val extends AccountReactivationState>
    implements $AccountReactivationStateCopyWith<$Res> {
  _$AccountReactivationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMethod = null,
    Object? status = null,
    Object? identifier = null,
    Object? identifierError = freezed,
    Object? errorMessage = freezed,
    Object? verificationCode = freezed,
    Object? validatedUserId = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      selectedMethod: null == selectedMethod
          ? _value.selectedMethod
          : selectedMethod // ignore: cast_nullable_to_non_nullable
              as VerificationMethod,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReactivationStatus,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      identifierError: freezed == identifierError
          ? _value.identifierError
          : identifierError // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationCode: freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      validatedUserId: freezed == validatedUserId
          ? _value.validatedUserId
          : validatedUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountReactivationStateImplCopyWith<$Res>
    implements $AccountReactivationStateCopyWith<$Res> {
  factory _$$AccountReactivationStateImplCopyWith(
          _$AccountReactivationStateImpl value,
          $Res Function(_$AccountReactivationStateImpl) then) =
      __$$AccountReactivationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VerificationMethod selectedMethod,
      ReactivationStatus status,
      String identifier,
      String? identifierError,
      String? errorMessage,
      String? verificationCode,
      String? validatedUserId,
      bool isLoading});
}

/// @nodoc
class __$$AccountReactivationStateImplCopyWithImpl<$Res>
    extends _$AccountReactivationStateCopyWithImpl<$Res,
        _$AccountReactivationStateImpl>
    implements _$$AccountReactivationStateImplCopyWith<$Res> {
  __$$AccountReactivationStateImplCopyWithImpl(
      _$AccountReactivationStateImpl _value,
      $Res Function(_$AccountReactivationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMethod = null,
    Object? status = null,
    Object? identifier = null,
    Object? identifierError = freezed,
    Object? errorMessage = freezed,
    Object? verificationCode = freezed,
    Object? validatedUserId = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$AccountReactivationStateImpl(
      selectedMethod: null == selectedMethod
          ? _value.selectedMethod
          : selectedMethod // ignore: cast_nullable_to_non_nullable
              as VerificationMethod,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReactivationStatus,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      identifierError: freezed == identifierError
          ? _value.identifierError
          : identifierError // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationCode: freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      validatedUserId: freezed == validatedUserId
          ? _value.validatedUserId
          : validatedUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AccountReactivationStateImpl extends _AccountReactivationState {
  const _$AccountReactivationStateImpl(
      {this.selectedMethod = VerificationMethod.none,
      this.status = ReactivationStatus.initial,
      this.identifier = '',
      this.identifierError,
      this.errorMessage,
      this.verificationCode,
      this.validatedUserId,
      this.isLoading = false})
      : super._();

  @override
  @JsonKey()
  final VerificationMethod selectedMethod;
  @override
  @JsonKey()
  final ReactivationStatus status;
  @override
  @JsonKey()
  final String identifier;
  @override
  final String? identifierError;
  @override
  final String? errorMessage;
  @override
  final String? verificationCode;
  @override
  final String? validatedUserId;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AccountReactivationState(selectedMethod: $selectedMethod, status: $status, identifier: $identifier, identifierError: $identifierError, errorMessage: $errorMessage, verificationCode: $verificationCode, validatedUserId: $validatedUserId, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountReactivationStateImpl &&
            (identical(other.selectedMethod, selectedMethod) ||
                other.selectedMethod == selectedMethod) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.identifierError, identifierError) ||
                other.identifierError == identifierError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode) &&
            (identical(other.validatedUserId, validatedUserId) ||
                other.validatedUserId == validatedUserId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedMethod,
      status,
      identifier,
      identifierError,
      errorMessage,
      verificationCode,
      validatedUserId,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountReactivationStateImplCopyWith<_$AccountReactivationStateImpl>
      get copyWith => __$$AccountReactivationStateImplCopyWithImpl<
          _$AccountReactivationStateImpl>(this, _$identity);
}

abstract class _AccountReactivationState extends AccountReactivationState {
  const factory _AccountReactivationState(
      {final VerificationMethod selectedMethod,
      final ReactivationStatus status,
      final String identifier,
      final String? identifierError,
      final String? errorMessage,
      final String? verificationCode,
      final String? validatedUserId,
      final bool isLoading}) = _$AccountReactivationStateImpl;
  const _AccountReactivationState._() : super._();

  @override
  VerificationMethod get selectedMethod;
  @override
  ReactivationStatus get status;
  @override
  String get identifier;
  @override
  String? get identifierError;
  @override
  String? get errorMessage;
  @override
  String? get verificationCode;
  @override
  String? get validatedUserId;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$AccountReactivationStateImplCopyWith<_$AccountReactivationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountReactivationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerificationMethod method) selectMethod,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function() sendCode,
    required TResult Function(String code) verifyCode,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerificationMethod method)? selectMethod,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function()? sendCode,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerificationMethod method)? selectMethod,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function()? sendCode,
    TResult Function(String code)? verifyCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectVerificationMethodEvent value) selectMethod,
    required TResult Function(UpdateIdentifierEvent value) updateIdentifier,
    required TResult Function(SendVerificationCodeEvent value) sendCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(ResetReactivationEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult? Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult? Function(SendVerificationCodeEvent value)? sendCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(ResetReactivationEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult Function(SendVerificationCodeEvent value)? sendCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(ResetReactivationEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountReactivationEventCopyWith<$Res> {
  factory $AccountReactivationEventCopyWith(AccountReactivationEvent value,
          $Res Function(AccountReactivationEvent) then) =
      _$AccountReactivationEventCopyWithImpl<$Res, AccountReactivationEvent>;
}

/// @nodoc
class _$AccountReactivationEventCopyWithImpl<$Res,
        $Val extends AccountReactivationEvent>
    implements $AccountReactivationEventCopyWith<$Res> {
  _$AccountReactivationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectVerificationMethodEventImplCopyWith<$Res> {
  factory _$$SelectVerificationMethodEventImplCopyWith(
          _$SelectVerificationMethodEventImpl value,
          $Res Function(_$SelectVerificationMethodEventImpl) then) =
      __$$SelectVerificationMethodEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerificationMethod method});
}

/// @nodoc
class __$$SelectVerificationMethodEventImplCopyWithImpl<$Res>
    extends _$AccountReactivationEventCopyWithImpl<$Res,
        _$SelectVerificationMethodEventImpl>
    implements _$$SelectVerificationMethodEventImplCopyWith<$Res> {
  __$$SelectVerificationMethodEventImplCopyWithImpl(
      _$SelectVerificationMethodEventImpl _value,
      $Res Function(_$SelectVerificationMethodEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
  }) {
    return _then(_$SelectVerificationMethodEventImpl(
      null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as VerificationMethod,
    ));
  }
}

/// @nodoc

class _$SelectVerificationMethodEventImpl
    implements SelectVerificationMethodEvent {
  const _$SelectVerificationMethodEventImpl(this.method);

  @override
  final VerificationMethod method;

  @override
  String toString() {
    return 'AccountReactivationEvent.selectMethod(method: $method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectVerificationMethodEventImpl &&
            (identical(other.method, method) || other.method == method));
  }

  @override
  int get hashCode => Object.hash(runtimeType, method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectVerificationMethodEventImplCopyWith<
          _$SelectVerificationMethodEventImpl>
      get copyWith => __$$SelectVerificationMethodEventImplCopyWithImpl<
          _$SelectVerificationMethodEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerificationMethod method) selectMethod,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function() sendCode,
    required TResult Function(String code) verifyCode,
    required TResult Function() reset,
  }) {
    return selectMethod(method);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerificationMethod method)? selectMethod,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function()? sendCode,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? reset,
  }) {
    return selectMethod?.call(method);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerificationMethod method)? selectMethod,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function()? sendCode,
    TResult Function(String code)? verifyCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (selectMethod != null) {
      return selectMethod(method);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectVerificationMethodEvent value) selectMethod,
    required TResult Function(UpdateIdentifierEvent value) updateIdentifier,
    required TResult Function(SendVerificationCodeEvent value) sendCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(ResetReactivationEvent value) reset,
  }) {
    return selectMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult? Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult? Function(SendVerificationCodeEvent value)? sendCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(ResetReactivationEvent value)? reset,
  }) {
    return selectMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult Function(SendVerificationCodeEvent value)? sendCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(ResetReactivationEvent value)? reset,
    required TResult orElse(),
  }) {
    if (selectMethod != null) {
      return selectMethod(this);
    }
    return orElse();
  }
}

abstract class SelectVerificationMethodEvent
    implements AccountReactivationEvent {
  const factory SelectVerificationMethodEvent(final VerificationMethod method) =
      _$SelectVerificationMethodEventImpl;

  VerificationMethod get method;
  @JsonKey(ignore: true)
  _$$SelectVerificationMethodEventImplCopyWith<
          _$SelectVerificationMethodEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateIdentifierEventImplCopyWith<$Res> {
  factory _$$UpdateIdentifierEventImplCopyWith(
          _$UpdateIdentifierEventImpl value,
          $Res Function(_$UpdateIdentifierEventImpl) then) =
      __$$UpdateIdentifierEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class __$$UpdateIdentifierEventImplCopyWithImpl<$Res>
    extends _$AccountReactivationEventCopyWithImpl<$Res,
        _$UpdateIdentifierEventImpl>
    implements _$$UpdateIdentifierEventImplCopyWith<$Res> {
  __$$UpdateIdentifierEventImplCopyWithImpl(_$UpdateIdentifierEventImpl _value,
      $Res Function(_$UpdateIdentifierEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_$UpdateIdentifierEventImpl(
      null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateIdentifierEventImpl implements UpdateIdentifierEvent {
  const _$UpdateIdentifierEventImpl(this.identifier);

  @override
  final String identifier;

  @override
  String toString() {
    return 'AccountReactivationEvent.updateIdentifier(identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIdentifierEventImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIdentifierEventImplCopyWith<_$UpdateIdentifierEventImpl>
      get copyWith => __$$UpdateIdentifierEventImplCopyWithImpl<
          _$UpdateIdentifierEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerificationMethod method) selectMethod,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function() sendCode,
    required TResult Function(String code) verifyCode,
    required TResult Function() reset,
  }) {
    return updateIdentifier(identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerificationMethod method)? selectMethod,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function()? sendCode,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? reset,
  }) {
    return updateIdentifier?.call(identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerificationMethod method)? selectMethod,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function()? sendCode,
    TResult Function(String code)? verifyCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (updateIdentifier != null) {
      return updateIdentifier(identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectVerificationMethodEvent value) selectMethod,
    required TResult Function(UpdateIdentifierEvent value) updateIdentifier,
    required TResult Function(SendVerificationCodeEvent value) sendCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(ResetReactivationEvent value) reset,
  }) {
    return updateIdentifier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult? Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult? Function(SendVerificationCodeEvent value)? sendCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(ResetReactivationEvent value)? reset,
  }) {
    return updateIdentifier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult Function(SendVerificationCodeEvent value)? sendCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(ResetReactivationEvent value)? reset,
    required TResult orElse(),
  }) {
    if (updateIdentifier != null) {
      return updateIdentifier(this);
    }
    return orElse();
  }
}

abstract class UpdateIdentifierEvent implements AccountReactivationEvent {
  const factory UpdateIdentifierEvent(final String identifier) =
      _$UpdateIdentifierEventImpl;

  String get identifier;
  @JsonKey(ignore: true)
  _$$UpdateIdentifierEventImplCopyWith<_$UpdateIdentifierEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendVerificationCodeEventImplCopyWith<$Res> {
  factory _$$SendVerificationCodeEventImplCopyWith(
          _$SendVerificationCodeEventImpl value,
          $Res Function(_$SendVerificationCodeEventImpl) then) =
      __$$SendVerificationCodeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendVerificationCodeEventImplCopyWithImpl<$Res>
    extends _$AccountReactivationEventCopyWithImpl<$Res,
        _$SendVerificationCodeEventImpl>
    implements _$$SendVerificationCodeEventImplCopyWith<$Res> {
  __$$SendVerificationCodeEventImplCopyWithImpl(
      _$SendVerificationCodeEventImpl _value,
      $Res Function(_$SendVerificationCodeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendVerificationCodeEventImpl implements SendVerificationCodeEvent {
  const _$SendVerificationCodeEventImpl();

  @override
  String toString() {
    return 'AccountReactivationEvent.sendCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendVerificationCodeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerificationMethod method) selectMethod,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function() sendCode,
    required TResult Function(String code) verifyCode,
    required TResult Function() reset,
  }) {
    return sendCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerificationMethod method)? selectMethod,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function()? sendCode,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? reset,
  }) {
    return sendCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerificationMethod method)? selectMethod,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function()? sendCode,
    TResult Function(String code)? verifyCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectVerificationMethodEvent value) selectMethod,
    required TResult Function(UpdateIdentifierEvent value) updateIdentifier,
    required TResult Function(SendVerificationCodeEvent value) sendCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(ResetReactivationEvent value) reset,
  }) {
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult? Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult? Function(SendVerificationCodeEvent value)? sendCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(ResetReactivationEvent value)? reset,
  }) {
    return sendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult Function(SendVerificationCodeEvent value)? sendCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(ResetReactivationEvent value)? reset,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class SendVerificationCodeEvent implements AccountReactivationEvent {
  const factory SendVerificationCodeEvent() = _$SendVerificationCodeEventImpl;
}

/// @nodoc
abstract class _$$VerifyCodeEventImplCopyWith<$Res> {
  factory _$$VerifyCodeEventImplCopyWith(_$VerifyCodeEventImpl value,
          $Res Function(_$VerifyCodeEventImpl) then) =
      __$$VerifyCodeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$VerifyCodeEventImplCopyWithImpl<$Res>
    extends _$AccountReactivationEventCopyWithImpl<$Res, _$VerifyCodeEventImpl>
    implements _$$VerifyCodeEventImplCopyWith<$Res> {
  __$$VerifyCodeEventImplCopyWithImpl(
      _$VerifyCodeEventImpl _value, $Res Function(_$VerifyCodeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$VerifyCodeEventImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyCodeEventImpl implements VerifyCodeEvent {
  const _$VerifyCodeEventImpl(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'AccountReactivationEvent.verifyCode(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCodeEventImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCodeEventImplCopyWith<_$VerifyCodeEventImpl> get copyWith =>
      __$$VerifyCodeEventImplCopyWithImpl<_$VerifyCodeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerificationMethod method) selectMethod,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function() sendCode,
    required TResult Function(String code) verifyCode,
    required TResult Function() reset,
  }) {
    return verifyCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerificationMethod method)? selectMethod,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function()? sendCode,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? reset,
  }) {
    return verifyCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerificationMethod method)? selectMethod,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function()? sendCode,
    TResult Function(String code)? verifyCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectVerificationMethodEvent value) selectMethod,
    required TResult Function(UpdateIdentifierEvent value) updateIdentifier,
    required TResult Function(SendVerificationCodeEvent value) sendCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(ResetReactivationEvent value) reset,
  }) {
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult? Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult? Function(SendVerificationCodeEvent value)? sendCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(ResetReactivationEvent value)? reset,
  }) {
    return verifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult Function(SendVerificationCodeEvent value)? sendCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(ResetReactivationEvent value)? reset,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class VerifyCodeEvent implements AccountReactivationEvent {
  const factory VerifyCodeEvent(final String code) = _$VerifyCodeEventImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$VerifyCodeEventImplCopyWith<_$VerifyCodeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetReactivationEventImplCopyWith<$Res> {
  factory _$$ResetReactivationEventImplCopyWith(
          _$ResetReactivationEventImpl value,
          $Res Function(_$ResetReactivationEventImpl) then) =
      __$$ResetReactivationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetReactivationEventImplCopyWithImpl<$Res>
    extends _$AccountReactivationEventCopyWithImpl<$Res,
        _$ResetReactivationEventImpl>
    implements _$$ResetReactivationEventImplCopyWith<$Res> {
  __$$ResetReactivationEventImplCopyWithImpl(
      _$ResetReactivationEventImpl _value,
      $Res Function(_$ResetReactivationEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetReactivationEventImpl implements ResetReactivationEvent {
  const _$ResetReactivationEventImpl();

  @override
  String toString() {
    return 'AccountReactivationEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetReactivationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerificationMethod method) selectMethod,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function() sendCode,
    required TResult Function(String code) verifyCode,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerificationMethod method)? selectMethod,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function()? sendCode,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerificationMethod method)? selectMethod,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function()? sendCode,
    TResult Function(String code)? verifyCode,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectVerificationMethodEvent value) selectMethod,
    required TResult Function(UpdateIdentifierEvent value) updateIdentifier,
    required TResult Function(SendVerificationCodeEvent value) sendCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(ResetReactivationEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult? Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult? Function(SendVerificationCodeEvent value)? sendCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(ResetReactivationEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectVerificationMethodEvent value)? selectMethod,
    TResult Function(UpdateIdentifierEvent value)? updateIdentifier,
    TResult Function(SendVerificationCodeEvent value)? sendCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(ResetReactivationEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetReactivationEvent implements AccountReactivationEvent {
  const factory ResetReactivationEvent() = _$ResetReactivationEventImpl;
}
