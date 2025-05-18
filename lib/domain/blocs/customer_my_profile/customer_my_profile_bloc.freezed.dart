// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_my_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Customer customer) updateProfile,
    required TResult Function(String firstName, String lastName) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(XFile image) updateProfileImage,
    required TResult Function(String email) updateEmail,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function(Customer customer)? updateProfile,
    TResult? Function(String firstName, String lastName)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(XFile image)? updateProfileImage,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Customer customer)? updateProfile,
    TResult Function(String firstName, String lastName)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(XFile image)? updateProfileImage,
    TResult Function(String email)? updateEmail,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerProfileEventCopyWith<$Res> {
  factory $CustomerProfileEventCopyWith(CustomerProfileEvent value,
          $Res Function(CustomerProfileEvent) then) =
      _$CustomerProfileEventCopyWithImpl<$Res, CustomerProfileEvent>;
}

/// @nodoc
class _$CustomerProfileEventCopyWithImpl<$Res,
        $Val extends CustomerProfileEvent>
    implements $CustomerProfileEventCopyWith<$Res> {
  _$CustomerProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadProfileImplCopyWith<$Res> {
  factory _$$LoadProfileImplCopyWith(
          _$LoadProfileImpl value, $Res Function(_$LoadProfileImpl) then) =
      __$$LoadProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProfileImplCopyWithImpl<$Res>
    extends _$CustomerProfileEventCopyWithImpl<$Res, _$LoadProfileImpl>
    implements _$$LoadProfileImplCopyWith<$Res> {
  __$$LoadProfileImplCopyWithImpl(
      _$LoadProfileImpl _value, $Res Function(_$LoadProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadProfileImpl implements _LoadProfile {
  const _$LoadProfileImpl();

  @override
  String toString() {
    return 'CustomerProfileEvent.loadProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Customer customer) updateProfile,
    required TResult Function(String firstName, String lastName) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(XFile image) updateProfileImage,
    required TResult Function(String email) updateEmail,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return loadProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function(Customer customer)? updateProfile,
    TResult? Function(String firstName, String lastName)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(XFile image)? updateProfileImage,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return loadProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Customer customer)? updateProfile,
    TResult Function(String firstName, String lastName)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(XFile image)? updateProfileImage,
    TResult Function(String email)? updateEmail,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return loadProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return loadProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile(this);
    }
    return orElse();
  }
}

abstract class _LoadProfile implements CustomerProfileEvent {
  const factory _LoadProfile() = _$LoadProfileImpl;
}

/// @nodoc
abstract class _$$UpdateProfileImplCopyWith<$Res> {
  factory _$$UpdateProfileImplCopyWith(
          _$UpdateProfileImpl value, $Res Function(_$UpdateProfileImpl) then) =
      __$$UpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Customer customer});

  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$UpdateProfileImplCopyWithImpl<$Res>
    extends _$CustomerProfileEventCopyWithImpl<$Res, _$UpdateProfileImpl>
    implements _$$UpdateProfileImplCopyWith<$Res> {
  __$$UpdateProfileImplCopyWithImpl(
      _$UpdateProfileImpl _value, $Res Function(_$UpdateProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$UpdateProfileImpl(
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$UpdateProfileImpl implements _UpdateProfile {
  const _$UpdateProfileImpl(this.customer);

  @override
  final Customer customer;

  @override
  String toString() {
    return 'CustomerProfileEvent.updateProfile(customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      __$$UpdateProfileImplCopyWithImpl<_$UpdateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Customer customer) updateProfile,
    required TResult Function(String firstName, String lastName) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(XFile image) updateProfileImage,
    required TResult Function(String email) updateEmail,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return updateProfile(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function(Customer customer)? updateProfile,
    TResult? Function(String firstName, String lastName)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(XFile image)? updateProfileImage,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return updateProfile?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Customer customer)? updateProfile,
    TResult Function(String firstName, String lastName)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(XFile image)? updateProfileImage,
    TResult Function(String email)? updateEmail,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements CustomerProfileEvent {
  const factory _UpdateProfile(final Customer customer) = _$UpdateProfileImpl;

  Customer get customer;
  @JsonKey(ignore: true)
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNameImplCopyWith<$Res> {
  factory _$$UpdateNameImplCopyWith(
          _$UpdateNameImpl value, $Res Function(_$UpdateNameImpl) then) =
      __$$UpdateNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName, String lastName});
}

/// @nodoc
class __$$UpdateNameImplCopyWithImpl<$Res>
    extends _$CustomerProfileEventCopyWithImpl<$Res, _$UpdateNameImpl>
    implements _$$UpdateNameImplCopyWith<$Res> {
  __$$UpdateNameImplCopyWithImpl(
      _$UpdateNameImpl _value, $Res Function(_$UpdateNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$UpdateNameImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNameImpl implements _UpdateName {
  const _$UpdateNameImpl({required this.firstName, required this.lastName});

  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'CustomerProfileEvent.updateName(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNameImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNameImplCopyWith<_$UpdateNameImpl> get copyWith =>
      __$$UpdateNameImplCopyWithImpl<_$UpdateNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Customer customer) updateProfile,
    required TResult Function(String firstName, String lastName) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(XFile image) updateProfileImage,
    required TResult Function(String email) updateEmail,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return updateName(firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function(Customer customer)? updateProfile,
    TResult? Function(String firstName, String lastName)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(XFile image)? updateProfileImage,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return updateName?.call(firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Customer customer)? updateProfile,
    TResult Function(String firstName, String lastName)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(XFile image)? updateProfileImage,
    TResult Function(String email)? updateEmail,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateName implements CustomerProfileEvent {
  const factory _UpdateName(
      {required final String firstName,
      required final String lastName}) = _$UpdateNameImpl;

  String get firstName;
  String get lastName;
  @JsonKey(ignore: true)
  _$$UpdateNameImplCopyWith<_$UpdateNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDescriptionImplCopyWith<$Res> {
  factory _$$UpdateDescriptionImplCopyWith(_$UpdateDescriptionImpl value,
          $Res Function(_$UpdateDescriptionImpl) then) =
      __$$UpdateDescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$UpdateDescriptionImplCopyWithImpl<$Res>
    extends _$CustomerProfileEventCopyWithImpl<$Res, _$UpdateDescriptionImpl>
    implements _$$UpdateDescriptionImplCopyWith<$Res> {
  __$$UpdateDescriptionImplCopyWithImpl(_$UpdateDescriptionImpl _value,
      $Res Function(_$UpdateDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$UpdateDescriptionImpl(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateDescriptionImpl implements _UpdateDescription {
  const _$UpdateDescriptionImpl(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'CustomerProfileEvent.updateDescription(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDescriptionImplCopyWith<_$UpdateDescriptionImpl> get copyWith =>
      __$$UpdateDescriptionImplCopyWithImpl<_$UpdateDescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Customer customer) updateProfile,
    required TResult Function(String firstName, String lastName) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(XFile image) updateProfileImage,
    required TResult Function(String email) updateEmail,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return updateDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function(Customer customer)? updateProfile,
    TResult? Function(String firstName, String lastName)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(XFile image)? updateProfileImage,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return updateDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Customer customer)? updateProfile,
    TResult Function(String firstName, String lastName)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(XFile image)? updateProfileImage,
    TResult Function(String email)? updateEmail,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return updateDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return updateDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(this);
    }
    return orElse();
  }
}

abstract class _UpdateDescription implements CustomerProfileEvent {
  const factory _UpdateDescription(final String description) =
      _$UpdateDescriptionImpl;

  String get description;
  @JsonKey(ignore: true)
  _$$UpdateDescriptionImplCopyWith<_$UpdateDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileImageImplCopyWith<$Res> {
  factory _$$UpdateProfileImageImplCopyWith(_$UpdateProfileImageImpl value,
          $Res Function(_$UpdateProfileImageImpl) then) =
      __$$UpdateProfileImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile image});
}

/// @nodoc
class __$$UpdateProfileImageImplCopyWithImpl<$Res>
    extends _$CustomerProfileEventCopyWithImpl<$Res, _$UpdateProfileImageImpl>
    implements _$$UpdateProfileImageImplCopyWith<$Res> {
  __$$UpdateProfileImageImplCopyWithImpl(_$UpdateProfileImageImpl _value,
      $Res Function(_$UpdateProfileImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$UpdateProfileImageImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$UpdateProfileImageImpl implements _UpdateProfileImage {
  const _$UpdateProfileImageImpl(this.image);

  @override
  final XFile image;

  @override
  String toString() {
    return 'CustomerProfileEvent.updateProfileImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImageImplCopyWith<_$UpdateProfileImageImpl> get copyWith =>
      __$$UpdateProfileImageImplCopyWithImpl<_$UpdateProfileImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Customer customer) updateProfile,
    required TResult Function(String firstName, String lastName) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(XFile image) updateProfileImage,
    required TResult Function(String email) updateEmail,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return updateProfileImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function(Customer customer)? updateProfile,
    TResult? Function(String firstName, String lastName)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(XFile image)? updateProfileImage,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return updateProfileImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Customer customer)? updateProfile,
    TResult Function(String firstName, String lastName)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(XFile image)? updateProfileImage,
    TResult Function(String email)? updateEmail,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return updateProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return updateProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileImage implements CustomerProfileEvent {
  const factory _UpdateProfileImage(final XFile image) =
      _$UpdateProfileImageImpl;

  XFile get image;
  @JsonKey(ignore: true)
  _$$UpdateProfileImageImplCopyWith<_$UpdateProfileImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEmailImplCopyWith<$Res> {
  factory _$$UpdateEmailImplCopyWith(
          _$UpdateEmailImpl value, $Res Function(_$UpdateEmailImpl) then) =
      __$$UpdateEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$UpdateEmailImplCopyWithImpl<$Res>
    extends _$CustomerProfileEventCopyWithImpl<$Res, _$UpdateEmailImpl>
    implements _$$UpdateEmailImplCopyWith<$Res> {
  __$$UpdateEmailImplCopyWithImpl(
      _$UpdateEmailImpl _value, $Res Function(_$UpdateEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$UpdateEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEmailImpl implements _UpdateEmail {
  const _$UpdateEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'CustomerProfileEvent.updateEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmailImplCopyWith<_$UpdateEmailImpl> get copyWith =>
      __$$UpdateEmailImplCopyWithImpl<_$UpdateEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Customer customer) updateProfile,
    required TResult Function(String firstName, String lastName) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(XFile image) updateProfileImage,
    required TResult Function(String email) updateEmail,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return updateEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function(Customer customer)? updateProfile,
    TResult? Function(String firstName, String lastName)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(XFile image)? updateProfileImage,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return updateEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Customer customer)? updateProfile,
    TResult Function(String firstName, String lastName)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(XFile image)? updateProfileImage,
    TResult Function(String email)? updateEmail,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmail implements CustomerProfileEvent {
  const factory _UpdateEmail(final String email) = _$UpdateEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$UpdateEmailImplCopyWith<_$UpdateEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePhoneNumberImplCopyWith<$Res> {
  factory _$$UpdatePhoneNumberImplCopyWith(_$UpdatePhoneNumberImpl value,
          $Res Function(_$UpdatePhoneNumberImpl) then) =
      __$$UpdatePhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$UpdatePhoneNumberImplCopyWithImpl<$Res>
    extends _$CustomerProfileEventCopyWithImpl<$Res, _$UpdatePhoneNumberImpl>
    implements _$$UpdatePhoneNumberImplCopyWith<$Res> {
  __$$UpdatePhoneNumberImplCopyWithImpl(_$UpdatePhoneNumberImpl _value,
      $Res Function(_$UpdatePhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$UpdatePhoneNumberImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePhoneNumberImpl implements _UpdatePhoneNumber {
  const _$UpdatePhoneNumberImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'CustomerProfileEvent.updatePhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePhoneNumberImplCopyWith<_$UpdatePhoneNumberImpl> get copyWith =>
      __$$UpdatePhoneNumberImplCopyWithImpl<_$UpdatePhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Customer customer) updateProfile,
    required TResult Function(String firstName, String lastName) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(XFile image) updateProfileImage,
    required TResult Function(String email) updateEmail,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return updatePhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProfile,
    TResult? Function(Customer customer)? updateProfile,
    TResult? Function(String firstName, String lastName)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(XFile image)? updateProfileImage,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return updatePhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Customer customer)? updateProfile,
    TResult Function(String firstName, String lastName)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(XFile image)? updateProfileImage,
    TResult Function(String email)? updateEmail,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updatePhoneNumber != null) {
      return updatePhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return updatePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return updatePhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updatePhoneNumber != null) {
      return updatePhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _UpdatePhoneNumber implements CustomerProfileEvent {
  const factory _UpdatePhoneNumber(final String phoneNumber) =
      _$UpdatePhoneNumberImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$UpdatePhoneNumberImplCopyWith<_$UpdatePhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Customer customer) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Customer customer)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Customer customer)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerProfileStateCopyWith<$Res> {
  factory $CustomerProfileStateCopyWith(CustomerProfileState value,
          $Res Function(CustomerProfileState) then) =
      _$CustomerProfileStateCopyWithImpl<$Res, CustomerProfileState>;
}

/// @nodoc
class _$CustomerProfileStateCopyWithImpl<$Res,
        $Val extends CustomerProfileState>
    implements $CustomerProfileStateCopyWith<$Res> {
  _$CustomerProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$CustomerProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CustomerProfileState.initial()';
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
    required TResult Function(Customer customer) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Customer customer)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Customer customer)? loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerProfileState {
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
    extends _$CustomerProfileStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'CustomerProfileState.loading()';
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
    required TResult Function(Customer customer) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Customer customer)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Customer customer)? loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CustomerProfileState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Customer customer});

  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CustomerProfileStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$LoadedImpl(
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.customer);

  @override
  final Customer customer;

  @override
  String toString() {
    return 'CustomerProfileState.loaded(customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

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
    required TResult Function(Customer customer) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Customer customer)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Customer customer)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(customer);
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
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CustomerProfileState {
  const factory _Loaded(final Customer customer) = _$LoadedImpl;

  Customer get customer;
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
    extends _$CustomerProfileStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'CustomerProfileState.error(message: $message)';
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
    required TResult Function(Customer customer) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Customer customer)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Customer customer)? loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CustomerProfileState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
