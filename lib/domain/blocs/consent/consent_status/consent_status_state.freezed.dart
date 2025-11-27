// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consent_status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConsentStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() acceptingTerms,
    required TResult Function() termsAccepted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acceptingTerms,
    TResult? Function()? termsAccepted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? acceptingTerms,
    TResult Function()? termsAccepted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AcceptingTerms value) acceptingTerms,
    required TResult Function(_TermsAccepted value) termsAccepted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AcceptingTerms value)? acceptingTerms,
    TResult? Function(_TermsAccepted value)? termsAccepted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AcceptingTerms value)? acceptingTerms,
    TResult Function(_TermsAccepted value)? termsAccepted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsentStatusStateCopyWith<$Res> {
  factory $ConsentStatusStateCopyWith(
          ConsentStatusState value, $Res Function(ConsentStatusState) then) =
      _$ConsentStatusStateCopyWithImpl<$Res, ConsentStatusState>;
}

/// @nodoc
class _$ConsentStatusStateCopyWithImpl<$Res, $Val extends ConsentStatusState>
    implements $ConsentStatusStateCopyWith<$Res> {
  _$ConsentStatusStateCopyWithImpl(this._value, this._then);

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
    extends _$ConsentStatusStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ConsentStatusState.initial()';
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
    required TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() acceptingTerms,
    required TResult Function() termsAccepted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acceptingTerms,
    TResult? Function()? termsAccepted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? acceptingTerms,
    TResult Function()? termsAccepted,
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
    required TResult Function(_AcceptingTerms value) acceptingTerms,
    required TResult Function(_TermsAccepted value) termsAccepted,
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
    TResult? Function(_AcceptingTerms value)? acceptingTerms,
    TResult? Function(_TermsAccepted value)? termsAccepted,
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
    TResult Function(_AcceptingTerms value)? acceptingTerms,
    TResult Function(_TermsAccepted value)? termsAccepted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConsentStatusState {
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
    extends _$ConsentStatusStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ConsentStatusState.loading()';
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
    required TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() acceptingTerms,
    required TResult Function() termsAccepted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acceptingTerms,
    TResult? Function()? termsAccepted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? acceptingTerms,
    TResult Function()? termsAccepted,
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
    required TResult Function(_AcceptingTerms value) acceptingTerms,
    required TResult Function(_TermsAccepted value) termsAccepted,
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
    TResult? Function(_AcceptingTerms value)? acceptingTerms,
    TResult? Function(_TermsAccepted value)? termsAccepted,
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
    TResult Function(_AcceptingTerms value)? acceptingTerms,
    TResult Function(_TermsAccepted value)? termsAccepted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ConsentStatusState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String eventId,
      bool hasSigned,
      String? signedAt,
      String? templateTitle});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ConsentStatusStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? hasSigned = null,
    Object? signedAt = freezed,
    Object? templateTitle = freezed,
  }) {
    return _then(_$LoadedImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      hasSigned: null == hasSigned
          ? _value.hasSigned
          : hasSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      signedAt: freezed == signedAt
          ? _value.signedAt
          : signedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      templateTitle: freezed == templateTitle
          ? _value.templateTitle
          : templateTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.eventId,
      required this.hasSigned,
      this.signedAt,
      this.templateTitle});

  @override
  final String eventId;
  @override
  final bool hasSigned;
  @override
  final String? signedAt;
  @override
  final String? templateTitle;

  @override
  String toString() {
    return 'ConsentStatusState.loaded(eventId: $eventId, hasSigned: $hasSigned, signedAt: $signedAt, templateTitle: $templateTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.hasSigned, hasSigned) ||
                other.hasSigned == hasSigned) &&
            (identical(other.signedAt, signedAt) ||
                other.signedAt == signedAt) &&
            (identical(other.templateTitle, templateTitle) ||
                other.templateTitle == templateTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, eventId, hasSigned, signedAt, templateTitle);

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
    required TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() acceptingTerms,
    required TResult Function() termsAccepted,
  }) {
    return loaded(eventId, hasSigned, signedAt, templateTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acceptingTerms,
    TResult? Function()? termsAccepted,
  }) {
    return loaded?.call(eventId, hasSigned, signedAt, templateTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? acceptingTerms,
    TResult Function()? termsAccepted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(eventId, hasSigned, signedAt, templateTitle);
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
    required TResult Function(_AcceptingTerms value) acceptingTerms,
    required TResult Function(_TermsAccepted value) termsAccepted,
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
    TResult? Function(_AcceptingTerms value)? acceptingTerms,
    TResult? Function(_TermsAccepted value)? termsAccepted,
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
    TResult Function(_AcceptingTerms value)? acceptingTerms,
    TResult Function(_TermsAccepted value)? termsAccepted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ConsentStatusState {
  const factory _Loaded(
      {required final String eventId,
      required final bool hasSigned,
      final String? signedAt,
      final String? templateTitle}) = _$LoadedImpl;

  String get eventId;
  bool get hasSigned;
  String? get signedAt;
  String? get templateTitle;
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
    extends _$ConsentStatusStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ConsentStatusState.error(message: $message)';
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
    required TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() acceptingTerms,
    required TResult Function() termsAccepted,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acceptingTerms,
    TResult? Function()? termsAccepted,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? acceptingTerms,
    TResult Function()? termsAccepted,
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
    required TResult Function(_AcceptingTerms value) acceptingTerms,
    required TResult Function(_TermsAccepted value) termsAccepted,
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
    TResult? Function(_AcceptingTerms value)? acceptingTerms,
    TResult? Function(_TermsAccepted value)? termsAccepted,
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
    TResult Function(_AcceptingTerms value)? acceptingTerms,
    TResult Function(_TermsAccepted value)? termsAccepted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ConsentStatusState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcceptingTermsImplCopyWith<$Res> {
  factory _$$AcceptingTermsImplCopyWith(_$AcceptingTermsImpl value,
          $Res Function(_$AcceptingTermsImpl) then) =
      __$$AcceptingTermsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptingTermsImplCopyWithImpl<$Res>
    extends _$ConsentStatusStateCopyWithImpl<$Res, _$AcceptingTermsImpl>
    implements _$$AcceptingTermsImplCopyWith<$Res> {
  __$$AcceptingTermsImplCopyWithImpl(
      _$AcceptingTermsImpl _value, $Res Function(_$AcceptingTermsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptingTermsImpl implements _AcceptingTerms {
  const _$AcceptingTermsImpl();

  @override
  String toString() {
    return 'ConsentStatusState.acceptingTerms()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptingTermsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() acceptingTerms,
    required TResult Function() termsAccepted,
  }) {
    return acceptingTerms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acceptingTerms,
    TResult? Function()? termsAccepted,
  }) {
    return acceptingTerms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? acceptingTerms,
    TResult Function()? termsAccepted,
    required TResult orElse(),
  }) {
    if (acceptingTerms != null) {
      return acceptingTerms();
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
    required TResult Function(_AcceptingTerms value) acceptingTerms,
    required TResult Function(_TermsAccepted value) termsAccepted,
  }) {
    return acceptingTerms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AcceptingTerms value)? acceptingTerms,
    TResult? Function(_TermsAccepted value)? termsAccepted,
  }) {
    return acceptingTerms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AcceptingTerms value)? acceptingTerms,
    TResult Function(_TermsAccepted value)? termsAccepted,
    required TResult orElse(),
  }) {
    if (acceptingTerms != null) {
      return acceptingTerms(this);
    }
    return orElse();
  }
}

abstract class _AcceptingTerms implements ConsentStatusState {
  const factory _AcceptingTerms() = _$AcceptingTermsImpl;
}

/// @nodoc
abstract class _$$TermsAcceptedImplCopyWith<$Res> {
  factory _$$TermsAcceptedImplCopyWith(
          _$TermsAcceptedImpl value, $Res Function(_$TermsAcceptedImpl) then) =
      __$$TermsAcceptedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TermsAcceptedImplCopyWithImpl<$Res>
    extends _$ConsentStatusStateCopyWithImpl<$Res, _$TermsAcceptedImpl>
    implements _$$TermsAcceptedImplCopyWith<$Res> {
  __$$TermsAcceptedImplCopyWithImpl(
      _$TermsAcceptedImpl _value, $Res Function(_$TermsAcceptedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TermsAcceptedImpl implements _TermsAccepted {
  const _$TermsAcceptedImpl();

  @override
  String toString() {
    return 'ConsentStatusState.termsAccepted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TermsAcceptedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() acceptingTerms,
    required TResult Function() termsAccepted,
  }) {
    return termsAccepted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acceptingTerms,
    TResult? Function()? termsAccepted,
  }) {
    return termsAccepted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String eventId, bool hasSigned, String? signedAt,
            String? templateTitle)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? acceptingTerms,
    TResult Function()? termsAccepted,
    required TResult orElse(),
  }) {
    if (termsAccepted != null) {
      return termsAccepted();
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
    required TResult Function(_AcceptingTerms value) acceptingTerms,
    required TResult Function(_TermsAccepted value) termsAccepted,
  }) {
    return termsAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AcceptingTerms value)? acceptingTerms,
    TResult? Function(_TermsAccepted value)? termsAccepted,
  }) {
    return termsAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AcceptingTerms value)? acceptingTerms,
    TResult Function(_TermsAccepted value)? termsAccepted,
    required TResult orElse(),
  }) {
    if (termsAccepted != null) {
      return termsAccepted(this);
    }
    return orElse();
  }
}

abstract class _TermsAccepted implements ConsentStatusState {
  const factory _TermsAccepted() = _$TermsAcceptedImpl;
}
