// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consent_status_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConsentStatusEvent {
  String get eventId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) checkStatus,
    required TResult Function(String eventId, String digitalSignature)
        acceptTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? checkStatus,
    TResult? Function(String eventId, String digitalSignature)? acceptTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? checkStatus,
    TResult Function(String eventId, String digitalSignature)? acceptTerms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_AcceptTerms value) acceptTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_AcceptTerms value)? acceptTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_AcceptTerms value)? acceptTerms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConsentStatusEventCopyWith<ConsentStatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsentStatusEventCopyWith<$Res> {
  factory $ConsentStatusEventCopyWith(
          ConsentStatusEvent value, $Res Function(ConsentStatusEvent) then) =
      _$ConsentStatusEventCopyWithImpl<$Res, ConsentStatusEvent>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class _$ConsentStatusEventCopyWithImpl<$Res, $Val extends ConsentStatusEvent>
    implements $ConsentStatusEventCopyWith<$Res> {
  _$ConsentStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckStatusImplCopyWith<$Res>
    implements $ConsentStatusEventCopyWith<$Res> {
  factory _$$CheckStatusImplCopyWith(
          _$CheckStatusImpl value, $Res Function(_$CheckStatusImpl) then) =
      __$$CheckStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$CheckStatusImplCopyWithImpl<$Res>
    extends _$ConsentStatusEventCopyWithImpl<$Res, _$CheckStatusImpl>
    implements _$$CheckStatusImplCopyWith<$Res> {
  __$$CheckStatusImplCopyWithImpl(
      _$CheckStatusImpl _value, $Res Function(_$CheckStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$CheckStatusImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckStatusImpl implements _CheckStatus {
  const _$CheckStatusImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'ConsentStatusEvent.checkStatus(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckStatusImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckStatusImplCopyWith<_$CheckStatusImpl> get copyWith =>
      __$$CheckStatusImplCopyWithImpl<_$CheckStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) checkStatus,
    required TResult Function(String eventId, String digitalSignature)
        acceptTerms,
  }) {
    return checkStatus(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? checkStatus,
    TResult? Function(String eventId, String digitalSignature)? acceptTerms,
  }) {
    return checkStatus?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? checkStatus,
    TResult Function(String eventId, String digitalSignature)? acceptTerms,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_AcceptTerms value) acceptTerms,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_AcceptTerms value)? acceptTerms,
  }) {
    return checkStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_AcceptTerms value)? acceptTerms,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckStatus implements ConsentStatusEvent {
  const factory _CheckStatus(final String eventId) = _$CheckStatusImpl;

  @override
  String get eventId;
  @override
  @JsonKey(ignore: true)
  _$$CheckStatusImplCopyWith<_$CheckStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcceptTermsImplCopyWith<$Res>
    implements $ConsentStatusEventCopyWith<$Res> {
  factory _$$AcceptTermsImplCopyWith(
          _$AcceptTermsImpl value, $Res Function(_$AcceptTermsImpl) then) =
      __$$AcceptTermsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventId, String digitalSignature});
}

/// @nodoc
class __$$AcceptTermsImplCopyWithImpl<$Res>
    extends _$ConsentStatusEventCopyWithImpl<$Res, _$AcceptTermsImpl>
    implements _$$AcceptTermsImplCopyWith<$Res> {
  __$$AcceptTermsImplCopyWithImpl(
      _$AcceptTermsImpl _value, $Res Function(_$AcceptTermsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? digitalSignature = null,
  }) {
    return _then(_$AcceptTermsImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      null == digitalSignature
          ? _value.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptTermsImpl implements _AcceptTerms {
  const _$AcceptTermsImpl(this.eventId, this.digitalSignature);

  @override
  final String eventId;
  @override
  final String digitalSignature;

  @override
  String toString() {
    return 'ConsentStatusEvent.acceptTerms(eventId: $eventId, digitalSignature: $digitalSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptTermsImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.digitalSignature, digitalSignature) ||
                other.digitalSignature == digitalSignature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, digitalSignature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptTermsImplCopyWith<_$AcceptTermsImpl> get copyWith =>
      __$$AcceptTermsImplCopyWithImpl<_$AcceptTermsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) checkStatus,
    required TResult Function(String eventId, String digitalSignature)
        acceptTerms,
  }) {
    return acceptTerms(eventId, digitalSignature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? checkStatus,
    TResult? Function(String eventId, String digitalSignature)? acceptTerms,
  }) {
    return acceptTerms?.call(eventId, digitalSignature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? checkStatus,
    TResult Function(String eventId, String digitalSignature)? acceptTerms,
    required TResult orElse(),
  }) {
    if (acceptTerms != null) {
      return acceptTerms(eventId, digitalSignature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_AcceptTerms value) acceptTerms,
  }) {
    return acceptTerms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_AcceptTerms value)? acceptTerms,
  }) {
    return acceptTerms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_AcceptTerms value)? acceptTerms,
    required TResult orElse(),
  }) {
    if (acceptTerms != null) {
      return acceptTerms(this);
    }
    return orElse();
  }
}

abstract class _AcceptTerms implements ConsentStatusEvent {
  const factory _AcceptTerms(
      final String eventId, final String digitalSignature) = _$AcceptTermsImpl;

  @override
  String get eventId;
  String get digitalSignature;
  @override
  @JsonKey(ignore: true)
  _$$AcceptTermsImplCopyWith<_$AcceptTermsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
