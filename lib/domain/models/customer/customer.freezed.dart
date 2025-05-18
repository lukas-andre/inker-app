// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  String get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhoneNumber => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get profileThumbnail => throw _privateConstructorUsedError;
  int? get follows => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get tsv => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {String id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? userId,
      String? firstName,
      String? lastName,
      String? contactEmail,
      String? contactPhoneNumber,
      String? shortDescription,
      String? profileThumbnail,
      int? follows,
      double rating,
      String? tsv,
      DateTime? deletedAt});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? contactEmail = freezed,
    Object? contactPhoneNumber = freezed,
    Object? shortDescription = freezed,
    Object? profileThumbnail = freezed,
    Object? follows = freezed,
    Object? rating = null,
    Object? tsv = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhoneNumber: freezed == contactPhoneNumber
          ? _value.contactPhoneNumber
          : contactPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      follows: freezed == follows
          ? _value.follows
          : follows // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      tsv: freezed == tsv
          ? _value.tsv
          : tsv // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? userId,
      String? firstName,
      String? lastName,
      String? contactEmail,
      String? contactPhoneNumber,
      String? shortDescription,
      String? profileThumbnail,
      int? follows,
      double rating,
      String? tsv,
      DateTime? deletedAt});
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? contactEmail = freezed,
    Object? contactPhoneNumber = freezed,
    Object? shortDescription = freezed,
    Object? profileThumbnail = freezed,
    Object? follows = freezed,
    Object? rating = null,
    Object? tsv = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$CustomerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhoneNumber: freezed == contactPhoneNumber
          ? _value.contactPhoneNumber
          : contactPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      follows: freezed == follows
          ? _value.follows
          : follows // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      tsv: freezed == tsv
          ? _value.tsv
          : tsv // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerImpl implements _Customer {
  const _$CustomerImpl(
      {required this.id,
      this.createdAt,
      this.updatedAt,
      this.userId,
      this.firstName,
      this.lastName,
      this.contactEmail,
      this.contactPhoneNumber,
      this.shortDescription,
      this.profileThumbnail,
      this.follows,
      this.rating = 0.0,
      this.tsv,
      this.deletedAt});

  factory _$CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? userId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? contactEmail;
  @override
  final String? contactPhoneNumber;
  @override
  final String? shortDescription;
  @override
  final String? profileThumbnail;
  @override
  final int? follows;
  @override
  @JsonKey()
  final double rating;
  @override
  final String? tsv;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Customer(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, firstName: $firstName, lastName: $lastName, contactEmail: $contactEmail, contactPhoneNumber: $contactPhoneNumber, shortDescription: $shortDescription, profileThumbnail: $profileThumbnail, follows: $follows, rating: $rating, tsv: $tsv, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhoneNumber, contactPhoneNumber) ||
                other.contactPhoneNumber == contactPhoneNumber) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.profileThumbnail, profileThumbnail) ||
                other.profileThumbnail == profileThumbnail) &&
            (identical(other.follows, follows) || other.follows == follows) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.tsv, tsv) || other.tsv == tsv) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      userId,
      firstName,
      lastName,
      contactEmail,
      contactPhoneNumber,
      shortDescription,
      profileThumbnail,
      follows,
      rating,
      tsv,
      deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerImplToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {required final String id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? userId,
      final String? firstName,
      final String? lastName,
      final String? contactEmail,
      final String? contactPhoneNumber,
      final String? shortDescription,
      final String? profileThumbnail,
      final int? follows,
      final double rating,
      final String? tsv,
      final DateTime? deletedAt}) = _$CustomerImpl;

  factory _Customer.fromJson(Map<String, dynamic> json) =
      _$CustomerImpl.fromJson;

  @override
  String get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get userId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get contactEmail;
  @override
  String? get contactPhoneNumber;
  @override
  String? get shortDescription;
  @override
  String? get profileThumbnail;
  @override
  int? get follows;
  @override
  double get rating;
  @override
  String? get tsv;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
