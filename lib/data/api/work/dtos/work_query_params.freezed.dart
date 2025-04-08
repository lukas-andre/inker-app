// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkQueryParams _$WorkQueryParamsFromJson(Map<String, dynamic> json) {
  return _WorkQueryParams.fromJson(json);
}

/// @nodoc
mixin _$WorkQueryParams {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  bool? get featured => throw _privateConstructorUsedError;
  bool get includeHidden => throw _privateConstructorUsedError;
  List<String>? get tagIds => throw _privateConstructorUsedError;
  String? get searchText => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkQueryParamsCopyWith<WorkQueryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkQueryParamsCopyWith<$Res> {
  factory $WorkQueryParamsCopyWith(
          WorkQueryParams value, $Res Function(WorkQueryParams) then) =
      _$WorkQueryParamsCopyWithImpl<$Res, WorkQueryParams>;
  @useResult
  $Res call(
      {int page,
      int limit,
      bool? featured,
      bool includeHidden,
      List<String>? tagIds,
      String? searchText,
      String? source});
}

/// @nodoc
class _$WorkQueryParamsCopyWithImpl<$Res, $Val extends WorkQueryParams>
    implements $WorkQueryParamsCopyWith<$Res> {
  _$WorkQueryParamsCopyWithImpl(this._value, this._then);

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
    Object? includeHidden = null,
    Object? tagIds = freezed,
    Object? searchText = freezed,
    Object? source = freezed,
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
      includeHidden: null == includeHidden
          ? _value.includeHidden
          : includeHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkQueryParamsImplCopyWith<$Res>
    implements $WorkQueryParamsCopyWith<$Res> {
  factory _$$WorkQueryParamsImplCopyWith(_$WorkQueryParamsImpl value,
          $Res Function(_$WorkQueryParamsImpl) then) =
      __$$WorkQueryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int limit,
      bool? featured,
      bool includeHidden,
      List<String>? tagIds,
      String? searchText,
      String? source});
}

/// @nodoc
class __$$WorkQueryParamsImplCopyWithImpl<$Res>
    extends _$WorkQueryParamsCopyWithImpl<$Res, _$WorkQueryParamsImpl>
    implements _$$WorkQueryParamsImplCopyWith<$Res> {
  __$$WorkQueryParamsImplCopyWithImpl(
      _$WorkQueryParamsImpl _value, $Res Function(_$WorkQueryParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? featured = freezed,
    Object? includeHidden = null,
    Object? tagIds = freezed,
    Object? searchText = freezed,
    Object? source = freezed,
  }) {
    return _then(_$WorkQueryParamsImpl(
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
      includeHidden: null == includeHidden
          ? _value.includeHidden
          : includeHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkQueryParamsImpl implements _WorkQueryParams {
  const _$WorkQueryParamsImpl(
      {this.page = 1,
      this.limit = 10,
      this.featured,
      this.includeHidden = false,
      final List<String>? tagIds,
      this.searchText,
      this.source})
      : _tagIds = tagIds;

  factory _$WorkQueryParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkQueryParamsImplFromJson(json);

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  @override
  final bool? featured;
  @override
  @JsonKey()
  final bool includeHidden;
  final List<String>? _tagIds;
  @override
  List<String>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? searchText;
  @override
  final String? source;

  @override
  String toString() {
    return 'WorkQueryParams(page: $page, limit: $limit, featured: $featured, includeHidden: $includeHidden, tagIds: $tagIds, searchText: $searchText, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkQueryParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.includeHidden, includeHidden) ||
                other.includeHidden == includeHidden) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      limit,
      featured,
      includeHidden,
      const DeepCollectionEquality().hash(_tagIds),
      searchText,
      source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkQueryParamsImplCopyWith<_$WorkQueryParamsImpl> get copyWith =>
      __$$WorkQueryParamsImplCopyWithImpl<_$WorkQueryParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkQueryParamsImplToJson(
      this,
    );
  }
}

abstract class _WorkQueryParams implements WorkQueryParams {
  const factory _WorkQueryParams(
      {final int page,
      final int limit,
      final bool? featured,
      final bool includeHidden,
      final List<String>? tagIds,
      final String? searchText,
      final String? source}) = _$WorkQueryParamsImpl;

  factory _WorkQueryParams.fromJson(Map<String, dynamic> json) =
      _$WorkQueryParamsImpl.fromJson;

  @override
  int get page;
  @override
  int get limit;
  @override
  bool? get featured;
  @override
  bool get includeHidden;
  @override
  List<String>? get tagIds;
  @override
  String? get searchText;
  @override
  String? get source;
  @override
  @JsonKey(ignore: true)
  _$$WorkQueryParamsImplCopyWith<_$WorkQueryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginatedWorkResponse _$PaginatedWorkResponseFromJson(
    Map<String, dynamic> json) {
  return _PaginatedWorkResponse.fromJson(json);
}

/// @nodoc
mixin _$PaginatedWorkResponse {
  List<dynamic> get items => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedWorkResponseCopyWith<PaginatedWorkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedWorkResponseCopyWith<$Res> {
  factory $PaginatedWorkResponseCopyWith(PaginatedWorkResponse value,
          $Res Function(PaginatedWorkResponse) then) =
      _$PaginatedWorkResponseCopyWithImpl<$Res, PaginatedWorkResponse>;
  @useResult
  $Res call({List<dynamic> items, int total, int page, int limit, int pages});
}

/// @nodoc
class _$PaginatedWorkResponseCopyWithImpl<$Res,
        $Val extends PaginatedWorkResponse>
    implements $PaginatedWorkResponseCopyWith<$Res> {
  _$PaginatedWorkResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$PaginatedWorkResponseImplCopyWith<$Res>
    implements $PaginatedWorkResponseCopyWith<$Res> {
  factory _$$PaginatedWorkResponseImplCopyWith(
          _$PaginatedWorkResponseImpl value,
          $Res Function(_$PaginatedWorkResponseImpl) then) =
      __$$PaginatedWorkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> items, int total, int page, int limit, int pages});
}

/// @nodoc
class __$$PaginatedWorkResponseImplCopyWithImpl<$Res>
    extends _$PaginatedWorkResponseCopyWithImpl<$Res,
        _$PaginatedWorkResponseImpl>
    implements _$$PaginatedWorkResponseImplCopyWith<$Res> {
  __$$PaginatedWorkResponseImplCopyWithImpl(_$PaginatedWorkResponseImpl _value,
      $Res Function(_$PaginatedWorkResponseImpl) _then)
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
    return _then(_$PaginatedWorkResponseImpl(
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
class _$PaginatedWorkResponseImpl implements _PaginatedWorkResponse {
  const _$PaginatedWorkResponseImpl(
      {required final List<dynamic> items,
      required this.total,
      required this.page,
      required this.limit,
      required this.pages})
      : _items = items;

  factory _$PaginatedWorkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedWorkResponseImplFromJson(json);

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
    return 'PaginatedWorkResponse(items: $items, total: $total, page: $page, limit: $limit, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedWorkResponseImpl &&
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
  _$$PaginatedWorkResponseImplCopyWith<_$PaginatedWorkResponseImpl>
      get copyWith => __$$PaginatedWorkResponseImplCopyWithImpl<
          _$PaginatedWorkResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedWorkResponseImplToJson(
      this,
    );
  }
}

abstract class _PaginatedWorkResponse implements PaginatedWorkResponse {
  const factory _PaginatedWorkResponse(
      {required final List<dynamic> items,
      required final int total,
      required final int page,
      required final int limit,
      required final int pages}) = _$PaginatedWorkResponseImpl;

  factory _PaginatedWorkResponse.fromJson(Map<String, dynamic> json) =
      _$PaginatedWorkResponseImpl.fromJson;

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
  _$$PaginatedWorkResponseImplCopyWith<_$PaginatedWorkResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
