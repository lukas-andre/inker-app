// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_consent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignedConsent _$SignedConsentFromJson(Map<String, dynamic> json) {
  return _SignedConsent.fromJson(json);
}

/// @nodoc
mixin _$SignedConsent {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String? get formTemplateId => throw _privateConstructorUsedError;
  FormTemplate? get formTemplate => throw _privateConstructorUsedError;
  Map<String, dynamic> get signedData => throw _privateConstructorUsedError;
  String get digitalSignature => throw _privateConstructorUsedError;
  DateTime get signedAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get userAgent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignedConsentCopyWith<SignedConsent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignedConsentCopyWith<$Res> {
  factory $SignedConsentCopyWith(
          SignedConsent value, $Res Function(SignedConsent) then) =
      _$SignedConsentCopyWithImpl<$Res, SignedConsent>;
  @useResult
  $Res call(
      {String id,
      String eventId,
      String? formTemplateId,
      FormTemplate? formTemplate,
      Map<String, dynamic> signedData,
      String digitalSignature,
      DateTime signedAt,
      String userId,
      String? ipAddress,
      String? userAgent});

  $FormTemplateCopyWith<$Res>? get formTemplate;
}

/// @nodoc
class _$SignedConsentCopyWithImpl<$Res, $Val extends SignedConsent>
    implements $SignedConsentCopyWith<$Res> {
  _$SignedConsentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? formTemplateId = freezed,
    Object? formTemplate = freezed,
    Object? signedData = null,
    Object? digitalSignature = null,
    Object? signedAt = null,
    Object? userId = null,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      formTemplateId: freezed == formTemplateId
          ? _value.formTemplateId
          : formTemplateId // ignore: cast_nullable_to_non_nullable
              as String?,
      formTemplate: freezed == formTemplate
          ? _value.formTemplate
          : formTemplate // ignore: cast_nullable_to_non_nullable
              as FormTemplate?,
      signedData: null == signedData
          ? _value.signedData
          : signedData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      digitalSignature: null == digitalSignature
          ? _value.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String,
      signedAt: null == signedAt
          ? _value.signedAt
          : signedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormTemplateCopyWith<$Res>? get formTemplate {
    if (_value.formTemplate == null) {
      return null;
    }

    return $FormTemplateCopyWith<$Res>(_value.formTemplate!, (value) {
      return _then(_value.copyWith(formTemplate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignedConsentImplCopyWith<$Res>
    implements $SignedConsentCopyWith<$Res> {
  factory _$$SignedConsentImplCopyWith(
          _$SignedConsentImpl value, $Res Function(_$SignedConsentImpl) then) =
      __$$SignedConsentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String eventId,
      String? formTemplateId,
      FormTemplate? formTemplate,
      Map<String, dynamic> signedData,
      String digitalSignature,
      DateTime signedAt,
      String userId,
      String? ipAddress,
      String? userAgent});

  @override
  $FormTemplateCopyWith<$Res>? get formTemplate;
}

/// @nodoc
class __$$SignedConsentImplCopyWithImpl<$Res>
    extends _$SignedConsentCopyWithImpl<$Res, _$SignedConsentImpl>
    implements _$$SignedConsentImplCopyWith<$Res> {
  __$$SignedConsentImplCopyWithImpl(
      _$SignedConsentImpl _value, $Res Function(_$SignedConsentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? formTemplateId = freezed,
    Object? formTemplate = freezed,
    Object? signedData = null,
    Object? digitalSignature = null,
    Object? signedAt = null,
    Object? userId = null,
    Object? ipAddress = freezed,
    Object? userAgent = freezed,
  }) {
    return _then(_$SignedConsentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      formTemplateId: freezed == formTemplateId
          ? _value.formTemplateId
          : formTemplateId // ignore: cast_nullable_to_non_nullable
              as String?,
      formTemplate: freezed == formTemplate
          ? _value.formTemplate
          : formTemplate // ignore: cast_nullable_to_non_nullable
              as FormTemplate?,
      signedData: null == signedData
          ? _value._signedData
          : signedData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      digitalSignature: null == digitalSignature
          ? _value.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String,
      signedAt: null == signedAt
          ? _value.signedAt
          : signedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignedConsentImpl implements _SignedConsent {
  const _$SignedConsentImpl(
      {required this.id,
      required this.eventId,
      this.formTemplateId,
      this.formTemplate,
      required final Map<String, dynamic> signedData,
      required this.digitalSignature,
      required this.signedAt,
      required this.userId,
      this.ipAddress,
      this.userAgent})
      : _signedData = signedData;

  factory _$SignedConsentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignedConsentImplFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String? formTemplateId;
  @override
  final FormTemplate? formTemplate;
  final Map<String, dynamic> _signedData;
  @override
  Map<String, dynamic> get signedData {
    if (_signedData is EqualUnmodifiableMapView) return _signedData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_signedData);
  }

  @override
  final String digitalSignature;
  @override
  final DateTime signedAt;
  @override
  final String userId;
  @override
  final String? ipAddress;
  @override
  final String? userAgent;

  @override
  String toString() {
    return 'SignedConsent(id: $id, eventId: $eventId, formTemplateId: $formTemplateId, formTemplate: $formTemplate, signedData: $signedData, digitalSignature: $digitalSignature, signedAt: $signedAt, userId: $userId, ipAddress: $ipAddress, userAgent: $userAgent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedConsentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.formTemplateId, formTemplateId) ||
                other.formTemplateId == formTemplateId) &&
            (identical(other.formTemplate, formTemplate) ||
                other.formTemplate == formTemplate) &&
            const DeepCollectionEquality()
                .equals(other._signedData, _signedData) &&
            (identical(other.digitalSignature, digitalSignature) ||
                other.digitalSignature == digitalSignature) &&
            (identical(other.signedAt, signedAt) ||
                other.signedAt == signedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      eventId,
      formTemplateId,
      formTemplate,
      const DeepCollectionEquality().hash(_signedData),
      digitalSignature,
      signedAt,
      userId,
      ipAddress,
      userAgent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedConsentImplCopyWith<_$SignedConsentImpl> get copyWith =>
      __$$SignedConsentImplCopyWithImpl<_$SignedConsentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignedConsentImplToJson(
      this,
    );
  }
}

abstract class _SignedConsent implements SignedConsent {
  const factory _SignedConsent(
      {required final String id,
      required final String eventId,
      final String? formTemplateId,
      final FormTemplate? formTemplate,
      required final Map<String, dynamic> signedData,
      required final String digitalSignature,
      required final DateTime signedAt,
      required final String userId,
      final String? ipAddress,
      final String? userAgent}) = _$SignedConsentImpl;

  factory _SignedConsent.fromJson(Map<String, dynamic> json) =
      _$SignedConsentImpl.fromJson;

  @override
  String get id;
  @override
  String get eventId;
  @override
  String? get formTemplateId;
  @override
  FormTemplate? get formTemplate;
  @override
  Map<String, dynamic> get signedData;
  @override
  String get digitalSignature;
  @override
  DateTime get signedAt;
  @override
  String get userId;
  @override
  String? get ipAddress;
  @override
  String? get userAgent;
  @override
  @JsonKey(ignore: true)
  _$$SignedConsentImplCopyWith<_$SignedConsentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignConsentDto _$SignConsentDtoFromJson(Map<String, dynamic> json) {
  return _SignConsentDto.fromJson(json);
}

/// @nodoc
mixin _$SignConsentDto {
  String get eventId => throw _privateConstructorUsedError;
  String? get formTemplateId => throw _privateConstructorUsedError;
  Map<String, dynamic> get signedData => throw _privateConstructorUsedError;
  String get digitalSignature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignConsentDtoCopyWith<SignConsentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignConsentDtoCopyWith<$Res> {
  factory $SignConsentDtoCopyWith(
          SignConsentDto value, $Res Function(SignConsentDto) then) =
      _$SignConsentDtoCopyWithImpl<$Res, SignConsentDto>;
  @useResult
  $Res call(
      {String eventId,
      String? formTemplateId,
      Map<String, dynamic> signedData,
      String digitalSignature});
}

/// @nodoc
class _$SignConsentDtoCopyWithImpl<$Res, $Val extends SignConsentDto>
    implements $SignConsentDtoCopyWith<$Res> {
  _$SignConsentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? formTemplateId = freezed,
    Object? signedData = null,
    Object? digitalSignature = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      formTemplateId: freezed == formTemplateId
          ? _value.formTemplateId
          : formTemplateId // ignore: cast_nullable_to_non_nullable
              as String?,
      signedData: null == signedData
          ? _value.signedData
          : signedData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      digitalSignature: null == digitalSignature
          ? _value.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignConsentDtoImplCopyWith<$Res>
    implements $SignConsentDtoCopyWith<$Res> {
  factory _$$SignConsentDtoImplCopyWith(_$SignConsentDtoImpl value,
          $Res Function(_$SignConsentDtoImpl) then) =
      __$$SignConsentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventId,
      String? formTemplateId,
      Map<String, dynamic> signedData,
      String digitalSignature});
}

/// @nodoc
class __$$SignConsentDtoImplCopyWithImpl<$Res>
    extends _$SignConsentDtoCopyWithImpl<$Res, _$SignConsentDtoImpl>
    implements _$$SignConsentDtoImplCopyWith<$Res> {
  __$$SignConsentDtoImplCopyWithImpl(
      _$SignConsentDtoImpl _value, $Res Function(_$SignConsentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? formTemplateId = freezed,
    Object? signedData = null,
    Object? digitalSignature = null,
  }) {
    return _then(_$SignConsentDtoImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      formTemplateId: freezed == formTemplateId
          ? _value.formTemplateId
          : formTemplateId // ignore: cast_nullable_to_non_nullable
              as String?,
      signedData: null == signedData
          ? _value._signedData
          : signedData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      digitalSignature: null == digitalSignature
          ? _value.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignConsentDtoImpl implements _SignConsentDto {
  const _$SignConsentDtoImpl(
      {required this.eventId,
      this.formTemplateId,
      required final Map<String, dynamic> signedData,
      required this.digitalSignature})
      : _signedData = signedData;

  factory _$SignConsentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignConsentDtoImplFromJson(json);

  @override
  final String eventId;
  @override
  final String? formTemplateId;
  final Map<String, dynamic> _signedData;
  @override
  Map<String, dynamic> get signedData {
    if (_signedData is EqualUnmodifiableMapView) return _signedData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_signedData);
  }

  @override
  final String digitalSignature;

  @override
  String toString() {
    return 'SignConsentDto(eventId: $eventId, formTemplateId: $formTemplateId, signedData: $signedData, digitalSignature: $digitalSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignConsentDtoImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.formTemplateId, formTemplateId) ||
                other.formTemplateId == formTemplateId) &&
            const DeepCollectionEquality()
                .equals(other._signedData, _signedData) &&
            (identical(other.digitalSignature, digitalSignature) ||
                other.digitalSignature == digitalSignature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventId, formTemplateId,
      const DeepCollectionEquality().hash(_signedData), digitalSignature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignConsentDtoImplCopyWith<_$SignConsentDtoImpl> get copyWith =>
      __$$SignConsentDtoImplCopyWithImpl<_$SignConsentDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignConsentDtoImplToJson(
      this,
    );
  }
}

abstract class _SignConsentDto implements SignConsentDto {
  const factory _SignConsentDto(
      {required final String eventId,
      final String? formTemplateId,
      required final Map<String, dynamic> signedData,
      required final String digitalSignature}) = _$SignConsentDtoImpl;

  factory _SignConsentDto.fromJson(Map<String, dynamic> json) =
      _$SignConsentDtoImpl.fromJson;

  @override
  String get eventId;
  @override
  String? get formTemplateId;
  @override
  Map<String, dynamic> get signedData;
  @override
  String get digitalSignature;
  @override
  @JsonKey(ignore: true)
  _$$SignConsentDtoImplCopyWith<_$SignConsentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
