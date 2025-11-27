// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_consent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignedConsentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loaded,
    required TResult Function(String eventId, String userId)
        loadRequiredConsentsForEvent,
    required TResult Function(String eventId, String? userId)
        loadSignedConsentsForEvent,
    required TResult Function(SignConsentDto dto) signConsent,
    required TResult Function(String eventId, String userId) checkConsentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loaded,
    TResult? Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult? Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult? Function(SignConsentDto dto)? signConsent,
    TResult? Function(String eventId, String userId)? checkConsentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loaded,
    TResult Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult Function(SignConsentDto dto)? signConsent,
    TResult Function(String eventId, String userId)? checkConsentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadRequiredConsentsForEvent value)
        loadRequiredConsentsForEvent,
    required TResult Function(_LoadSignedConsentsForEvent value)
        loadSignedConsentsForEvent,
    required TResult Function(_SignConsent value) signConsent,
    required TResult Function(_CheckConsentStatus value) checkConsentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult? Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult? Function(_SignConsent value)? signConsent,
    TResult? Function(_CheckConsentStatus value)? checkConsentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult Function(_SignConsent value)? signConsent,
    TResult Function(_CheckConsentStatus value)? checkConsentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignedConsentEventCopyWith<$Res> {
  factory $SignedConsentEventCopyWith(
          SignedConsentEvent value, $Res Function(SignedConsentEvent) then) =
      _$SignedConsentEventCopyWithImpl<$Res, SignedConsentEvent>;
}

/// @nodoc
class _$SignedConsentEventCopyWithImpl<$Res, $Val extends SignedConsentEvent>
    implements $SignedConsentEventCopyWith<$Res> {
  _$SignedConsentEventCopyWithImpl(this._value, this._then);

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
    extends _$SignedConsentEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SignedConsentEvent.started()';
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
    required TResult Function() loaded,
    required TResult Function(String eventId, String userId)
        loadRequiredConsentsForEvent,
    required TResult Function(String eventId, String? userId)
        loadSignedConsentsForEvent,
    required TResult Function(SignConsentDto dto) signConsent,
    required TResult Function(String eventId, String userId) checkConsentStatus,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loaded,
    TResult? Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult? Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult? Function(SignConsentDto dto)? signConsent,
    TResult? Function(String eventId, String userId)? checkConsentStatus,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loaded,
    TResult Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult Function(SignConsentDto dto)? signConsent,
    TResult Function(String eventId, String userId)? checkConsentStatus,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadRequiredConsentsForEvent value)
        loadRequiredConsentsForEvent,
    required TResult Function(_LoadSignedConsentsForEvent value)
        loadSignedConsentsForEvent,
    required TResult Function(_SignConsent value) signConsent,
    required TResult Function(_CheckConsentStatus value) checkConsentStatus,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult? Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult? Function(_SignConsent value)? signConsent,
    TResult? Function(_CheckConsentStatus value)? checkConsentStatus,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult Function(_SignConsent value)? signConsent,
    TResult Function(_CheckConsentStatus value)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignedConsentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SignedConsentEventCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'SignedConsentEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loaded,
    required TResult Function(String eventId, String userId)
        loadRequiredConsentsForEvent,
    required TResult Function(String eventId, String? userId)
        loadSignedConsentsForEvent,
    required TResult Function(SignConsentDto dto) signConsent,
    required TResult Function(String eventId, String userId) checkConsentStatus,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loaded,
    TResult? Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult? Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult? Function(SignConsentDto dto)? signConsent,
    TResult? Function(String eventId, String userId)? checkConsentStatus,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loaded,
    TResult Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult Function(SignConsentDto dto)? signConsent,
    TResult Function(String eventId, String userId)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadRequiredConsentsForEvent value)
        loadRequiredConsentsForEvent,
    required TResult Function(_LoadSignedConsentsForEvent value)
        loadSignedConsentsForEvent,
    required TResult Function(_SignConsent value) signConsent,
    required TResult Function(_CheckConsentStatus value) checkConsentStatus,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult? Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult? Function(_SignConsent value)? signConsent,
    TResult? Function(_CheckConsentStatus value)? checkConsentStatus,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult Function(_SignConsent value)? signConsent,
    TResult Function(_CheckConsentStatus value)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SignedConsentEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$LoadRequiredConsentsForEventImplCopyWith<$Res> {
  factory _$$LoadRequiredConsentsForEventImplCopyWith(
          _$LoadRequiredConsentsForEventImpl value,
          $Res Function(_$LoadRequiredConsentsForEventImpl) then) =
      __$$LoadRequiredConsentsForEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, String userId});
}

/// @nodoc
class __$$LoadRequiredConsentsForEventImplCopyWithImpl<$Res>
    extends _$SignedConsentEventCopyWithImpl<$Res,
        _$LoadRequiredConsentsForEventImpl>
    implements _$$LoadRequiredConsentsForEventImplCopyWith<$Res> {
  __$$LoadRequiredConsentsForEventImplCopyWithImpl(
      _$LoadRequiredConsentsForEventImpl _value,
      $Res Function(_$LoadRequiredConsentsForEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$LoadRequiredConsentsForEventImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadRequiredConsentsForEventImpl
    implements _LoadRequiredConsentsForEvent {
  const _$LoadRequiredConsentsForEventImpl(this.eventId, this.userId);

  @override
  final String eventId;
  @override
  final String userId;

  @override
  String toString() {
    return 'SignedConsentEvent.loadRequiredConsentsForEvent(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRequiredConsentsForEventImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadRequiredConsentsForEventImplCopyWith<
          _$LoadRequiredConsentsForEventImpl>
      get copyWith => __$$LoadRequiredConsentsForEventImplCopyWithImpl<
          _$LoadRequiredConsentsForEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loaded,
    required TResult Function(String eventId, String userId)
        loadRequiredConsentsForEvent,
    required TResult Function(String eventId, String? userId)
        loadSignedConsentsForEvent,
    required TResult Function(SignConsentDto dto) signConsent,
    required TResult Function(String eventId, String userId) checkConsentStatus,
  }) {
    return loadRequiredConsentsForEvent(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loaded,
    TResult? Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult? Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult? Function(SignConsentDto dto)? signConsent,
    TResult? Function(String eventId, String userId)? checkConsentStatus,
  }) {
    return loadRequiredConsentsForEvent?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loaded,
    TResult Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult Function(SignConsentDto dto)? signConsent,
    TResult Function(String eventId, String userId)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (loadRequiredConsentsForEvent != null) {
      return loadRequiredConsentsForEvent(eventId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadRequiredConsentsForEvent value)
        loadRequiredConsentsForEvent,
    required TResult Function(_LoadSignedConsentsForEvent value)
        loadSignedConsentsForEvent,
    required TResult Function(_SignConsent value) signConsent,
    required TResult Function(_CheckConsentStatus value) checkConsentStatus,
  }) {
    return loadRequiredConsentsForEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult? Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult? Function(_SignConsent value)? signConsent,
    TResult? Function(_CheckConsentStatus value)? checkConsentStatus,
  }) {
    return loadRequiredConsentsForEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult Function(_SignConsent value)? signConsent,
    TResult Function(_CheckConsentStatus value)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (loadRequiredConsentsForEvent != null) {
      return loadRequiredConsentsForEvent(this);
    }
    return orElse();
  }
}

abstract class _LoadRequiredConsentsForEvent implements SignedConsentEvent {
  const factory _LoadRequiredConsentsForEvent(
          final String eventId, final String userId) =
      _$LoadRequiredConsentsForEventImpl;

  String get eventId;
  String get userId;
  @JsonKey(ignore: true)
  _$$LoadRequiredConsentsForEventImplCopyWith<
          _$LoadRequiredConsentsForEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSignedConsentsForEventImplCopyWith<$Res> {
  factory _$$LoadSignedConsentsForEventImplCopyWith(
          _$LoadSignedConsentsForEventImpl value,
          $Res Function(_$LoadSignedConsentsForEventImpl) then) =
      __$$LoadSignedConsentsForEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, String? userId});
}

/// @nodoc
class __$$LoadSignedConsentsForEventImplCopyWithImpl<$Res>
    extends _$SignedConsentEventCopyWithImpl<$Res,
        _$LoadSignedConsentsForEventImpl>
    implements _$$LoadSignedConsentsForEventImplCopyWith<$Res> {
  __$$LoadSignedConsentsForEventImplCopyWithImpl(
      _$LoadSignedConsentsForEventImpl _value,
      $Res Function(_$LoadSignedConsentsForEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = freezed,
  }) {
    return _then(_$LoadSignedConsentsForEventImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadSignedConsentsForEventImpl implements _LoadSignedConsentsForEvent {
  const _$LoadSignedConsentsForEventImpl(this.eventId, {this.userId});

  @override
  final String eventId;
  @override
  final String? userId;

  @override
  String toString() {
    return 'SignedConsentEvent.loadSignedConsentsForEvent(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSignedConsentsForEventImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSignedConsentsForEventImplCopyWith<_$LoadSignedConsentsForEventImpl>
      get copyWith => __$$LoadSignedConsentsForEventImplCopyWithImpl<
          _$LoadSignedConsentsForEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loaded,
    required TResult Function(String eventId, String userId)
        loadRequiredConsentsForEvent,
    required TResult Function(String eventId, String? userId)
        loadSignedConsentsForEvent,
    required TResult Function(SignConsentDto dto) signConsent,
    required TResult Function(String eventId, String userId) checkConsentStatus,
  }) {
    return loadSignedConsentsForEvent(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loaded,
    TResult? Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult? Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult? Function(SignConsentDto dto)? signConsent,
    TResult? Function(String eventId, String userId)? checkConsentStatus,
  }) {
    return loadSignedConsentsForEvent?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loaded,
    TResult Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult Function(SignConsentDto dto)? signConsent,
    TResult Function(String eventId, String userId)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (loadSignedConsentsForEvent != null) {
      return loadSignedConsentsForEvent(eventId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadRequiredConsentsForEvent value)
        loadRequiredConsentsForEvent,
    required TResult Function(_LoadSignedConsentsForEvent value)
        loadSignedConsentsForEvent,
    required TResult Function(_SignConsent value) signConsent,
    required TResult Function(_CheckConsentStatus value) checkConsentStatus,
  }) {
    return loadSignedConsentsForEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult? Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult? Function(_SignConsent value)? signConsent,
    TResult? Function(_CheckConsentStatus value)? checkConsentStatus,
  }) {
    return loadSignedConsentsForEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult Function(_SignConsent value)? signConsent,
    TResult Function(_CheckConsentStatus value)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (loadSignedConsentsForEvent != null) {
      return loadSignedConsentsForEvent(this);
    }
    return orElse();
  }
}

abstract class _LoadSignedConsentsForEvent implements SignedConsentEvent {
  const factory _LoadSignedConsentsForEvent(final String eventId,
      {final String? userId}) = _$LoadSignedConsentsForEventImpl;

  String get eventId;
  String? get userId;
  @JsonKey(ignore: true)
  _$$LoadSignedConsentsForEventImplCopyWith<_$LoadSignedConsentsForEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignConsentImplCopyWith<$Res> {
  factory _$$SignConsentImplCopyWith(
          _$SignConsentImpl value, $Res Function(_$SignConsentImpl) then) =
      __$$SignConsentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignConsentDto dto});

  $SignConsentDtoCopyWith<$Res> get dto;
}

/// @nodoc
class __$$SignConsentImplCopyWithImpl<$Res>
    extends _$SignedConsentEventCopyWithImpl<$Res, _$SignConsentImpl>
    implements _$$SignConsentImplCopyWith<$Res> {
  __$$SignConsentImplCopyWithImpl(
      _$SignConsentImpl _value, $Res Function(_$SignConsentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$SignConsentImpl(
      null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as SignConsentDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignConsentDtoCopyWith<$Res> get dto {
    return $SignConsentDtoCopyWith<$Res>(_value.dto, (value) {
      return _then(_value.copyWith(dto: value));
    });
  }
}

/// @nodoc

class _$SignConsentImpl implements _SignConsent {
  const _$SignConsentImpl(this.dto);

  @override
  final SignConsentDto dto;

  @override
  String toString() {
    return 'SignedConsentEvent.signConsent(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignConsentImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignConsentImplCopyWith<_$SignConsentImpl> get copyWith =>
      __$$SignConsentImplCopyWithImpl<_$SignConsentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loaded,
    required TResult Function(String eventId, String userId)
        loadRequiredConsentsForEvent,
    required TResult Function(String eventId, String? userId)
        loadSignedConsentsForEvent,
    required TResult Function(SignConsentDto dto) signConsent,
    required TResult Function(String eventId, String userId) checkConsentStatus,
  }) {
    return signConsent(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loaded,
    TResult? Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult? Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult? Function(SignConsentDto dto)? signConsent,
    TResult? Function(String eventId, String userId)? checkConsentStatus,
  }) {
    return signConsent?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loaded,
    TResult Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult Function(SignConsentDto dto)? signConsent,
    TResult Function(String eventId, String userId)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (signConsent != null) {
      return signConsent(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadRequiredConsentsForEvent value)
        loadRequiredConsentsForEvent,
    required TResult Function(_LoadSignedConsentsForEvent value)
        loadSignedConsentsForEvent,
    required TResult Function(_SignConsent value) signConsent,
    required TResult Function(_CheckConsentStatus value) checkConsentStatus,
  }) {
    return signConsent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult? Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult? Function(_SignConsent value)? signConsent,
    TResult? Function(_CheckConsentStatus value)? checkConsentStatus,
  }) {
    return signConsent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult Function(_SignConsent value)? signConsent,
    TResult Function(_CheckConsentStatus value)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (signConsent != null) {
      return signConsent(this);
    }
    return orElse();
  }
}

abstract class _SignConsent implements SignedConsentEvent {
  const factory _SignConsent(final SignConsentDto dto) = _$SignConsentImpl;

  SignConsentDto get dto;
  @JsonKey(ignore: true)
  _$$SignConsentImplCopyWith<_$SignConsentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckConsentStatusImplCopyWith<$Res> {
  factory _$$CheckConsentStatusImplCopyWith(_$CheckConsentStatusImpl value,
          $Res Function(_$CheckConsentStatusImpl) then) =
      __$$CheckConsentStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, String userId});
}

/// @nodoc
class __$$CheckConsentStatusImplCopyWithImpl<$Res>
    extends _$SignedConsentEventCopyWithImpl<$Res, _$CheckConsentStatusImpl>
    implements _$$CheckConsentStatusImplCopyWith<$Res> {
  __$$CheckConsentStatusImplCopyWithImpl(_$CheckConsentStatusImpl _value,
      $Res Function(_$CheckConsentStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$CheckConsentStatusImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckConsentStatusImpl implements _CheckConsentStatus {
  const _$CheckConsentStatusImpl(this.eventId, this.userId);

  @override
  final String eventId;
  @override
  final String userId;

  @override
  String toString() {
    return 'SignedConsentEvent.checkConsentStatus(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckConsentStatusImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckConsentStatusImplCopyWith<_$CheckConsentStatusImpl> get copyWith =>
      __$$CheckConsentStatusImplCopyWithImpl<_$CheckConsentStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loaded,
    required TResult Function(String eventId, String userId)
        loadRequiredConsentsForEvent,
    required TResult Function(String eventId, String? userId)
        loadSignedConsentsForEvent,
    required TResult Function(SignConsentDto dto) signConsent,
    required TResult Function(String eventId, String userId) checkConsentStatus,
  }) {
    return checkConsentStatus(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loaded,
    TResult? Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult? Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult? Function(SignConsentDto dto)? signConsent,
    TResult? Function(String eventId, String userId)? checkConsentStatus,
  }) {
    return checkConsentStatus?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loaded,
    TResult Function(String eventId, String userId)?
        loadRequiredConsentsForEvent,
    TResult Function(String eventId, String? userId)?
        loadSignedConsentsForEvent,
    TResult Function(SignConsentDto dto)? signConsent,
    TResult Function(String eventId, String userId)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (checkConsentStatus != null) {
      return checkConsentStatus(eventId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadRequiredConsentsForEvent value)
        loadRequiredConsentsForEvent,
    required TResult Function(_LoadSignedConsentsForEvent value)
        loadSignedConsentsForEvent,
    required TResult Function(_SignConsent value) signConsent,
    required TResult Function(_CheckConsentStatus value) checkConsentStatus,
  }) {
    return checkConsentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult? Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult? Function(_SignConsent value)? signConsent,
    TResult? Function(_CheckConsentStatus value)? checkConsentStatus,
  }) {
    return checkConsentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadRequiredConsentsForEvent value)?
        loadRequiredConsentsForEvent,
    TResult Function(_LoadSignedConsentsForEvent value)?
        loadSignedConsentsForEvent,
    TResult Function(_SignConsent value)? signConsent,
    TResult Function(_CheckConsentStatus value)? checkConsentStatus,
    required TResult orElse(),
  }) {
    if (checkConsentStatus != null) {
      return checkConsentStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckConsentStatus implements SignedConsentEvent {
  const factory _CheckConsentStatus(final String eventId, final String userId) =
      _$CheckConsentStatusImpl;

  String get eventId;
  String get userId;
  @JsonKey(ignore: true)
  _$$CheckConsentStatusImplCopyWith<_$CheckConsentStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignedConsentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)
        loaded,
    required TResult Function() signingInProgress,
    required TResult Function(String message) signSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult? Function()? signingInProgress,
    TResult? Function(String message)? signSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult Function()? signingInProgress,
    TResult Function(String message)? signSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedConsentInitial value) initial,
    required TResult Function(SignedConsentLoading value) loading,
    required TResult Function(SignedConsentLoaded value) loaded,
    required TResult Function(SignedConsentSigningInProgress value)
        signingInProgress,
    required TResult Function(SignedConsentSignSuccess value) signSuccess,
    required TResult Function(SignedConsentError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedConsentInitial value)? initial,
    TResult? Function(SignedConsentLoading value)? loading,
    TResult? Function(SignedConsentLoaded value)? loaded,
    TResult? Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult? Function(SignedConsentSignSuccess value)? signSuccess,
    TResult? Function(SignedConsentError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedConsentInitial value)? initial,
    TResult Function(SignedConsentLoading value)? loading,
    TResult Function(SignedConsentLoaded value)? loaded,
    TResult Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult Function(SignedConsentSignSuccess value)? signSuccess,
    TResult Function(SignedConsentError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignedConsentStateCopyWith<$Res> {
  factory $SignedConsentStateCopyWith(
          SignedConsentState value, $Res Function(SignedConsentState) then) =
      _$SignedConsentStateCopyWithImpl<$Res, SignedConsentState>;
}

/// @nodoc
class _$SignedConsentStateCopyWithImpl<$Res, $Val extends SignedConsentState>
    implements $SignedConsentStateCopyWith<$Res> {
  _$SignedConsentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignedConsentInitialImplCopyWith<$Res> {
  factory _$$SignedConsentInitialImplCopyWith(_$SignedConsentInitialImpl value,
          $Res Function(_$SignedConsentInitialImpl) then) =
      __$$SignedConsentInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedConsentInitialImplCopyWithImpl<$Res>
    extends _$SignedConsentStateCopyWithImpl<$Res, _$SignedConsentInitialImpl>
    implements _$$SignedConsentInitialImplCopyWith<$Res> {
  __$$SignedConsentInitialImplCopyWithImpl(_$SignedConsentInitialImpl _value,
      $Res Function(_$SignedConsentInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedConsentInitialImpl implements SignedConsentInitial {
  const _$SignedConsentInitialImpl();

  @override
  String toString() {
    return 'SignedConsentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedConsentInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)
        loaded,
    required TResult Function() signingInProgress,
    required TResult Function(String message) signSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult? Function()? signingInProgress,
    TResult? Function(String message)? signSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult Function()? signingInProgress,
    TResult Function(String message)? signSuccess,
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
    required TResult Function(SignedConsentInitial value) initial,
    required TResult Function(SignedConsentLoading value) loading,
    required TResult Function(SignedConsentLoaded value) loaded,
    required TResult Function(SignedConsentSigningInProgress value)
        signingInProgress,
    required TResult Function(SignedConsentSignSuccess value) signSuccess,
    required TResult Function(SignedConsentError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedConsentInitial value)? initial,
    TResult? Function(SignedConsentLoading value)? loading,
    TResult? Function(SignedConsentLoaded value)? loaded,
    TResult? Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult? Function(SignedConsentSignSuccess value)? signSuccess,
    TResult? Function(SignedConsentError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedConsentInitial value)? initial,
    TResult Function(SignedConsentLoading value)? loading,
    TResult Function(SignedConsentLoaded value)? loaded,
    TResult Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult Function(SignedConsentSignSuccess value)? signSuccess,
    TResult Function(SignedConsentError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignedConsentInitial implements SignedConsentState {
  const factory SignedConsentInitial() = _$SignedConsentInitialImpl;
}

/// @nodoc
abstract class _$$SignedConsentLoadingImplCopyWith<$Res> {
  factory _$$SignedConsentLoadingImplCopyWith(_$SignedConsentLoadingImpl value,
          $Res Function(_$SignedConsentLoadingImpl) then) =
      __$$SignedConsentLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedConsentLoadingImplCopyWithImpl<$Res>
    extends _$SignedConsentStateCopyWithImpl<$Res, _$SignedConsentLoadingImpl>
    implements _$$SignedConsentLoadingImplCopyWith<$Res> {
  __$$SignedConsentLoadingImplCopyWithImpl(_$SignedConsentLoadingImpl _value,
      $Res Function(_$SignedConsentLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedConsentLoadingImpl implements SignedConsentLoading {
  const _$SignedConsentLoadingImpl();

  @override
  String toString() {
    return 'SignedConsentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedConsentLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)
        loaded,
    required TResult Function() signingInProgress,
    required TResult Function(String message) signSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult? Function()? signingInProgress,
    TResult? Function(String message)? signSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult Function()? signingInProgress,
    TResult Function(String message)? signSuccess,
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
    required TResult Function(SignedConsentInitial value) initial,
    required TResult Function(SignedConsentLoading value) loading,
    required TResult Function(SignedConsentLoaded value) loaded,
    required TResult Function(SignedConsentSigningInProgress value)
        signingInProgress,
    required TResult Function(SignedConsentSignSuccess value) signSuccess,
    required TResult Function(SignedConsentError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedConsentInitial value)? initial,
    TResult? Function(SignedConsentLoading value)? loading,
    TResult? Function(SignedConsentLoaded value)? loaded,
    TResult? Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult? Function(SignedConsentSignSuccess value)? signSuccess,
    TResult? Function(SignedConsentError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedConsentInitial value)? initial,
    TResult Function(SignedConsentLoading value)? loading,
    TResult Function(SignedConsentLoaded value)? loaded,
    TResult Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult Function(SignedConsentSignSuccess value)? signSuccess,
    TResult Function(SignedConsentError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignedConsentLoading implements SignedConsentState {
  const factory SignedConsentLoading() = _$SignedConsentLoadingImpl;
}

/// @nodoc
abstract class _$$SignedConsentLoadedImplCopyWith<$Res> {
  factory _$$SignedConsentLoadedImplCopyWith(_$SignedConsentLoadedImpl value,
          $Res Function(_$SignedConsentLoadedImpl) then) =
      __$$SignedConsentLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String eventId,
      String userId,
      List<FormTemplate> requiredConsents,
      List<SignedConsent> signedConsents,
      bool hasSignedAllRequired});
}

/// @nodoc
class __$$SignedConsentLoadedImplCopyWithImpl<$Res>
    extends _$SignedConsentStateCopyWithImpl<$Res, _$SignedConsentLoadedImpl>
    implements _$$SignedConsentLoadedImplCopyWith<$Res> {
  __$$SignedConsentLoadedImplCopyWithImpl(_$SignedConsentLoadedImpl _value,
      $Res Function(_$SignedConsentLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
    Object? requiredConsents = null,
    Object? signedConsents = null,
    Object? hasSignedAllRequired = null,
  }) {
    return _then(_$SignedConsentLoadedImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      requiredConsents: null == requiredConsents
          ? _value._requiredConsents
          : requiredConsents // ignore: cast_nullable_to_non_nullable
              as List<FormTemplate>,
      signedConsents: null == signedConsents
          ? _value._signedConsents
          : signedConsents // ignore: cast_nullable_to_non_nullable
              as List<SignedConsent>,
      hasSignedAllRequired: null == hasSignedAllRequired
          ? _value.hasSignedAllRequired
          : hasSignedAllRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignedConsentLoadedImpl implements SignedConsentLoaded {
  const _$SignedConsentLoadedImpl(
      {required this.eventId,
      required this.userId,
      required final List<FormTemplate> requiredConsents,
      required final List<SignedConsent> signedConsents,
      this.hasSignedAllRequired = false})
      : _requiredConsents = requiredConsents,
        _signedConsents = signedConsents;

  @override
  final String eventId;
  @override
  final String userId;
  final List<FormTemplate> _requiredConsents;
  @override
  List<FormTemplate> get requiredConsents {
    if (_requiredConsents is EqualUnmodifiableListView)
      return _requiredConsents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredConsents);
  }

  final List<SignedConsent> _signedConsents;
  @override
  List<SignedConsent> get signedConsents {
    if (_signedConsents is EqualUnmodifiableListView) return _signedConsents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signedConsents);
  }

  @override
  @JsonKey()
  final bool hasSignedAllRequired;

  @override
  String toString() {
    return 'SignedConsentState.loaded(eventId: $eventId, userId: $userId, requiredConsents: $requiredConsents, signedConsents: $signedConsents, hasSignedAllRequired: $hasSignedAllRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedConsentLoadedImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._requiredConsents, _requiredConsents) &&
            const DeepCollectionEquality()
                .equals(other._signedConsents, _signedConsents) &&
            (identical(other.hasSignedAllRequired, hasSignedAllRequired) ||
                other.hasSignedAllRequired == hasSignedAllRequired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventId,
      userId,
      const DeepCollectionEquality().hash(_requiredConsents),
      const DeepCollectionEquality().hash(_signedConsents),
      hasSignedAllRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedConsentLoadedImplCopyWith<_$SignedConsentLoadedImpl> get copyWith =>
      __$$SignedConsentLoadedImplCopyWithImpl<_$SignedConsentLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)
        loaded,
    required TResult Function() signingInProgress,
    required TResult Function(String message) signSuccess,
    required TResult Function(String message) error,
  }) {
    return loaded(eventId, userId, requiredConsents, signedConsents,
        hasSignedAllRequired);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult? Function()? signingInProgress,
    TResult? Function(String message)? signSuccess,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(eventId, userId, requiredConsents, signedConsents,
        hasSignedAllRequired);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult Function()? signingInProgress,
    TResult Function(String message)? signSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(eventId, userId, requiredConsents, signedConsents,
          hasSignedAllRequired);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedConsentInitial value) initial,
    required TResult Function(SignedConsentLoading value) loading,
    required TResult Function(SignedConsentLoaded value) loaded,
    required TResult Function(SignedConsentSigningInProgress value)
        signingInProgress,
    required TResult Function(SignedConsentSignSuccess value) signSuccess,
    required TResult Function(SignedConsentError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedConsentInitial value)? initial,
    TResult? Function(SignedConsentLoading value)? loading,
    TResult? Function(SignedConsentLoaded value)? loaded,
    TResult? Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult? Function(SignedConsentSignSuccess value)? signSuccess,
    TResult? Function(SignedConsentError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedConsentInitial value)? initial,
    TResult Function(SignedConsentLoading value)? loading,
    TResult Function(SignedConsentLoaded value)? loaded,
    TResult Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult Function(SignedConsentSignSuccess value)? signSuccess,
    TResult Function(SignedConsentError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SignedConsentLoaded implements SignedConsentState {
  const factory SignedConsentLoaded(
      {required final String eventId,
      required final String userId,
      required final List<FormTemplate> requiredConsents,
      required final List<SignedConsent> signedConsents,
      final bool hasSignedAllRequired}) = _$SignedConsentLoadedImpl;

  String get eventId;
  String get userId;
  List<FormTemplate> get requiredConsents;
  List<SignedConsent> get signedConsents;
  bool get hasSignedAllRequired;
  @JsonKey(ignore: true)
  _$$SignedConsentLoadedImplCopyWith<_$SignedConsentLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedConsentSigningInProgressImplCopyWith<$Res> {
  factory _$$SignedConsentSigningInProgressImplCopyWith(
          _$SignedConsentSigningInProgressImpl value,
          $Res Function(_$SignedConsentSigningInProgressImpl) then) =
      __$$SignedConsentSigningInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedConsentSigningInProgressImplCopyWithImpl<$Res>
    extends _$SignedConsentStateCopyWithImpl<$Res,
        _$SignedConsentSigningInProgressImpl>
    implements _$$SignedConsentSigningInProgressImplCopyWith<$Res> {
  __$$SignedConsentSigningInProgressImplCopyWithImpl(
      _$SignedConsentSigningInProgressImpl _value,
      $Res Function(_$SignedConsentSigningInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedConsentSigningInProgressImpl
    implements SignedConsentSigningInProgress {
  const _$SignedConsentSigningInProgressImpl();

  @override
  String toString() {
    return 'SignedConsentState.signingInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedConsentSigningInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)
        loaded,
    required TResult Function() signingInProgress,
    required TResult Function(String message) signSuccess,
    required TResult Function(String message) error,
  }) {
    return signingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult? Function()? signingInProgress,
    TResult? Function(String message)? signSuccess,
    TResult? Function(String message)? error,
  }) {
    return signingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult Function()? signingInProgress,
    TResult Function(String message)? signSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (signingInProgress != null) {
      return signingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedConsentInitial value) initial,
    required TResult Function(SignedConsentLoading value) loading,
    required TResult Function(SignedConsentLoaded value) loaded,
    required TResult Function(SignedConsentSigningInProgress value)
        signingInProgress,
    required TResult Function(SignedConsentSignSuccess value) signSuccess,
    required TResult Function(SignedConsentError value) error,
  }) {
    return signingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedConsentInitial value)? initial,
    TResult? Function(SignedConsentLoading value)? loading,
    TResult? Function(SignedConsentLoaded value)? loaded,
    TResult? Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult? Function(SignedConsentSignSuccess value)? signSuccess,
    TResult? Function(SignedConsentError value)? error,
  }) {
    return signingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedConsentInitial value)? initial,
    TResult Function(SignedConsentLoading value)? loading,
    TResult Function(SignedConsentLoaded value)? loaded,
    TResult Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult Function(SignedConsentSignSuccess value)? signSuccess,
    TResult Function(SignedConsentError value)? error,
    required TResult orElse(),
  }) {
    if (signingInProgress != null) {
      return signingInProgress(this);
    }
    return orElse();
  }
}

abstract class SignedConsentSigningInProgress implements SignedConsentState {
  const factory SignedConsentSigningInProgress() =
      _$SignedConsentSigningInProgressImpl;
}

/// @nodoc
abstract class _$$SignedConsentSignSuccessImplCopyWith<$Res> {
  factory _$$SignedConsentSignSuccessImplCopyWith(
          _$SignedConsentSignSuccessImpl value,
          $Res Function(_$SignedConsentSignSuccessImpl) then) =
      __$$SignedConsentSignSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignedConsentSignSuccessImplCopyWithImpl<$Res>
    extends _$SignedConsentStateCopyWithImpl<$Res,
        _$SignedConsentSignSuccessImpl>
    implements _$$SignedConsentSignSuccessImplCopyWith<$Res> {
  __$$SignedConsentSignSuccessImplCopyWithImpl(
      _$SignedConsentSignSuccessImpl _value,
      $Res Function(_$SignedConsentSignSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignedConsentSignSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignedConsentSignSuccessImpl implements SignedConsentSignSuccess {
  const _$SignedConsentSignSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignedConsentState.signSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedConsentSignSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedConsentSignSuccessImplCopyWith<_$SignedConsentSignSuccessImpl>
      get copyWith => __$$SignedConsentSignSuccessImplCopyWithImpl<
          _$SignedConsentSignSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)
        loaded,
    required TResult Function() signingInProgress,
    required TResult Function(String message) signSuccess,
    required TResult Function(String message) error,
  }) {
    return signSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult? Function()? signingInProgress,
    TResult? Function(String message)? signSuccess,
    TResult? Function(String message)? error,
  }) {
    return signSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult Function()? signingInProgress,
    TResult Function(String message)? signSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (signSuccess != null) {
      return signSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedConsentInitial value) initial,
    required TResult Function(SignedConsentLoading value) loading,
    required TResult Function(SignedConsentLoaded value) loaded,
    required TResult Function(SignedConsentSigningInProgress value)
        signingInProgress,
    required TResult Function(SignedConsentSignSuccess value) signSuccess,
    required TResult Function(SignedConsentError value) error,
  }) {
    return signSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedConsentInitial value)? initial,
    TResult? Function(SignedConsentLoading value)? loading,
    TResult? Function(SignedConsentLoaded value)? loaded,
    TResult? Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult? Function(SignedConsentSignSuccess value)? signSuccess,
    TResult? Function(SignedConsentError value)? error,
  }) {
    return signSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedConsentInitial value)? initial,
    TResult Function(SignedConsentLoading value)? loading,
    TResult Function(SignedConsentLoaded value)? loaded,
    TResult Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult Function(SignedConsentSignSuccess value)? signSuccess,
    TResult Function(SignedConsentError value)? error,
    required TResult orElse(),
  }) {
    if (signSuccess != null) {
      return signSuccess(this);
    }
    return orElse();
  }
}

abstract class SignedConsentSignSuccess implements SignedConsentState {
  const factory SignedConsentSignSuccess(final String message) =
      _$SignedConsentSignSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SignedConsentSignSuccessImplCopyWith<_$SignedConsentSignSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedConsentErrorImplCopyWith<$Res> {
  factory _$$SignedConsentErrorImplCopyWith(_$SignedConsentErrorImpl value,
          $Res Function(_$SignedConsentErrorImpl) then) =
      __$$SignedConsentErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignedConsentErrorImplCopyWithImpl<$Res>
    extends _$SignedConsentStateCopyWithImpl<$Res, _$SignedConsentErrorImpl>
    implements _$$SignedConsentErrorImplCopyWith<$Res> {
  __$$SignedConsentErrorImplCopyWithImpl(_$SignedConsentErrorImpl _value,
      $Res Function(_$SignedConsentErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignedConsentErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignedConsentErrorImpl implements SignedConsentError {
  const _$SignedConsentErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignedConsentState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedConsentErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedConsentErrorImplCopyWith<_$SignedConsentErrorImpl> get copyWith =>
      __$$SignedConsentErrorImplCopyWithImpl<_$SignedConsentErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)
        loaded,
    required TResult Function() signingInProgress,
    required TResult Function(String message) signSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult? Function()? signingInProgress,
    TResult? Function(String message)? signSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String eventId,
            String userId,
            List<FormTemplate> requiredConsents,
            List<SignedConsent> signedConsents,
            bool hasSignedAllRequired)?
        loaded,
    TResult Function()? signingInProgress,
    TResult Function(String message)? signSuccess,
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
    required TResult Function(SignedConsentInitial value) initial,
    required TResult Function(SignedConsentLoading value) loading,
    required TResult Function(SignedConsentLoaded value) loaded,
    required TResult Function(SignedConsentSigningInProgress value)
        signingInProgress,
    required TResult Function(SignedConsentSignSuccess value) signSuccess,
    required TResult Function(SignedConsentError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedConsentInitial value)? initial,
    TResult? Function(SignedConsentLoading value)? loading,
    TResult? Function(SignedConsentLoaded value)? loaded,
    TResult? Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult? Function(SignedConsentSignSuccess value)? signSuccess,
    TResult? Function(SignedConsentError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedConsentInitial value)? initial,
    TResult Function(SignedConsentLoading value)? loading,
    TResult Function(SignedConsentLoaded value)? loaded,
    TResult Function(SignedConsentSigningInProgress value)? signingInProgress,
    TResult Function(SignedConsentSignSuccess value)? signSuccess,
    TResult Function(SignedConsentError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignedConsentError implements SignedConsentState {
  const factory SignedConsentError(final String message) =
      _$SignedConsentErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SignedConsentErrorImplCopyWith<_$SignedConsentErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
