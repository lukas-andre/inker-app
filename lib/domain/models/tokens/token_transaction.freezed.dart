// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TokenTransaction {
  String get id => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get balanceBefore => throw _privateConstructorUsedError;
  int get balanceAfter => throw _privateConstructorUsedError;
  TransactionStatus get status => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenTransactionCopyWith<TokenTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenTransactionCopyWith<$Res> {
  factory $TokenTransactionCopyWith(
          TokenTransaction value, $Res Function(TokenTransaction) then) =
      _$TokenTransactionCopyWithImpl<$Res, TokenTransaction>;
  @useResult
  $Res call(
      {String id,
      TransactionType type,
      int amount,
      int balanceBefore,
      int balanceAfter,
      TransactionStatus status,
      Map<String, dynamic>? metadata,
      DateTime createdAt});
}

/// @nodoc
class _$TokenTransactionCopyWithImpl<$Res, $Val extends TokenTransaction>
    implements $TokenTransactionCopyWith<$Res> {
  _$TokenTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? amount = null,
    Object? balanceBefore = null,
    Object? balanceAfter = null,
    Object? status = null,
    Object? metadata = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      balanceBefore: null == balanceBefore
          ? _value.balanceBefore
          : balanceBefore // ignore: cast_nullable_to_non_nullable
              as int,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenTransactionImplCopyWith<$Res>
    implements $TokenTransactionCopyWith<$Res> {
  factory _$$TokenTransactionImplCopyWith(_$TokenTransactionImpl value,
          $Res Function(_$TokenTransactionImpl) then) =
      __$$TokenTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      TransactionType type,
      int amount,
      int balanceBefore,
      int balanceAfter,
      TransactionStatus status,
      Map<String, dynamic>? metadata,
      DateTime createdAt});
}

/// @nodoc
class __$$TokenTransactionImplCopyWithImpl<$Res>
    extends _$TokenTransactionCopyWithImpl<$Res, _$TokenTransactionImpl>
    implements _$$TokenTransactionImplCopyWith<$Res> {
  __$$TokenTransactionImplCopyWithImpl(_$TokenTransactionImpl _value,
      $Res Function(_$TokenTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? amount = null,
    Object? balanceBefore = null,
    Object? balanceAfter = null,
    Object? status = null,
    Object? metadata = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$TokenTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      balanceBefore: null == balanceBefore
          ? _value.balanceBefore
          : balanceBefore // ignore: cast_nullable_to_non_nullable
              as int,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TokenTransactionImpl extends _TokenTransaction {
  const _$TokenTransactionImpl(
      {required this.id,
      required this.type,
      required this.amount,
      required this.balanceBefore,
      required this.balanceAfter,
      required this.status,
      final Map<String, dynamic>? metadata,
      required this.createdAt})
      : _metadata = metadata,
        super._();

  @override
  final String id;
  @override
  final TransactionType type;
  @override
  final int amount;
  @override
  final int balanceBefore;
  @override
  final int balanceAfter;
  @override
  final TransactionStatus status;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'TokenTransaction(id: $id, type: $type, amount: $amount, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter, status: $status, metadata: $metadata, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.balanceBefore, balanceBefore) ||
                other.balanceBefore == balanceBefore) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      amount,
      balanceBefore,
      balanceAfter,
      status,
      const DeepCollectionEquality().hash(_metadata),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenTransactionImplCopyWith<_$TokenTransactionImpl> get copyWith =>
      __$$TokenTransactionImplCopyWithImpl<_$TokenTransactionImpl>(
          this, _$identity);
}

abstract class _TokenTransaction extends TokenTransaction {
  const factory _TokenTransaction(
      {required final String id,
      required final TransactionType type,
      required final int amount,
      required final int balanceBefore,
      required final int balanceAfter,
      required final TransactionStatus status,
      final Map<String, dynamic>? metadata,
      required final DateTime createdAt}) = _$TokenTransactionImpl;
  const _TokenTransaction._() : super._();

  @override
  String get id;
  @override
  TransactionType get type;
  @override
  int get amount;
  @override
  int get balanceBefore;
  @override
  int get balanceAfter;
  @override
  TransactionStatus get status;
  @override
  Map<String, dynamic>? get metadata;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TokenTransactionImplCopyWith<_$TokenTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
