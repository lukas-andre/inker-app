// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotation_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuotationListResponse _$QuotationListResponseFromJson(
    Map<String, dynamic> json) {
  return _QuotationListResponse.fromJson(json);
}

/// @nodoc
mixin _$QuotationListResponse {
  List<Quotation> get items => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotationListResponseCopyWith<QuotationListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationListResponseCopyWith<$Res> {
  factory $QuotationListResponseCopyWith(QuotationListResponse value,
          $Res Function(QuotationListResponse) then) =
      _$QuotationListResponseCopyWithImpl<$Res, QuotationListResponse>;
  @useResult
  $Res call({List<Quotation> items, int total});
}

/// @nodoc
class _$QuotationListResponseCopyWithImpl<$Res,
        $Val extends QuotationListResponse>
    implements $QuotationListResponseCopyWith<$Res> {
  _$QuotationListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Quotation>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotationListResponseImplCopyWith<$Res>
    implements $QuotationListResponseCopyWith<$Res> {
  factory _$$QuotationListResponseImplCopyWith(
          _$QuotationListResponseImpl value,
          $Res Function(_$QuotationListResponseImpl) then) =
      __$$QuotationListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Quotation> items, int total});
}

/// @nodoc
class __$$QuotationListResponseImplCopyWithImpl<$Res>
    extends _$QuotationListResponseCopyWithImpl<$Res,
        _$QuotationListResponseImpl>
    implements _$$QuotationListResponseImplCopyWith<$Res> {
  __$$QuotationListResponseImplCopyWithImpl(_$QuotationListResponseImpl _value,
      $Res Function(_$QuotationListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
  }) {
    return _then(_$QuotationListResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Quotation>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotationListResponseImpl implements _QuotationListResponse {
  const _$QuotationListResponseImpl(
      {required final List<Quotation> items, required this.total})
      : _items = items;

  factory _$QuotationListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotationListResponseImplFromJson(json);

  final List<Quotation> _items;
  @override
  List<Quotation> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'QuotationListResponse(items: $items, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationListResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationListResponseImplCopyWith<_$QuotationListResponseImpl>
      get copyWith => __$$QuotationListResponseImplCopyWithImpl<
          _$QuotationListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotationListResponseImplToJson(
      this,
    );
  }
}

abstract class _QuotationListResponse implements QuotationListResponse {
  const factory _QuotationListResponse(
      {required final List<Quotation> items,
      required final int total}) = _$QuotationListResponseImpl;

  factory _QuotationListResponse.fromJson(Map<String, dynamic> json) =
      _$QuotationListResponseImpl.fromJson;

  @override
  List<Quotation> get items;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$QuotationListResponseImplCopyWith<_$QuotationListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
