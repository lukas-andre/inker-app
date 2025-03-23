// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkSearchQueryDto _$WorkSearchQueryDtoFromJson(Map<String, dynamic> json) {
  return _WorkSearchQueryDto.fromJson(json);
}

/// @nodoc
mixin _$WorkSearchQueryDto {
  String? get query => throw _privateConstructorUsedError;
  List<int>? get tagIds => throw _privateConstructorUsedError;
  int? get artistId => throw _privateConstructorUsedError;
  bool? get onlyFeatured => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  bool get includeHidden => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkSearchQueryDtoCopyWith<WorkSearchQueryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkSearchQueryDtoCopyWith<$Res> {
  factory $WorkSearchQueryDtoCopyWith(
          WorkSearchQueryDto value, $Res Function(WorkSearchQueryDto) then) =
      _$WorkSearchQueryDtoCopyWithImpl<$Res, WorkSearchQueryDto>;
  @useResult
  $Res call(
      {String? query,
      List<int>? tagIds,
      int? artistId,
      bool? onlyFeatured,
      String? source,
      bool includeHidden,
      String sortBy,
      int page,
      int limit});
}

/// @nodoc
class _$WorkSearchQueryDtoCopyWithImpl<$Res, $Val extends WorkSearchQueryDto>
    implements $WorkSearchQueryDtoCopyWith<$Res> {
  _$WorkSearchQueryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? tagIds = freezed,
    Object? artistId = freezed,
    Object? onlyFeatured = freezed,
    Object? source = freezed,
    Object? includeHidden = null,
    Object? sortBy = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      onlyFeatured: freezed == onlyFeatured
          ? _value.onlyFeatured
          : onlyFeatured // ignore: cast_nullable_to_non_nullable
              as bool?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      includeHidden: null == includeHidden
          ? _value.includeHidden
          : includeHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkSearchQueryDtoImplCopyWith<$Res>
    implements $WorkSearchQueryDtoCopyWith<$Res> {
  factory _$$WorkSearchQueryDtoImplCopyWith(_$WorkSearchQueryDtoImpl value,
          $Res Function(_$WorkSearchQueryDtoImpl) then) =
      __$$WorkSearchQueryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? query,
      List<int>? tagIds,
      int? artistId,
      bool? onlyFeatured,
      String? source,
      bool includeHidden,
      String sortBy,
      int page,
      int limit});
}

/// @nodoc
class __$$WorkSearchQueryDtoImplCopyWithImpl<$Res>
    extends _$WorkSearchQueryDtoCopyWithImpl<$Res, _$WorkSearchQueryDtoImpl>
    implements _$$WorkSearchQueryDtoImplCopyWith<$Res> {
  __$$WorkSearchQueryDtoImplCopyWithImpl(_$WorkSearchQueryDtoImpl _value,
      $Res Function(_$WorkSearchQueryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? tagIds = freezed,
    Object? artistId = freezed,
    Object? onlyFeatured = freezed,
    Object? source = freezed,
    Object? includeHidden = null,
    Object? sortBy = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$WorkSearchQueryDtoImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      onlyFeatured: freezed == onlyFeatured
          ? _value.onlyFeatured
          : onlyFeatured // ignore: cast_nullable_to_non_nullable
              as bool?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      includeHidden: null == includeHidden
          ? _value.includeHidden
          : includeHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkSearchQueryDtoImpl implements _WorkSearchQueryDto {
  const _$WorkSearchQueryDtoImpl(
      {this.query,
      final List<int>? tagIds,
      this.artistId,
      this.onlyFeatured,
      this.source,
      this.includeHidden = false,
      this.sortBy = 'relevance',
      this.page = 1,
      this.limit = 10})
      : _tagIds = tagIds;

  factory _$WorkSearchQueryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkSearchQueryDtoImplFromJson(json);

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
  final int? artistId;
  @override
  final bool? onlyFeatured;
  @override
  final String? source;
  @override
  @JsonKey()
  final bool includeHidden;
  @override
  @JsonKey()
  final String sortBy;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'WorkSearchQueryDto(query: $query, tagIds: $tagIds, artistId: $artistId, onlyFeatured: $onlyFeatured, source: $source, includeHidden: $includeHidden, sortBy: $sortBy, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkSearchQueryDtoImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.onlyFeatured, onlyFeatured) ||
                other.onlyFeatured == onlyFeatured) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.includeHidden, includeHidden) ||
                other.includeHidden == includeHidden) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      const DeepCollectionEquality().hash(_tagIds),
      artistId,
      onlyFeatured,
      source,
      includeHidden,
      sortBy,
      page,
      limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkSearchQueryDtoImplCopyWith<_$WorkSearchQueryDtoImpl> get copyWith =>
      __$$WorkSearchQueryDtoImplCopyWithImpl<_$WorkSearchQueryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkSearchQueryDtoImplToJson(
      this,
    );
  }
}

abstract class _WorkSearchQueryDto implements WorkSearchQueryDto {
  const factory _WorkSearchQueryDto(
      {final String? query,
      final List<int>? tagIds,
      final int? artistId,
      final bool? onlyFeatured,
      final String? source,
      final bool includeHidden,
      final String sortBy,
      final int page,
      final int limit}) = _$WorkSearchQueryDtoImpl;

  factory _WorkSearchQueryDto.fromJson(Map<String, dynamic> json) =
      _$WorkSearchQueryDtoImpl.fromJson;

  @override
  String? get query;
  @override
  List<int>? get tagIds;
  @override
  int? get artistId;
  @override
  bool? get onlyFeatured;
  @override
  String? get source;
  @override
  bool get includeHidden;
  @override
  String get sortBy;
  @override
  int get page;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$WorkSearchQueryDtoImplCopyWith<_$WorkSearchQueryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginatedWorkSearchResponseDto _$PaginatedWorkSearchResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _PaginatedWorkSearchResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PaginatedWorkSearchResponseDto {
  List<WorkWithRelevanceDto> get items => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedWorkSearchResponseDtoCopyWith<PaginatedWorkSearchResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedWorkSearchResponseDtoCopyWith<$Res> {
  factory $PaginatedWorkSearchResponseDtoCopyWith(
          PaginatedWorkSearchResponseDto value,
          $Res Function(PaginatedWorkSearchResponseDto) then) =
      _$PaginatedWorkSearchResponseDtoCopyWithImpl<$Res,
          PaginatedWorkSearchResponseDto>;
  @useResult
  $Res call(
      {List<WorkWithRelevanceDto> items,
      int total,
      int currentPage,
      int pageSize,
      int totalPages});
}

/// @nodoc
class _$PaginatedWorkSearchResponseDtoCopyWithImpl<$Res,
        $Val extends PaginatedWorkSearchResponseDto>
    implements $PaginatedWorkSearchResponseDtoCopyWith<$Res> {
  _$PaginatedWorkSearchResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WorkWithRelevanceDto>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedWorkSearchResponseDtoImplCopyWith<$Res>
    implements $PaginatedWorkSearchResponseDtoCopyWith<$Res> {
  factory _$$PaginatedWorkSearchResponseDtoImplCopyWith(
          _$PaginatedWorkSearchResponseDtoImpl value,
          $Res Function(_$PaginatedWorkSearchResponseDtoImpl) then) =
      __$$PaginatedWorkSearchResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WorkWithRelevanceDto> items,
      int total,
      int currentPage,
      int pageSize,
      int totalPages});
}

/// @nodoc
class __$$PaginatedWorkSearchResponseDtoImplCopyWithImpl<$Res>
    extends _$PaginatedWorkSearchResponseDtoCopyWithImpl<$Res,
        _$PaginatedWorkSearchResponseDtoImpl>
    implements _$$PaginatedWorkSearchResponseDtoImplCopyWith<$Res> {
  __$$PaginatedWorkSearchResponseDtoImplCopyWithImpl(
      _$PaginatedWorkSearchResponseDtoImpl _value,
      $Res Function(_$PaginatedWorkSearchResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(_$PaginatedWorkSearchResponseDtoImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WorkWithRelevanceDto>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedWorkSearchResponseDtoImpl
    implements _PaginatedWorkSearchResponseDto {
  const _$PaginatedWorkSearchResponseDtoImpl(
      {required final List<WorkWithRelevanceDto> items,
      required this.total,
      required this.currentPage,
      required this.pageSize,
      required this.totalPages})
      : _items = items;

  factory _$PaginatedWorkSearchResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaginatedWorkSearchResponseDtoImplFromJson(json);

  final List<WorkWithRelevanceDto> _items;
  @override
  List<WorkWithRelevanceDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int total;
  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'PaginatedWorkSearchResponseDto(items: $items, total: $total, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedWorkSearchResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      total,
      currentPage,
      pageSize,
      totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedWorkSearchResponseDtoImplCopyWith<
          _$PaginatedWorkSearchResponseDtoImpl>
      get copyWith => __$$PaginatedWorkSearchResponseDtoImplCopyWithImpl<
          _$PaginatedWorkSearchResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedWorkSearchResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _PaginatedWorkSearchResponseDto
    implements PaginatedWorkSearchResponseDto {
  const factory _PaginatedWorkSearchResponseDto(
      {required final List<WorkWithRelevanceDto> items,
      required final int total,
      required final int currentPage,
      required final int pageSize,
      required final int totalPages}) = _$PaginatedWorkSearchResponseDtoImpl;

  factory _PaginatedWorkSearchResponseDto.fromJson(Map<String, dynamic> json) =
      _$PaginatedWorkSearchResponseDtoImpl.fromJson;

  @override
  List<WorkWithRelevanceDto> get items;
  @override
  int get total;
  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedWorkSearchResponseDtoImplCopyWith<
          _$PaginatedWorkSearchResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkWithRelevanceDto _$WorkWithRelevanceDtoFromJson(Map<String, dynamic> json) {
  return _WorkWithRelevanceDto.fromJson(json);
}

/// @nodoc
mixin _$WorkWithRelevanceDto {
  Work get work => throw _privateConstructorUsedError;
  double get relevanceScore => throw _privateConstructorUsedError;
  Map<String, double>? get scoreComponents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkWithRelevanceDtoCopyWith<WorkWithRelevanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkWithRelevanceDtoCopyWith<$Res> {
  factory $WorkWithRelevanceDtoCopyWith(WorkWithRelevanceDto value,
          $Res Function(WorkWithRelevanceDto) then) =
      _$WorkWithRelevanceDtoCopyWithImpl<$Res, WorkWithRelevanceDto>;
  @useResult
  $Res call(
      {Work work, double relevanceScore, Map<String, double>? scoreComponents});

  $WorkCopyWith<$Res> get work;
}

/// @nodoc
class _$WorkWithRelevanceDtoCopyWithImpl<$Res,
        $Val extends WorkWithRelevanceDto>
    implements $WorkWithRelevanceDtoCopyWith<$Res> {
  _$WorkWithRelevanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
    Object? relevanceScore = null,
    Object? scoreComponents = freezed,
  }) {
    return _then(_value.copyWith(
      work: null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Work,
      relevanceScore: null == relevanceScore
          ? _value.relevanceScore
          : relevanceScore // ignore: cast_nullable_to_non_nullable
              as double,
      scoreComponents: freezed == scoreComponents
          ? _value.scoreComponents
          : scoreComponents // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkCopyWith<$Res> get work {
    return $WorkCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkWithRelevanceDtoImplCopyWith<$Res>
    implements $WorkWithRelevanceDtoCopyWith<$Res> {
  factory _$$WorkWithRelevanceDtoImplCopyWith(_$WorkWithRelevanceDtoImpl value,
          $Res Function(_$WorkWithRelevanceDtoImpl) then) =
      __$$WorkWithRelevanceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Work work, double relevanceScore, Map<String, double>? scoreComponents});

  @override
  $WorkCopyWith<$Res> get work;
}

/// @nodoc
class __$$WorkWithRelevanceDtoImplCopyWithImpl<$Res>
    extends _$WorkWithRelevanceDtoCopyWithImpl<$Res, _$WorkWithRelevanceDtoImpl>
    implements _$$WorkWithRelevanceDtoImplCopyWith<$Res> {
  __$$WorkWithRelevanceDtoImplCopyWithImpl(_$WorkWithRelevanceDtoImpl _value,
      $Res Function(_$WorkWithRelevanceDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
    Object? relevanceScore = null,
    Object? scoreComponents = freezed,
  }) {
    return _then(_$WorkWithRelevanceDtoImpl(
      work: null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Work,
      relevanceScore: null == relevanceScore
          ? _value.relevanceScore
          : relevanceScore // ignore: cast_nullable_to_non_nullable
              as double,
      scoreComponents: freezed == scoreComponents
          ? _value._scoreComponents
          : scoreComponents // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkWithRelevanceDtoImpl implements _WorkWithRelevanceDto {
  const _$WorkWithRelevanceDtoImpl(
      {required this.work,
      required this.relevanceScore,
      final Map<String, double>? scoreComponents})
      : _scoreComponents = scoreComponents;

  factory _$WorkWithRelevanceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkWithRelevanceDtoImplFromJson(json);

  @override
  final Work work;
  @override
  final double relevanceScore;
  final Map<String, double>? _scoreComponents;
  @override
  Map<String, double>? get scoreComponents {
    final value = _scoreComponents;
    if (value == null) return null;
    if (_scoreComponents is EqualUnmodifiableMapView) return _scoreComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'WorkWithRelevanceDto(work: $work, relevanceScore: $relevanceScore, scoreComponents: $scoreComponents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkWithRelevanceDtoImpl &&
            (identical(other.work, work) || other.work == work) &&
            (identical(other.relevanceScore, relevanceScore) ||
                other.relevanceScore == relevanceScore) &&
            const DeepCollectionEquality()
                .equals(other._scoreComponents, _scoreComponents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, work, relevanceScore,
      const DeepCollectionEquality().hash(_scoreComponents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkWithRelevanceDtoImplCopyWith<_$WorkWithRelevanceDtoImpl>
      get copyWith =>
          __$$WorkWithRelevanceDtoImplCopyWithImpl<_$WorkWithRelevanceDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkWithRelevanceDtoImplToJson(
      this,
    );
  }
}

abstract class _WorkWithRelevanceDto implements WorkWithRelevanceDto {
  const factory _WorkWithRelevanceDto(
      {required final Work work,
      required final double relevanceScore,
      final Map<String, double>? scoreComponents}) = _$WorkWithRelevanceDtoImpl;

  factory _WorkWithRelevanceDto.fromJson(Map<String, dynamic> json) =
      _$WorkWithRelevanceDtoImpl.fromJson;

  @override
  Work get work;
  @override
  double get relevanceScore;
  @override
  Map<String, double>? get scoreComponents;
  @override
  @JsonKey(ignore: true)
  _$$WorkWithRelevanceDtoImplCopyWith<_$WorkWithRelevanceDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchRankingInfoDto _$SearchRankingInfoDtoFromJson(Map<String, dynamic> json) {
  return _SearchRankingInfoDto.fromJson(json);
}

/// @nodoc
mixin _$SearchRankingInfoDto {
  String get factor => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRankingInfoDtoCopyWith<SearchRankingInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRankingInfoDtoCopyWith<$Res> {
  factory $SearchRankingInfoDtoCopyWith(SearchRankingInfoDto value,
          $Res Function(SearchRankingInfoDto) then) =
      _$SearchRankingInfoDtoCopyWithImpl<$Res, SearchRankingInfoDto>;
  @useResult
  $Res call({String factor, String description, double weight});
}

/// @nodoc
class _$SearchRankingInfoDtoCopyWithImpl<$Res,
        $Val extends SearchRankingInfoDto>
    implements $SearchRankingInfoDtoCopyWith<$Res> {
  _$SearchRankingInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? factor = null,
    Object? description = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      factor: null == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRankingInfoDtoImplCopyWith<$Res>
    implements $SearchRankingInfoDtoCopyWith<$Res> {
  factory _$$SearchRankingInfoDtoImplCopyWith(_$SearchRankingInfoDtoImpl value,
          $Res Function(_$SearchRankingInfoDtoImpl) then) =
      __$$SearchRankingInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String factor, String description, double weight});
}

/// @nodoc
class __$$SearchRankingInfoDtoImplCopyWithImpl<$Res>
    extends _$SearchRankingInfoDtoCopyWithImpl<$Res, _$SearchRankingInfoDtoImpl>
    implements _$$SearchRankingInfoDtoImplCopyWith<$Res> {
  __$$SearchRankingInfoDtoImplCopyWithImpl(_$SearchRankingInfoDtoImpl _value,
      $Res Function(_$SearchRankingInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? factor = null,
    Object? description = null,
    Object? weight = null,
  }) {
    return _then(_$SearchRankingInfoDtoImpl(
      factor: null == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRankingInfoDtoImpl implements _SearchRankingInfoDto {
  const _$SearchRankingInfoDtoImpl(
      {required this.factor, required this.description, required this.weight});

  factory _$SearchRankingInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRankingInfoDtoImplFromJson(json);

  @override
  final String factor;
  @override
  final String description;
  @override
  final double weight;

  @override
  String toString() {
    return 'SearchRankingInfoDto(factor: $factor, description: $description, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRankingInfoDtoImpl &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, factor, description, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRankingInfoDtoImplCopyWith<_$SearchRankingInfoDtoImpl>
      get copyWith =>
          __$$SearchRankingInfoDtoImplCopyWithImpl<_$SearchRankingInfoDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRankingInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchRankingInfoDto implements SearchRankingInfoDto {
  const factory _SearchRankingInfoDto(
      {required final String factor,
      required final String description,
      required final double weight}) = _$SearchRankingInfoDtoImpl;

  factory _SearchRankingInfoDto.fromJson(Map<String, dynamic> json) =
      _$SearchRankingInfoDtoImpl.fromJson;

  @override
  String get factor;
  @override
  String get description;
  @override
  double get weight;
  @override
  @JsonKey(ignore: true)
  _$$SearchRankingInfoDtoImplCopyWith<_$SearchRankingInfoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
