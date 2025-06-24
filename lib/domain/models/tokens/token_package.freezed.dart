// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TokenPackage {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get tokens => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get pricePerToken => throw _privateConstructorUsedError;
  double get savings => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get badge => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenPackageCopyWith<TokenPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenPackageCopyWith<$Res> {
  factory $TokenPackageCopyWith(
          TokenPackage value, $Res Function(TokenPackage) then) =
      _$TokenPackageCopyWithImpl<$Res, TokenPackage>;
  @useResult
  $Res call(
      {String id,
      String name,
      int tokens,
      double price,
      String currency,
      double pricePerToken,
      double savings,
      String description,
      String? badge});
}

/// @nodoc
class _$TokenPackageCopyWithImpl<$Res, $Val extends TokenPackage>
    implements $TokenPackageCopyWith<$Res> {
  _$TokenPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tokens = null,
    Object? price = null,
    Object? currency = null,
    Object? pricePerToken = null,
    Object? savings = null,
    Object? description = null,
    Object? badge = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerToken: null == pricePerToken
          ? _value.pricePerToken
          : pricePerToken // ignore: cast_nullable_to_non_nullable
              as double,
      savings: null == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenPackageImplCopyWith<$Res>
    implements $TokenPackageCopyWith<$Res> {
  factory _$$TokenPackageImplCopyWith(
          _$TokenPackageImpl value, $Res Function(_$TokenPackageImpl) then) =
      __$$TokenPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int tokens,
      double price,
      String currency,
      double pricePerToken,
      double savings,
      String description,
      String? badge});
}

/// @nodoc
class __$$TokenPackageImplCopyWithImpl<$Res>
    extends _$TokenPackageCopyWithImpl<$Res, _$TokenPackageImpl>
    implements _$$TokenPackageImplCopyWith<$Res> {
  __$$TokenPackageImplCopyWithImpl(
      _$TokenPackageImpl _value, $Res Function(_$TokenPackageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tokens = null,
    Object? price = null,
    Object? currency = null,
    Object? pricePerToken = null,
    Object? savings = null,
    Object? description = null,
    Object? badge = freezed,
  }) {
    return _then(_$TokenPackageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerToken: null == pricePerToken
          ? _value.pricePerToken
          : pricePerToken // ignore: cast_nullable_to_non_nullable
              as double,
      savings: null == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TokenPackageImpl extends _TokenPackage {
  const _$TokenPackageImpl(
      {required this.id,
      required this.name,
      required this.tokens,
      required this.price,
      required this.currency,
      required this.pricePerToken,
      required this.savings,
      required this.description,
      this.badge})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final int tokens;
  @override
  final double price;
  @override
  final String currency;
  @override
  final double pricePerToken;
  @override
  final double savings;
  @override
  final String description;
  @override
  final String? badge;

  @override
  String toString() {
    return 'TokenPackage(id: $id, name: $name, tokens: $tokens, price: $price, currency: $currency, pricePerToken: $pricePerToken, savings: $savings, description: $description, badge: $badge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenPackageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.pricePerToken, pricePerToken) ||
                other.pricePerToken == pricePerToken) &&
            (identical(other.savings, savings) || other.savings == savings) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.badge, badge) || other.badge == badge));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, tokens, price,
      currency, pricePerToken, savings, description, badge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenPackageImplCopyWith<_$TokenPackageImpl> get copyWith =>
      __$$TokenPackageImplCopyWithImpl<_$TokenPackageImpl>(this, _$identity);
}

abstract class _TokenPackage extends TokenPackage {
  const factory _TokenPackage(
      {required final String id,
      required final String name,
      required final int tokens,
      required final double price,
      required final String currency,
      required final double pricePerToken,
      required final double savings,
      required final String description,
      final String? badge}) = _$TokenPackageImpl;
  const _TokenPackage._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  int get tokens;
  @override
  double get price;
  @override
  String get currency;
  @override
  double get pricePerToken;
  @override
  double get savings;
  @override
  String get description;
  @override
  String? get badge;
  @override
  @JsonKey(ignore: true)
  _$$TokenPackageImplCopyWith<_$TokenPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
