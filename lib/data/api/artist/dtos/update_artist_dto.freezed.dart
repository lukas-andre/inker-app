// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_artist_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateArtistDto _$UpdateArtistDtoFromJson(Map<String, dynamic> json) {
  return _UpdateArtistDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateArtistDto {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  UpdateContactDto? get contact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateArtistDtoCopyWith<UpdateArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArtistDtoCopyWith<$Res> {
  factory $UpdateArtistDtoCopyWith(
          UpdateArtistDto value, $Res Function(UpdateArtistDto) then) =
      _$UpdateArtistDtoCopyWithImpl<$Res, UpdateArtistDto>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? shortDescription,
      UpdateContactDto? contact});

  $UpdateContactDtoCopyWith<$Res>? get contact;
}

/// @nodoc
class _$UpdateArtistDtoCopyWithImpl<$Res, $Val extends UpdateArtistDto>
    implements $UpdateArtistDtoCopyWith<$Res> {
  _$UpdateArtistDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? shortDescription = freezed,
    Object? contact = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as UpdateContactDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateContactDtoCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $UpdateContactDtoCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateArtistDtoImplCopyWith<$Res>
    implements $UpdateArtistDtoCopyWith<$Res> {
  factory _$$UpdateArtistDtoImplCopyWith(_$UpdateArtistDtoImpl value,
          $Res Function(_$UpdateArtistDtoImpl) then) =
      __$$UpdateArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? shortDescription,
      UpdateContactDto? contact});

  @override
  $UpdateContactDtoCopyWith<$Res>? get contact;
}

/// @nodoc
class __$$UpdateArtistDtoImplCopyWithImpl<$Res>
    extends _$UpdateArtistDtoCopyWithImpl<$Res, _$UpdateArtistDtoImpl>
    implements _$$UpdateArtistDtoImplCopyWith<$Res> {
  __$$UpdateArtistDtoImplCopyWithImpl(
      _$UpdateArtistDtoImpl _value, $Res Function(_$UpdateArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? shortDescription = freezed,
    Object? contact = freezed,
  }) {
    return _then(_$UpdateArtistDtoImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as UpdateContactDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateArtistDtoImpl implements _UpdateArtistDto {
  const _$UpdateArtistDtoImpl(
      {this.firstName, this.lastName, this.shortDescription, this.contact});

  factory _$UpdateArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateArtistDtoImplFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? shortDescription;
  @override
  final UpdateContactDto? contact;

  @override
  String toString() {
    return 'UpdateArtistDto(firstName: $firstName, lastName: $lastName, shortDescription: $shortDescription, contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArtistDtoImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, shortDescription, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArtistDtoImplCopyWith<_$UpdateArtistDtoImpl> get copyWith =>
      __$$UpdateArtistDtoImplCopyWithImpl<_$UpdateArtistDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateArtistDto implements UpdateArtistDto {
  const factory _UpdateArtistDto(
      {final String? firstName,
      final String? lastName,
      final String? shortDescription,
      final UpdateContactDto? contact}) = _$UpdateArtistDtoImpl;

  factory _UpdateArtistDto.fromJson(Map<String, dynamic> json) =
      _$UpdateArtistDtoImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get shortDescription;
  @override
  UpdateContactDto? get contact;
  @override
  @JsonKey(ignore: true)
  _$$UpdateArtistDtoImplCopyWith<_$UpdateArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateContactDto _$UpdateContactDtoFromJson(Map<String, dynamic> json) {
  return _UpdateContactDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateContactDto {
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get phoneDialCode => throw _privateConstructorUsedError;
  String? get phoneCountryIsoCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateContactDtoCopyWith<UpdateContactDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateContactDtoCopyWith<$Res> {
  factory $UpdateContactDtoCopyWith(
          UpdateContactDto value, $Res Function(UpdateContactDto) then) =
      _$UpdateContactDtoCopyWithImpl<$Res, UpdateContactDto>;
  @useResult
  $Res call(
      {String? email,
      String? phone,
      String? phoneDialCode,
      String? phoneCountryIsoCode});
}

/// @nodoc
class _$UpdateContactDtoCopyWithImpl<$Res, $Val extends UpdateContactDto>
    implements $UpdateContactDtoCopyWith<$Res> {
  _$UpdateContactDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? phoneDialCode = freezed,
    Object? phoneCountryIsoCode = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneDialCode: freezed == phoneDialCode
          ? _value.phoneDialCode
          : phoneDialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCountryIsoCode: freezed == phoneCountryIsoCode
          ? _value.phoneCountryIsoCode
          : phoneCountryIsoCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateContactDtoImplCopyWith<$Res>
    implements $UpdateContactDtoCopyWith<$Res> {
  factory _$$UpdateContactDtoImplCopyWith(_$UpdateContactDtoImpl value,
          $Res Function(_$UpdateContactDtoImpl) then) =
      __$$UpdateContactDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? phone,
      String? phoneDialCode,
      String? phoneCountryIsoCode});
}

/// @nodoc
class __$$UpdateContactDtoImplCopyWithImpl<$Res>
    extends _$UpdateContactDtoCopyWithImpl<$Res, _$UpdateContactDtoImpl>
    implements _$$UpdateContactDtoImplCopyWith<$Res> {
  __$$UpdateContactDtoImplCopyWithImpl(_$UpdateContactDtoImpl _value,
      $Res Function(_$UpdateContactDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? phoneDialCode = freezed,
    Object? phoneCountryIsoCode = freezed,
  }) {
    return _then(_$UpdateContactDtoImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneDialCode: freezed == phoneDialCode
          ? _value.phoneDialCode
          : phoneDialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCountryIsoCode: freezed == phoneCountryIsoCode
          ? _value.phoneCountryIsoCode
          : phoneCountryIsoCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateContactDtoImpl implements _UpdateContactDto {
  const _$UpdateContactDtoImpl(
      {this.email, this.phone, this.phoneDialCode, this.phoneCountryIsoCode});

  factory _$UpdateContactDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateContactDtoImplFromJson(json);

  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? phoneDialCode;
  @override
  final String? phoneCountryIsoCode;

  @override
  String toString() {
    return 'UpdateContactDto(email: $email, phone: $phone, phoneDialCode: $phoneDialCode, phoneCountryIsoCode: $phoneCountryIsoCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateContactDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneDialCode, phoneDialCode) ||
                other.phoneDialCode == phoneDialCode) &&
            (identical(other.phoneCountryIsoCode, phoneCountryIsoCode) ||
                other.phoneCountryIsoCode == phoneCountryIsoCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, phone, phoneDialCode, phoneCountryIsoCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateContactDtoImplCopyWith<_$UpdateContactDtoImpl> get copyWith =>
      __$$UpdateContactDtoImplCopyWithImpl<_$UpdateContactDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateContactDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateContactDto implements UpdateContactDto {
  const factory _UpdateContactDto(
      {final String? email,
      final String? phone,
      final String? phoneDialCode,
      final String? phoneCountryIsoCode}) = _$UpdateContactDtoImpl;

  factory _UpdateContactDto.fromJson(Map<String, dynamic> json) =
      _$UpdateContactDtoImpl.fromJson;

  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get phoneDialCode;
  @override
  String? get phoneCountryIsoCode;
  @override
  @JsonKey(ignore: true)
  _$$UpdateContactDtoImplCopyWith<_$UpdateContactDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
