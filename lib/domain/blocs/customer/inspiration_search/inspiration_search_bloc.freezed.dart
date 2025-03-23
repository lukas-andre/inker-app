// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspiration_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InspirationSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspirationSearchEventCopyWith<$Res> {
  factory $InspirationSearchEventCopyWith(InspirationSearchEvent value,
          $Res Function(InspirationSearchEvent) then) =
      _$InspirationSearchEventCopyWithImpl<$Res, InspirationSearchEvent>;
}

/// @nodoc
class _$InspirationSearchEventCopyWithImpl<$Res,
        $Val extends InspirationSearchEvent>
    implements $InspirationSearchEventCopyWith<$Res> {
  _$InspirationSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InspirationSearchEventSearchWorksImplCopyWith<$Res> {
  factory _$$InspirationSearchEventSearchWorksImplCopyWith(
          _$InspirationSearchEventSearchWorksImpl value,
          $Res Function(_$InspirationSearchEventSearchWorksImpl) then) =
      __$$InspirationSearchEventSearchWorksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query, List<int>? tagIds, SortType? sortBy});
}

/// @nodoc
class __$$InspirationSearchEventSearchWorksImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventSearchWorksImpl>
    implements _$$InspirationSearchEventSearchWorksImplCopyWith<$Res> {
  __$$InspirationSearchEventSearchWorksImplCopyWithImpl(
      _$InspirationSearchEventSearchWorksImpl _value,
      $Res Function(_$InspirationSearchEventSearchWorksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? tagIds = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$InspirationSearchEventSearchWorksImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortType?,
    ));
  }
}

/// @nodoc

class _$InspirationSearchEventSearchWorksImpl
    implements InspirationSearchEventSearchWorks {
  const _$InspirationSearchEventSearchWorksImpl(
      {this.query, final List<int>? tagIds, this.sortBy})
      : _tagIds = tagIds;

  @override
  final String? query;
  final List<int>? _tagIds;
  @override
  List<int>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SortType? sortBy;

  @override
  String toString() {
    return 'InspirationSearchEvent.searchWorks(query: $query, tagIds: $tagIds, sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventSearchWorksImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_tagIds), sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InspirationSearchEventSearchWorksImplCopyWith<
          _$InspirationSearchEventSearchWorksImpl>
      get copyWith => __$$InspirationSearchEventSearchWorksImplCopyWithImpl<
          _$InspirationSearchEventSearchWorksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return searchWorks(query, tagIds, sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return searchWorks?.call(query, tagIds, sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (searchWorks != null) {
      return searchWorks(query, tagIds, sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return searchWorks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return searchWorks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (searchWorks != null) {
      return searchWorks(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventSearchWorks
    implements InspirationSearchEvent {
  const factory InspirationSearchEventSearchWorks(
      {final String? query,
      final List<int>? tagIds,
      final SortType? sortBy}) = _$InspirationSearchEventSearchWorksImpl;

  String? get query;
  List<int>? get tagIds;
  SortType? get sortBy;
  @JsonKey(ignore: true)
  _$$InspirationSearchEventSearchWorksImplCopyWith<
          _$InspirationSearchEventSearchWorksImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InspirationSearchEventSearchStencilsImplCopyWith<$Res> {
  factory _$$InspirationSearchEventSearchStencilsImplCopyWith(
          _$InspirationSearchEventSearchStencilsImpl value,
          $Res Function(_$InspirationSearchEventSearchStencilsImpl) then) =
      __$$InspirationSearchEventSearchStencilsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query, List<int>? tagIds, SortType? sortBy});
}

/// @nodoc
class __$$InspirationSearchEventSearchStencilsImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventSearchStencilsImpl>
    implements _$$InspirationSearchEventSearchStencilsImplCopyWith<$Res> {
  __$$InspirationSearchEventSearchStencilsImplCopyWithImpl(
      _$InspirationSearchEventSearchStencilsImpl _value,
      $Res Function(_$InspirationSearchEventSearchStencilsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? tagIds = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$InspirationSearchEventSearchStencilsImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortType?,
    ));
  }
}

/// @nodoc

class _$InspirationSearchEventSearchStencilsImpl
    implements InspirationSearchEventSearchStencils {
  const _$InspirationSearchEventSearchStencilsImpl(
      {this.query, final List<int>? tagIds, this.sortBy})
      : _tagIds = tagIds;

  @override
  final String? query;
  final List<int>? _tagIds;
  @override
  List<int>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SortType? sortBy;

  @override
  String toString() {
    return 'InspirationSearchEvent.searchStencils(query: $query, tagIds: $tagIds, sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventSearchStencilsImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_tagIds), sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InspirationSearchEventSearchStencilsImplCopyWith<
          _$InspirationSearchEventSearchStencilsImpl>
      get copyWith => __$$InspirationSearchEventSearchStencilsImplCopyWithImpl<
          _$InspirationSearchEventSearchStencilsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return searchStencils(query, tagIds, sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return searchStencils?.call(query, tagIds, sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (searchStencils != null) {
      return searchStencils(query, tagIds, sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return searchStencils(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return searchStencils?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (searchStencils != null) {
      return searchStencils(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventSearchStencils
    implements InspirationSearchEvent {
  const factory InspirationSearchEventSearchStencils(
      {final String? query,
      final List<int>? tagIds,
      final SortType? sortBy}) = _$InspirationSearchEventSearchStencilsImpl;

  String? get query;
  List<int>? get tagIds;
  SortType? get sortBy;
  @JsonKey(ignore: true)
  _$$InspirationSearchEventSearchStencilsImplCopyWith<
          _$InspirationSearchEventSearchStencilsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InspirationSearchEventSearchBothImplCopyWith<$Res> {
  factory _$$InspirationSearchEventSearchBothImplCopyWith(
          _$InspirationSearchEventSearchBothImpl value,
          $Res Function(_$InspirationSearchEventSearchBothImpl) then) =
      __$$InspirationSearchEventSearchBothImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query, List<int>? tagIds, SortType? sortBy});
}

/// @nodoc
class __$$InspirationSearchEventSearchBothImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventSearchBothImpl>
    implements _$$InspirationSearchEventSearchBothImplCopyWith<$Res> {
  __$$InspirationSearchEventSearchBothImplCopyWithImpl(
      _$InspirationSearchEventSearchBothImpl _value,
      $Res Function(_$InspirationSearchEventSearchBothImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? tagIds = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$InspirationSearchEventSearchBothImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortType?,
    ));
  }
}

/// @nodoc

class _$InspirationSearchEventSearchBothImpl
    implements InspirationSearchEventSearchBoth {
  const _$InspirationSearchEventSearchBothImpl(
      {this.query, final List<int>? tagIds, this.sortBy})
      : _tagIds = tagIds;

  @override
  final String? query;
  final List<int>? _tagIds;
  @override
  List<int>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SortType? sortBy;

  @override
  String toString() {
    return 'InspirationSearchEvent.searchBoth(query: $query, tagIds: $tagIds, sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventSearchBothImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_tagIds), sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InspirationSearchEventSearchBothImplCopyWith<
          _$InspirationSearchEventSearchBothImpl>
      get copyWith => __$$InspirationSearchEventSearchBothImplCopyWithImpl<
          _$InspirationSearchEventSearchBothImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return searchBoth(query, tagIds, sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return searchBoth?.call(query, tagIds, sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (searchBoth != null) {
      return searchBoth(query, tagIds, sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return searchBoth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return searchBoth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (searchBoth != null) {
      return searchBoth(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventSearchBoth
    implements InspirationSearchEvent {
  const factory InspirationSearchEventSearchBoth(
      {final String? query,
      final List<int>? tagIds,
      final SortType? sortBy}) = _$InspirationSearchEventSearchBothImpl;

  String? get query;
  List<int>? get tagIds;
  SortType? get sortBy;
  @JsonKey(ignore: true)
  _$$InspirationSearchEventSearchBothImplCopyWith<
          _$InspirationSearchEventSearchBothImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InspirationSearchEventLoadMoreWorksImplCopyWith<$Res> {
  factory _$$InspirationSearchEventLoadMoreWorksImplCopyWith(
          _$InspirationSearchEventLoadMoreWorksImpl value,
          $Res Function(_$InspirationSearchEventLoadMoreWorksImpl) then) =
      __$$InspirationSearchEventLoadMoreWorksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InspirationSearchEventLoadMoreWorksImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventLoadMoreWorksImpl>
    implements _$$InspirationSearchEventLoadMoreWorksImplCopyWith<$Res> {
  __$$InspirationSearchEventLoadMoreWorksImplCopyWithImpl(
      _$InspirationSearchEventLoadMoreWorksImpl _value,
      $Res Function(_$InspirationSearchEventLoadMoreWorksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InspirationSearchEventLoadMoreWorksImpl
    implements InspirationSearchEventLoadMoreWorks {
  const _$InspirationSearchEventLoadMoreWorksImpl();

  @override
  String toString() {
    return 'InspirationSearchEvent.loadMoreWorks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventLoadMoreWorksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return loadMoreWorks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return loadMoreWorks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadMoreWorks != null) {
      return loadMoreWorks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return loadMoreWorks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return loadMoreWorks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (loadMoreWorks != null) {
      return loadMoreWorks(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventLoadMoreWorks
    implements InspirationSearchEvent {
  const factory InspirationSearchEventLoadMoreWorks() =
      _$InspirationSearchEventLoadMoreWorksImpl;
}

/// @nodoc
abstract class _$$InspirationSearchEventLoadMoreStencilsImplCopyWith<$Res> {
  factory _$$InspirationSearchEventLoadMoreStencilsImplCopyWith(
          _$InspirationSearchEventLoadMoreStencilsImpl value,
          $Res Function(_$InspirationSearchEventLoadMoreStencilsImpl) then) =
      __$$InspirationSearchEventLoadMoreStencilsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InspirationSearchEventLoadMoreStencilsImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventLoadMoreStencilsImpl>
    implements _$$InspirationSearchEventLoadMoreStencilsImplCopyWith<$Res> {
  __$$InspirationSearchEventLoadMoreStencilsImplCopyWithImpl(
      _$InspirationSearchEventLoadMoreStencilsImpl _value,
      $Res Function(_$InspirationSearchEventLoadMoreStencilsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InspirationSearchEventLoadMoreStencilsImpl
    implements InspirationSearchEventLoadMoreStencils {
  const _$InspirationSearchEventLoadMoreStencilsImpl();

  @override
  String toString() {
    return 'InspirationSearchEvent.loadMoreStencils()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventLoadMoreStencilsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return loadMoreStencils();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return loadMoreStencils?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadMoreStencils != null) {
      return loadMoreStencils();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return loadMoreStencils(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return loadMoreStencils?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (loadMoreStencils != null) {
      return loadMoreStencils(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventLoadMoreStencils
    implements InspirationSearchEvent {
  const factory InspirationSearchEventLoadMoreStencils() =
      _$InspirationSearchEventLoadMoreStencilsImpl;
}

/// @nodoc
abstract class _$$InspirationSearchEventChangeContentTypeImplCopyWith<$Res> {
  factory _$$InspirationSearchEventChangeContentTypeImplCopyWith(
          _$InspirationSearchEventChangeContentTypeImpl value,
          $Res Function(_$InspirationSearchEventChangeContentTypeImpl) then) =
      __$$InspirationSearchEventChangeContentTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContentType contentType});
}

/// @nodoc
class __$$InspirationSearchEventChangeContentTypeImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventChangeContentTypeImpl>
    implements _$$InspirationSearchEventChangeContentTypeImplCopyWith<$Res> {
  __$$InspirationSearchEventChangeContentTypeImplCopyWithImpl(
      _$InspirationSearchEventChangeContentTypeImpl _value,
      $Res Function(_$InspirationSearchEventChangeContentTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
  }) {
    return _then(_$InspirationSearchEventChangeContentTypeImpl(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
    ));
  }
}

/// @nodoc

class _$InspirationSearchEventChangeContentTypeImpl
    implements InspirationSearchEventChangeContentType {
  const _$InspirationSearchEventChangeContentTypeImpl(
      {required this.contentType});

  @override
  final ContentType contentType;

  @override
  String toString() {
    return 'InspirationSearchEvent.changeContentType(contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventChangeContentTypeImpl &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InspirationSearchEventChangeContentTypeImplCopyWith<
          _$InspirationSearchEventChangeContentTypeImpl>
      get copyWith =>
          __$$InspirationSearchEventChangeContentTypeImplCopyWithImpl<
              _$InspirationSearchEventChangeContentTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return changeContentType(contentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return changeContentType?.call(contentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changeContentType != null) {
      return changeContentType(contentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return changeContentType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return changeContentType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (changeContentType != null) {
      return changeContentType(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventChangeContentType
    implements InspirationSearchEvent {
  const factory InspirationSearchEventChangeContentType(
          {required final ContentType contentType}) =
      _$InspirationSearchEventChangeContentTypeImpl;

  ContentType get contentType;
  @JsonKey(ignore: true)
  _$$InspirationSearchEventChangeContentTypeImplCopyWith<
          _$InspirationSearchEventChangeContentTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InspirationSearchEventChangeSortTypeImplCopyWith<$Res> {
  factory _$$InspirationSearchEventChangeSortTypeImplCopyWith(
          _$InspirationSearchEventChangeSortTypeImpl value,
          $Res Function(_$InspirationSearchEventChangeSortTypeImpl) then) =
      __$$InspirationSearchEventChangeSortTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SortType sortType});
}

/// @nodoc
class __$$InspirationSearchEventChangeSortTypeImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventChangeSortTypeImpl>
    implements _$$InspirationSearchEventChangeSortTypeImplCopyWith<$Res> {
  __$$InspirationSearchEventChangeSortTypeImplCopyWithImpl(
      _$InspirationSearchEventChangeSortTypeImpl _value,
      $Res Function(_$InspirationSearchEventChangeSortTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_$InspirationSearchEventChangeSortTypeImpl(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
    ));
  }
}

/// @nodoc

class _$InspirationSearchEventChangeSortTypeImpl
    implements InspirationSearchEventChangeSortType {
  const _$InspirationSearchEventChangeSortTypeImpl({required this.sortType});

  @override
  final SortType sortType;

  @override
  String toString() {
    return 'InspirationSearchEvent.changeSortType(sortType: $sortType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventChangeSortTypeImpl &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InspirationSearchEventChangeSortTypeImplCopyWith<
          _$InspirationSearchEventChangeSortTypeImpl>
      get copyWith => __$$InspirationSearchEventChangeSortTypeImplCopyWithImpl<
          _$InspirationSearchEventChangeSortTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return changeSortType(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return changeSortType?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changeSortType != null) {
      return changeSortType(sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return changeSortType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return changeSortType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (changeSortType != null) {
      return changeSortType(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventChangeSortType
    implements InspirationSearchEvent {
  const factory InspirationSearchEventChangeSortType(
          {required final SortType sortType}) =
      _$InspirationSearchEventChangeSortTypeImpl;

  SortType get sortType;
  @JsonKey(ignore: true)
  _$$InspirationSearchEventChangeSortTypeImplCopyWith<
          _$InspirationSearchEventChangeSortTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InspirationSearchEventGetPopularTagsImplCopyWith<$Res> {
  factory _$$InspirationSearchEventGetPopularTagsImplCopyWith(
          _$InspirationSearchEventGetPopularTagsImpl value,
          $Res Function(_$InspirationSearchEventGetPopularTagsImpl) then) =
      __$$InspirationSearchEventGetPopularTagsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InspirationSearchEventGetPopularTagsImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventGetPopularTagsImpl>
    implements _$$InspirationSearchEventGetPopularTagsImplCopyWith<$Res> {
  __$$InspirationSearchEventGetPopularTagsImplCopyWithImpl(
      _$InspirationSearchEventGetPopularTagsImpl _value,
      $Res Function(_$InspirationSearchEventGetPopularTagsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InspirationSearchEventGetPopularTagsImpl
    implements InspirationSearchEventGetPopularTags {
  const _$InspirationSearchEventGetPopularTagsImpl();

  @override
  String toString() {
    return 'InspirationSearchEvent.getPopularTags()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventGetPopularTagsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return getPopularTags();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return getPopularTags?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getPopularTags != null) {
      return getPopularTags();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return getPopularTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return getPopularTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (getPopularTags != null) {
      return getPopularTags(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventGetPopularTags
    implements InspirationSearchEvent {
  const factory InspirationSearchEventGetPopularTags() =
      _$InspirationSearchEventGetPopularTagsImpl;
}

/// @nodoc
abstract class _$$InspirationSearchEventFilterByTagsImplCopyWith<$Res> {
  factory _$$InspirationSearchEventFilterByTagsImplCopyWith(
          _$InspirationSearchEventFilterByTagsImpl value,
          $Res Function(_$InspirationSearchEventFilterByTagsImpl) then) =
      __$$InspirationSearchEventFilterByTagsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> tagIds});
}

/// @nodoc
class __$$InspirationSearchEventFilterByTagsImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventFilterByTagsImpl>
    implements _$$InspirationSearchEventFilterByTagsImplCopyWith<$Res> {
  __$$InspirationSearchEventFilterByTagsImplCopyWithImpl(
      _$InspirationSearchEventFilterByTagsImpl _value,
      $Res Function(_$InspirationSearchEventFilterByTagsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagIds = null,
  }) {
    return _then(_$InspirationSearchEventFilterByTagsImpl(
      tagIds: null == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$InspirationSearchEventFilterByTagsImpl
    implements InspirationSearchEventFilterByTags {
  const _$InspirationSearchEventFilterByTagsImpl(
      {required final List<int> tagIds})
      : _tagIds = tagIds;

  final List<int> _tagIds;
  @override
  List<int> get tagIds {
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagIds);
  }

  @override
  String toString() {
    return 'InspirationSearchEvent.filterByTags(tagIds: $tagIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventFilterByTagsImpl &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InspirationSearchEventFilterByTagsImplCopyWith<
          _$InspirationSearchEventFilterByTagsImpl>
      get copyWith => __$$InspirationSearchEventFilterByTagsImplCopyWithImpl<
          _$InspirationSearchEventFilterByTagsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return filterByTags(tagIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return filterByTags?.call(tagIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (filterByTags != null) {
      return filterByTags(tagIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return filterByTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return filterByTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (filterByTags != null) {
      return filterByTags(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventFilterByTags
    implements InspirationSearchEvent {
  const factory InspirationSearchEventFilterByTags(
          {required final List<int> tagIds}) =
      _$InspirationSearchEventFilterByTagsImpl;

  List<int> get tagIds;
  @JsonKey(ignore: true)
  _$$InspirationSearchEventFilterByTagsImplCopyWith<
          _$InspirationSearchEventFilterByTagsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InspirationSearchEventClearFiltersImplCopyWith<$Res> {
  factory _$$InspirationSearchEventClearFiltersImplCopyWith(
          _$InspirationSearchEventClearFiltersImpl value,
          $Res Function(_$InspirationSearchEventClearFiltersImpl) then) =
      __$$InspirationSearchEventClearFiltersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InspirationSearchEventClearFiltersImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventClearFiltersImpl>
    implements _$$InspirationSearchEventClearFiltersImplCopyWith<$Res> {
  __$$InspirationSearchEventClearFiltersImplCopyWithImpl(
      _$InspirationSearchEventClearFiltersImpl _value,
      $Res Function(_$InspirationSearchEventClearFiltersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InspirationSearchEventClearFiltersImpl
    implements InspirationSearchEventClearFilters {
  const _$InspirationSearchEventClearFiltersImpl();

  @override
  String toString() {
    return 'InspirationSearchEvent.clearFilters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventClearFiltersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return clearFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return clearFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (clearFilters != null) {
      return clearFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return clearFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return clearFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (clearFilters != null) {
      return clearFilters(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventClearFilters
    implements InspirationSearchEvent {
  const factory InspirationSearchEventClearFilters() =
      _$InspirationSearchEventClearFiltersImpl;
}

/// @nodoc
abstract class _$$InspirationSearchEventResetImplCopyWith<$Res> {
  factory _$$InspirationSearchEventResetImplCopyWith(
          _$InspirationSearchEventResetImpl value,
          $Res Function(_$InspirationSearchEventResetImpl) then) =
      __$$InspirationSearchEventResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InspirationSearchEventResetImplCopyWithImpl<$Res>
    extends _$InspirationSearchEventCopyWithImpl<$Res,
        _$InspirationSearchEventResetImpl>
    implements _$$InspirationSearchEventResetImplCopyWith<$Res> {
  __$$InspirationSearchEventResetImplCopyWithImpl(
      _$InspirationSearchEventResetImpl _value,
      $Res Function(_$InspirationSearchEventResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InspirationSearchEventResetImpl implements InspirationSearchEventReset {
  const _$InspirationSearchEventResetImpl();

  @override
  String toString() {
    return 'InspirationSearchEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchEventResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchWorks,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchStencils,
    required TResult Function(
            String? query, List<int>? tagIds, SortType? sortBy)
        searchBoth,
    required TResult Function() loadMoreWorks,
    required TResult Function() loadMoreStencils,
    required TResult Function(ContentType contentType) changeContentType,
    required TResult Function(SortType sortType) changeSortType,
    required TResult Function() getPopularTags,
    required TResult Function(List<int> tagIds) filterByTags,
    required TResult Function() clearFilters,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult? Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult? Function()? loadMoreWorks,
    TResult? Function()? loadMoreStencils,
    TResult? Function(ContentType contentType)? changeContentType,
    TResult? Function(SortType sortType)? changeSortType,
    TResult? Function()? getPopularTags,
    TResult? Function(List<int> tagIds)? filterByTags,
    TResult? Function()? clearFilters,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchWorks,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchStencils,
    TResult Function(String? query, List<int>? tagIds, SortType? sortBy)?
        searchBoth,
    TResult Function()? loadMoreWorks,
    TResult Function()? loadMoreStencils,
    TResult Function(ContentType contentType)? changeContentType,
    TResult Function(SortType sortType)? changeSortType,
    TResult Function()? getPopularTags,
    TResult Function(List<int> tagIds)? filterByTags,
    TResult Function()? clearFilters,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchEventSearchWorks value)
        searchWorks,
    required TResult Function(InspirationSearchEventSearchStencils value)
        searchStencils,
    required TResult Function(InspirationSearchEventSearchBoth value)
        searchBoth,
    required TResult Function(InspirationSearchEventLoadMoreWorks value)
        loadMoreWorks,
    required TResult Function(InspirationSearchEventLoadMoreStencils value)
        loadMoreStencils,
    required TResult Function(InspirationSearchEventChangeContentType value)
        changeContentType,
    required TResult Function(InspirationSearchEventChangeSortType value)
        changeSortType,
    required TResult Function(InspirationSearchEventGetPopularTags value)
        getPopularTags,
    required TResult Function(InspirationSearchEventFilterByTags value)
        filterByTags,
    required TResult Function(InspirationSearchEventClearFilters value)
        clearFilters,
    required TResult Function(InspirationSearchEventReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult? Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult? Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult? Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult? Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult? Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult? Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult? Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult? Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult? Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult? Function(InspirationSearchEventReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchEventSearchWorks value)? searchWorks,
    TResult Function(InspirationSearchEventSearchStencils value)?
        searchStencils,
    TResult Function(InspirationSearchEventSearchBoth value)? searchBoth,
    TResult Function(InspirationSearchEventLoadMoreWorks value)? loadMoreWorks,
    TResult Function(InspirationSearchEventLoadMoreStencils value)?
        loadMoreStencils,
    TResult Function(InspirationSearchEventChangeContentType value)?
        changeContentType,
    TResult Function(InspirationSearchEventChangeSortType value)?
        changeSortType,
    TResult Function(InspirationSearchEventGetPopularTags value)?
        getPopularTags,
    TResult Function(InspirationSearchEventFilterByTags value)? filterByTags,
    TResult Function(InspirationSearchEventClearFilters value)? clearFilters,
    TResult Function(InspirationSearchEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchEventReset implements InspirationSearchEvent {
  const factory InspirationSearchEventReset() =
      _$InspirationSearchEventResetImpl;
}

/// @nodoc
mixin _$InspirationSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchState_Initial value) initial,
    required TResult Function(InspirationSearchState_Loading value) loading,
    required TResult Function(InspirationSearchState_Loaded value) loaded,
    required TResult Function(InspirationSearchState_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchState_Initial value)? initial,
    TResult? Function(InspirationSearchState_Loading value)? loading,
    TResult? Function(InspirationSearchState_Loaded value)? loaded,
    TResult? Function(InspirationSearchState_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchState_Initial value)? initial,
    TResult Function(InspirationSearchState_Loading value)? loading,
    TResult Function(InspirationSearchState_Loaded value)? loaded,
    TResult Function(InspirationSearchState_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspirationSearchStateCopyWith<$Res> {
  factory $InspirationSearchStateCopyWith(InspirationSearchState value,
          $Res Function(InspirationSearchState) then) =
      _$InspirationSearchStateCopyWithImpl<$Res, InspirationSearchState>;
}

/// @nodoc
class _$InspirationSearchStateCopyWithImpl<$Res,
        $Val extends InspirationSearchState>
    implements $InspirationSearchStateCopyWith<$Res> {
  _$InspirationSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InspirationSearchState_InitialImplCopyWith<$Res> {
  factory _$$InspirationSearchState_InitialImplCopyWith(
          _$InspirationSearchState_InitialImpl value,
          $Res Function(_$InspirationSearchState_InitialImpl) then) =
      __$$InspirationSearchState_InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InspirationSearchState_InitialImplCopyWithImpl<$Res>
    extends _$InspirationSearchStateCopyWithImpl<$Res,
        _$InspirationSearchState_InitialImpl>
    implements _$$InspirationSearchState_InitialImplCopyWith<$Res> {
  __$$InspirationSearchState_InitialImplCopyWithImpl(
      _$InspirationSearchState_InitialImpl _value,
      $Res Function(_$InspirationSearchState_InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InspirationSearchState_InitialImpl
    implements InspirationSearchState_Initial {
  const _$InspirationSearchState_InitialImpl();

  @override
  String toString() {
    return 'InspirationSearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchState_InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)?
        loaded,
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
    required TResult Function(InspirationSearchState_Initial value) initial,
    required TResult Function(InspirationSearchState_Loading value) loading,
    required TResult Function(InspirationSearchState_Loaded value) loaded,
    required TResult Function(InspirationSearchState_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchState_Initial value)? initial,
    TResult? Function(InspirationSearchState_Loading value)? loading,
    TResult? Function(InspirationSearchState_Loaded value)? loaded,
    TResult? Function(InspirationSearchState_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchState_Initial value)? initial,
    TResult Function(InspirationSearchState_Loading value)? loading,
    TResult Function(InspirationSearchState_Loaded value)? loaded,
    TResult Function(InspirationSearchState_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchState_Initial
    implements InspirationSearchState {
  const factory InspirationSearchState_Initial() =
      _$InspirationSearchState_InitialImpl;
}

/// @nodoc
abstract class _$$InspirationSearchState_LoadingImplCopyWith<$Res> {
  factory _$$InspirationSearchState_LoadingImplCopyWith(
          _$InspirationSearchState_LoadingImpl value,
          $Res Function(_$InspirationSearchState_LoadingImpl) then) =
      __$$InspirationSearchState_LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InspirationSearchState_LoadingImplCopyWithImpl<$Res>
    extends _$InspirationSearchStateCopyWithImpl<$Res,
        _$InspirationSearchState_LoadingImpl>
    implements _$$InspirationSearchState_LoadingImplCopyWith<$Res> {
  __$$InspirationSearchState_LoadingImplCopyWithImpl(
      _$InspirationSearchState_LoadingImpl _value,
      $Res Function(_$InspirationSearchState_LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InspirationSearchState_LoadingImpl
    implements InspirationSearchState_Loading {
  const _$InspirationSearchState_LoadingImpl();

  @override
  String toString() {
    return 'InspirationSearchState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchState_LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)?
        loaded,
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
    required TResult Function(InspirationSearchState_Initial value) initial,
    required TResult Function(InspirationSearchState_Loading value) loading,
    required TResult Function(InspirationSearchState_Loaded value) loaded,
    required TResult Function(InspirationSearchState_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchState_Initial value)? initial,
    TResult? Function(InspirationSearchState_Loading value)? loading,
    TResult? Function(InspirationSearchState_Loaded value)? loaded,
    TResult? Function(InspirationSearchState_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchState_Initial value)? initial,
    TResult Function(InspirationSearchState_Loading value)? loading,
    TResult Function(InspirationSearchState_Loaded value)? loaded,
    TResult Function(InspirationSearchState_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchState_Loading
    implements InspirationSearchState {
  const factory InspirationSearchState_Loading() =
      _$InspirationSearchState_LoadingImpl;
}

/// @nodoc
abstract class _$$InspirationSearchState_LoadedImplCopyWith<$Res> {
  factory _$$InspirationSearchState_LoadedImplCopyWith(
          _$InspirationSearchState_LoadedImpl value,
          $Res Function(_$InspirationSearchState_LoadedImpl) then) =
      __$$InspirationSearchState_LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Work> works,
      List<Stencil> stencils,
      ContentType contentType,
      List<int> selectedTagIds,
      String searchQuery,
      SortType sortType,
      int currentWorkPage,
      bool hasMoreWorks,
      int currentStencilPage,
      bool hasMoreStencils,
      List<TagSuggestionResponseDto> popularTags});
}

/// @nodoc
class __$$InspirationSearchState_LoadedImplCopyWithImpl<$Res>
    extends _$InspirationSearchStateCopyWithImpl<$Res,
        _$InspirationSearchState_LoadedImpl>
    implements _$$InspirationSearchState_LoadedImplCopyWith<$Res> {
  __$$InspirationSearchState_LoadedImplCopyWithImpl(
      _$InspirationSearchState_LoadedImpl _value,
      $Res Function(_$InspirationSearchState_LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? works = null,
    Object? stencils = null,
    Object? contentType = null,
    Object? selectedTagIds = null,
    Object? searchQuery = null,
    Object? sortType = null,
    Object? currentWorkPage = null,
    Object? hasMoreWorks = null,
    Object? currentStencilPage = null,
    Object? hasMoreStencils = null,
    Object? popularTags = null,
  }) {
    return _then(_$InspirationSearchState_LoadedImpl(
      works: null == works
          ? _value._works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>,
      stencils: null == stencils
          ? _value._stencils
          : stencils // ignore: cast_nullable_to_non_nullable
              as List<Stencil>,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      selectedTagIds: null == selectedTagIds
          ? _value._selectedTagIds
          : selectedTagIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      currentWorkPage: null == currentWorkPage
          ? _value.currentWorkPage
          : currentWorkPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMoreWorks: null == hasMoreWorks
          ? _value.hasMoreWorks
          : hasMoreWorks // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStencilPage: null == currentStencilPage
          ? _value.currentStencilPage
          : currentStencilPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMoreStencils: null == hasMoreStencils
          ? _value.hasMoreStencils
          : hasMoreStencils // ignore: cast_nullable_to_non_nullable
              as bool,
      popularTags: null == popularTags
          ? _value._popularTags
          : popularTags // ignore: cast_nullable_to_non_nullable
              as List<TagSuggestionResponseDto>,
    ));
  }
}

/// @nodoc

class _$InspirationSearchState_LoadedImpl
    implements InspirationSearchState_Loaded {
  const _$InspirationSearchState_LoadedImpl(
      {required final List<Work> works,
      required final List<Stencil> stencils,
      required this.contentType,
      required final List<int> selectedTagIds,
      required this.searchQuery,
      required this.sortType,
      required this.currentWorkPage,
      required this.hasMoreWorks,
      required this.currentStencilPage,
      required this.hasMoreStencils,
      final List<TagSuggestionResponseDto> popularTags = const []})
      : _works = works,
        _stencils = stencils,
        _selectedTagIds = selectedTagIds,
        _popularTags = popularTags;

  final List<Work> _works;
  @override
  List<Work> get works {
    if (_works is EqualUnmodifiableListView) return _works;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_works);
  }

  final List<Stencil> _stencils;
  @override
  List<Stencil> get stencils {
    if (_stencils is EqualUnmodifiableListView) return _stencils;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stencils);
  }

  @override
  final ContentType contentType;
  final List<int> _selectedTagIds;
  @override
  List<int> get selectedTagIds {
    if (_selectedTagIds is EqualUnmodifiableListView) return _selectedTagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedTagIds);
  }

  @override
  final String searchQuery;
  @override
  final SortType sortType;
  @override
  final int currentWorkPage;
  @override
  final bool hasMoreWorks;
  @override
  final int currentStencilPage;
  @override
  final bool hasMoreStencils;
  final List<TagSuggestionResponseDto> _popularTags;
  @override
  @JsonKey()
  List<TagSuggestionResponseDto> get popularTags {
    if (_popularTags is EqualUnmodifiableListView) return _popularTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularTags);
  }

  @override
  String toString() {
    return 'InspirationSearchState.loaded(works: $works, stencils: $stencils, contentType: $contentType, selectedTagIds: $selectedTagIds, searchQuery: $searchQuery, sortType: $sortType, currentWorkPage: $currentWorkPage, hasMoreWorks: $hasMoreWorks, currentStencilPage: $currentStencilPage, hasMoreStencils: $hasMoreStencils, popularTags: $popularTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchState_LoadedImpl &&
            const DeepCollectionEquality().equals(other._works, _works) &&
            const DeepCollectionEquality().equals(other._stencils, _stencils) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality()
                .equals(other._selectedTagIds, _selectedTagIds) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            (identical(other.currentWorkPage, currentWorkPage) ||
                other.currentWorkPage == currentWorkPage) &&
            (identical(other.hasMoreWorks, hasMoreWorks) ||
                other.hasMoreWorks == hasMoreWorks) &&
            (identical(other.currentStencilPage, currentStencilPage) ||
                other.currentStencilPage == currentStencilPage) &&
            (identical(other.hasMoreStencils, hasMoreStencils) ||
                other.hasMoreStencils == hasMoreStencils) &&
            const DeepCollectionEquality()
                .equals(other._popularTags, _popularTags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_works),
      const DeepCollectionEquality().hash(_stencils),
      contentType,
      const DeepCollectionEquality().hash(_selectedTagIds),
      searchQuery,
      sortType,
      currentWorkPage,
      hasMoreWorks,
      currentStencilPage,
      hasMoreStencils,
      const DeepCollectionEquality().hash(_popularTags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InspirationSearchState_LoadedImplCopyWith<
          _$InspirationSearchState_LoadedImpl>
      get copyWith => __$$InspirationSearchState_LoadedImplCopyWithImpl<
          _$InspirationSearchState_LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
        works,
        stencils,
        contentType,
        selectedTagIds,
        searchQuery,
        sortType,
        currentWorkPage,
        hasMoreWorks,
        currentStencilPage,
        hasMoreStencils,
        popularTags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        works,
        stencils,
        contentType,
        selectedTagIds,
        searchQuery,
        sortType,
        currentWorkPage,
        hasMoreWorks,
        currentStencilPage,
        hasMoreStencils,
        popularTags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          works,
          stencils,
          contentType,
          selectedTagIds,
          searchQuery,
          sortType,
          currentWorkPage,
          hasMoreWorks,
          currentStencilPage,
          hasMoreStencils,
          popularTags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspirationSearchState_Initial value) initial,
    required TResult Function(InspirationSearchState_Loading value) loading,
    required TResult Function(InspirationSearchState_Loaded value) loaded,
    required TResult Function(InspirationSearchState_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchState_Initial value)? initial,
    TResult? Function(InspirationSearchState_Loading value)? loading,
    TResult? Function(InspirationSearchState_Loaded value)? loaded,
    TResult? Function(InspirationSearchState_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchState_Initial value)? initial,
    TResult Function(InspirationSearchState_Loading value)? loading,
    TResult Function(InspirationSearchState_Loaded value)? loaded,
    TResult Function(InspirationSearchState_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchState_Loaded implements InspirationSearchState {
  const factory InspirationSearchState_Loaded(
          {required final List<Work> works,
          required final List<Stencil> stencils,
          required final ContentType contentType,
          required final List<int> selectedTagIds,
          required final String searchQuery,
          required final SortType sortType,
          required final int currentWorkPage,
          required final bool hasMoreWorks,
          required final int currentStencilPage,
          required final bool hasMoreStencils,
          final List<TagSuggestionResponseDto> popularTags}) =
      _$InspirationSearchState_LoadedImpl;

  List<Work> get works;
  List<Stencil> get stencils;
  ContentType get contentType;
  List<int> get selectedTagIds;
  String get searchQuery;
  SortType get sortType;
  int get currentWorkPage;
  bool get hasMoreWorks;
  int get currentStencilPage;
  bool get hasMoreStencils;
  List<TagSuggestionResponseDto> get popularTags;
  @JsonKey(ignore: true)
  _$$InspirationSearchState_LoadedImplCopyWith<
          _$InspirationSearchState_LoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InspirationSearchState_ErrorImplCopyWith<$Res> {
  factory _$$InspirationSearchState_ErrorImplCopyWith(
          _$InspirationSearchState_ErrorImpl value,
          $Res Function(_$InspirationSearchState_ErrorImpl) then) =
      __$$InspirationSearchState_ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InspirationSearchState_ErrorImplCopyWithImpl<$Res>
    extends _$InspirationSearchStateCopyWithImpl<$Res,
        _$InspirationSearchState_ErrorImpl>
    implements _$$InspirationSearchState_ErrorImplCopyWith<$Res> {
  __$$InspirationSearchState_ErrorImplCopyWithImpl(
      _$InspirationSearchState_ErrorImpl _value,
      $Res Function(_$InspirationSearchState_ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InspirationSearchState_ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InspirationSearchState_ErrorImpl
    implements InspirationSearchState_Error {
  const _$InspirationSearchState_ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'InspirationSearchState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspirationSearchState_ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InspirationSearchState_ErrorImplCopyWith<
          _$InspirationSearchState_ErrorImpl>
      get copyWith => __$$InspirationSearchState_ErrorImplCopyWithImpl<
          _$InspirationSearchState_ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Work> works,
            List<Stencil> stencils,
            ContentType contentType,
            List<int> selectedTagIds,
            String searchQuery,
            SortType sortType,
            int currentWorkPage,
            bool hasMoreWorks,
            int currentStencilPage,
            bool hasMoreStencils,
            List<TagSuggestionResponseDto> popularTags)?
        loaded,
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
    required TResult Function(InspirationSearchState_Initial value) initial,
    required TResult Function(InspirationSearchState_Loading value) loading,
    required TResult Function(InspirationSearchState_Loaded value) loaded,
    required TResult Function(InspirationSearchState_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InspirationSearchState_Initial value)? initial,
    TResult? Function(InspirationSearchState_Loading value)? loading,
    TResult? Function(InspirationSearchState_Loaded value)? loaded,
    TResult? Function(InspirationSearchState_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspirationSearchState_Initial value)? initial,
    TResult Function(InspirationSearchState_Loading value)? loading,
    TResult Function(InspirationSearchState_Loaded value)? loaded,
    TResult Function(InspirationSearchState_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InspirationSearchState_Error implements InspirationSearchState {
  const factory InspirationSearchState_Error({required final String message}) =
      _$InspirationSearchState_ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InspirationSearchState_ErrorImplCopyWith<
          _$InspirationSearchState_ErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
