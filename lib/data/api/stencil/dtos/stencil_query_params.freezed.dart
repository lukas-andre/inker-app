// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stencil_query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StencilQueryParams _$StencilQueryParamsFromJson(Map<String, dynamic> json) {
  return _StencilQueryParams.fromJson(json);
}

/// @nodoc
mixin _$StencilQueryParams {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  bool? get featured => throw _privateConstructorUsedError;
  StencilSource? get source => throw _privateConstructorUsedError;
  bool get includeHidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StencilQueryParamsCopyWith<StencilQueryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StencilQueryParamsCopyWith<$Res> {
  factory $StencilQueryParamsCopyWith(
          StencilQueryParams value, $Res Function(StencilQueryParams) then) =
      _$StencilQueryParamsCopyWithImpl<$Res, StencilQueryParams>;
  @useResult
  $Res call(
      {int page,
      int limit,
      bool? featured,
      StencilSource? source,
      bool includeHidden});
}

/// @nodoc
class _$StencilQueryParamsCopyWithImpl<$Res, $Val extends StencilQueryParams>
    implements $StencilQueryParamsCopyWith<$Res> {
  _$StencilQueryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? featured = freezed,
    Object? source = freezed,
    Object? includeHidden = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as StencilSource?,
      includeHidden: null == includeHidden
          ? _value.includeHidden
          : includeHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StencilQueryParamsImplCopyWith<$Res>
    implements $StencilQueryParamsCopyWith<$Res> {
  factory _$$StencilQueryParamsImplCopyWith(_$StencilQueryParamsImpl value,
          $Res Function(_$StencilQueryParamsImpl) then) =
      __$$StencilQueryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int limit,
      bool? featured,
      StencilSource? source,
      bool includeHidden});
}

/// @nodoc
class __$$StencilQueryParamsImplCopyWithImpl<$Res>
    extends _$StencilQueryParamsCopyWithImpl<$Res, _$StencilQueryParamsImpl>
    implements _$$StencilQueryParamsImplCopyWith<$Res> {
  __$$StencilQueryParamsImplCopyWithImpl(_$StencilQueryParamsImpl _value,
      $Res Function(_$StencilQueryParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? featured = freezed,
    Object? source = freezed,
    Object? includeHidden = null,
  }) {
    return _then(_$StencilQueryParamsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as StencilSource?,
      includeHidden: null == includeHidden
          ? _value.includeHidden
          : includeHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StencilQueryParamsImpl implements _StencilQueryParams {
  const _$StencilQueryParamsImpl(
      {this.page = 1,
      this.limit = 10,
      this.featured,
      this.source,
      this.includeHidden = false});

  factory _$StencilQueryParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StencilQueryParamsImplFromJson(json);

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  @override
  final bool? featured;
  @override
  final StencilSource? source;
  @override
  @JsonKey()
  final bool includeHidden;

  @override
  String toString() {
    return 'StencilQueryParams(page: $page, limit: $limit, featured: $featured, source: $source, includeHidden: $includeHidden)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StencilQueryParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.includeHidden, includeHidden) ||
                other.includeHidden == includeHidden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, limit, featured, source, includeHidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StencilQueryParamsImplCopyWith<_$StencilQueryParamsImpl> get copyWith =>
      __$$StencilQueryParamsImplCopyWithImpl<_$StencilQueryParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StencilQueryParamsImplToJson(
      this,
    );
  }
}

abstract class _StencilQueryParams implements StencilQueryParams {
  const factory _StencilQueryParams(
      {final int page,
      final int limit,
      final bool? featured,
      final StencilSource? source,
      final bool includeHidden}) = _$StencilQueryParamsImpl;

  factory _StencilQueryParams.fromJson(Map<String, dynamic> json) =
      _$StencilQueryParamsImpl.fromJson;

  @override
  int get page;
  @override
  int get limit;
  @override
  bool? get featured;
  @override
  StencilSource? get source;
  @override
  bool get includeHidden;
  @override
  @JsonKey(ignore: true)
  _$$StencilQueryParamsImplCopyWith<_$StencilQueryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginatedStencilResponse _$PaginatedStencilResponseFromJson(
    Map<String, dynamic> json) {
  return _PaginatedStencilResponse.fromJson(json);
}

/// @nodoc
mixin _$PaginatedStencilResponse {
  List<dynamic> get items => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedStencilResponseCopyWith<PaginatedStencilResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedStencilResponseCopyWith<$Res> {
  factory $PaginatedStencilResponseCopyWith(PaginatedStencilResponse value,
          $Res Function(PaginatedStencilResponse) then) =
      _$PaginatedStencilResponseCopyWithImpl<$Res, PaginatedStencilResponse>;
  @useResult
  $Res call({List<dynamic> items, int total, int page, int limit, int pages});
}

/// @nodoc
class _$PaginatedStencilResponseCopyWithImpl<$Res,
        $Val extends PaginatedStencilResponse>
    implements $PaginatedStencilResponseCopyWith<$Res> {
  _$PaginatedStencilResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedStencilResponseImplCopyWith<$Res>
    implements $PaginatedStencilResponseCopyWith<$Res> {
  factory _$$PaginatedStencilResponseImplCopyWith(
          _$PaginatedStencilResponseImpl value,
          $Res Function(_$PaginatedStencilResponseImpl) then) =
      __$$PaginatedStencilResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> items, int total, int page, int limit, int pages});
}

/// @nodoc
class __$$PaginatedStencilResponseImplCopyWithImpl<$Res>
    extends _$PaginatedStencilResponseCopyWithImpl<$Res,
        _$PaginatedStencilResponseImpl>
    implements _$$PaginatedStencilResponseImplCopyWith<$Res> {
  __$$PaginatedStencilResponseImplCopyWithImpl(
      _$PaginatedStencilResponseImpl _value,
      $Res Function(_$PaginatedStencilResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? pages = null,
  }) {
    return _then(_$PaginatedStencilResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedStencilResponseImpl implements _PaginatedStencilResponse {
  const _$PaginatedStencilResponseImpl(
      {required final List<dynamic> items,
      required this.total,
      required this.page,
      required this.limit,
      required this.pages})
      : _items = items;

  factory _$PaginatedStencilResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedStencilResponseImplFromJson(json);

  final List<dynamic> _items;
  @override
  List<dynamic> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int limit;
  @override
  final int pages;

  @override
  String toString() {
    return 'PaginatedStencilResponse(items: $items, total: $total, page: $page, limit: $limit, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedStencilResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), total, page, limit, pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedStencilResponseImplCopyWith<_$PaginatedStencilResponseImpl>
      get copyWith => __$$PaginatedStencilResponseImplCopyWithImpl<
          _$PaginatedStencilResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedStencilResponseImplToJson(
      this,
    );
  }
}

abstract class _PaginatedStencilResponse implements PaginatedStencilResponse {
  const factory _PaginatedStencilResponse(
      {required final List<dynamic> items,
      required final int total,
      required final int page,
      required final int limit,
      required final int pages}) = _$PaginatedStencilResponseImpl;

  factory _PaginatedStencilResponse.fromJson(Map<String, dynamic> json) =
      _$PaginatedStencilResponseImpl.fromJson;

  @override
  List<dynamic> get items;
  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;
  @override
  int get pages;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedStencilResponseImplCopyWith<_$PaginatedStencilResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
