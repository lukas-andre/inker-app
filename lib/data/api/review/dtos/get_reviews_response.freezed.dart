// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_reviews_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetReviewsResponse _$GetReviewsResponseFromJson(Map<String, dynamic> json) {
  return _GetReviewsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetReviewsResponse {
  List<ReviewItem>? get items => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetReviewsResponseCopyWith<GetReviewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReviewsResponseCopyWith<$Res> {
  factory $GetReviewsResponseCopyWith(
          GetReviewsResponse value, $Res Function(GetReviewsResponse) then) =
      _$GetReviewsResponseCopyWithImpl<$Res, GetReviewsResponse>;
  @useResult
  $Res call({List<ReviewItem>? items, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$GetReviewsResponseCopyWithImpl<$Res, $Val extends GetReviewsResponse>
    implements $GetReviewsResponseCopyWith<$Res> {
  _$GetReviewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetReviewsResponseCopyWith<$Res>
    implements $GetReviewsResponseCopyWith<$Res> {
  factory _$$_GetReviewsResponseCopyWith(_$_GetReviewsResponse value,
          $Res Function(_$_GetReviewsResponse) then) =
      __$$_GetReviewsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReviewItem>? items, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_GetReviewsResponseCopyWithImpl<$Res>
    extends _$GetReviewsResponseCopyWithImpl<$Res, _$_GetReviewsResponse>
    implements _$$_GetReviewsResponseCopyWith<$Res> {
  __$$_GetReviewsResponseCopyWithImpl(
      _$_GetReviewsResponse _value, $Res Function(_$_GetReviewsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_GetReviewsResponse(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ReviewItem>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetReviewsResponse implements _GetReviewsResponse {
  const _$_GetReviewsResponse({final List<ReviewItem>? items, this.meta})
      : _items = items;

  factory _$_GetReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetReviewsResponseFromJson(json);

  final List<ReviewItem>? _items;
  @override
  List<ReviewItem>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'GetReviewsResponse(items: $items, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetReviewsResponse &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetReviewsResponseCopyWith<_$_GetReviewsResponse> get copyWith =>
      __$$_GetReviewsResponseCopyWithImpl<_$_GetReviewsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetReviewsResponseToJson(
      this,
    );
  }
}

abstract class _GetReviewsResponse implements GetReviewsResponse {
  const factory _GetReviewsResponse(
      {final List<ReviewItem>? items,
      final Meta? meta}) = _$_GetReviewsResponse;

  factory _GetReviewsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetReviewsResponse.fromJson;

  @override
  List<ReviewItem>? get items;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_GetReviewsResponseCopyWith<_$_GetReviewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  int? get totalItems => throw _privateConstructorUsedError;
  int? get itemCount => throw _privateConstructorUsedError;
  int? get itemsPerPage => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {int? totalItems,
      int? itemCount,
      int? itemsPerPage,
      int? totalPages,
      int? currentPage});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? itemCount = freezed,
    Object? itemsPerPage = freezed,
    Object? totalPages = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      itemCount: freezed == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsPerPage: freezed == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$_MetaCopyWith(_$_Meta value, $Res Function(_$_Meta) then) =
      __$$_MetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalItems,
      int? itemCount,
      int? itemsPerPage,
      int? totalPages,
      int? currentPage});
}

/// @nodoc
class __$$_MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res, _$_Meta>
    implements _$$_MetaCopyWith<$Res> {
  __$$_MetaCopyWithImpl(_$_Meta _value, $Res Function(_$_Meta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? itemCount = freezed,
    Object? itemsPerPage = freezed,
    Object? totalPages = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_$_Meta(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      itemCount: freezed == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsPerPage: freezed == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meta implements _Meta {
  const _$_Meta(
      {this.totalItems,
      this.itemCount,
      this.itemsPerPage,
      this.totalPages,
      this.currentPage});

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  final int? totalItems;
  @override
  final int? itemCount;
  @override
  final int? itemsPerPage;
  @override
  final int? totalPages;
  @override
  final int? currentPage;

  @override
  String toString() {
    return 'Meta(totalItems: $totalItems, itemCount: $itemCount, itemsPerPage: $itemsPerPage, totalPages: $totalPages, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meta &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalItems, itemCount,
      itemsPerPage, totalPages, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaCopyWith<_$_Meta> get copyWith =>
      __$$_MetaCopyWithImpl<_$_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {final int? totalItems,
      final int? itemCount,
      final int? itemsPerPage,
      final int? totalPages,
      final int? currentPage}) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  int? get totalItems;
  @override
  int? get itemCount;
  @override
  int? get itemsPerPage;
  @override
  int? get totalPages;
  @override
  int? get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_MetaCopyWith<_$_Meta> get copyWith => throw _privateConstructorUsedError;
}

ReviewItem _$ReviewItemFromJson(Map<String, dynamic> json) {
  return _ReviewItem.fromJson(json);
}

/// @nodoc
mixin _$ReviewItem {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get artistId => throw _privateConstructorUsedError;
  int? get eventId => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  String? get header => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  ReviewReactions? get reviewReactions => throw _privateConstructorUsedError;
  int? get createdBy => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  bool? get isRated => throw _privateConstructorUsedError;
  CustomerReactionDetail? get customerReactionDetail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewItemCopyWith<ReviewItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewItemCopyWith<$Res> {
  factory $ReviewItemCopyWith(
          ReviewItem value, $Res Function(ReviewItem) then) =
      _$ReviewItemCopyWithImpl<$Res, ReviewItem>;
  @useResult
  $Res call(
      {int? id,
      DateTime? createdAt,
      int? artistId,
      int? eventId,
      int? value,
      String? header,
      String? content,
      ReviewReactions? reviewReactions,
      int? createdBy,
      String? displayName,
      bool? isRated,
      CustomerReactionDetail? customerReactionDetail});

  $ReviewReactionsCopyWith<$Res>? get reviewReactions;
  $CustomerReactionDetailCopyWith<$Res>? get customerReactionDetail;
}

/// @nodoc
class _$ReviewItemCopyWithImpl<$Res, $Val extends ReviewItem>
    implements $ReviewItemCopyWith<$Res> {
  _$ReviewItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? artistId = freezed,
    Object? eventId = freezed,
    Object? value = freezed,
    Object? header = freezed,
    Object? content = freezed,
    Object? reviewReactions = freezed,
    Object? createdBy = freezed,
    Object? displayName = freezed,
    Object? isRated = freezed,
    Object? customerReactionDetail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewReactions: freezed == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as ReviewReactions?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isRated: freezed == isRated
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool?,
      customerReactionDetail: freezed == customerReactionDetail
          ? _value.customerReactionDetail
          : customerReactionDetail // ignore: cast_nullable_to_non_nullable
              as CustomerReactionDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewReactionsCopyWith<$Res>? get reviewReactions {
    if (_value.reviewReactions == null) {
      return null;
    }

    return $ReviewReactionsCopyWith<$Res>(_value.reviewReactions!, (value) {
      return _then(_value.copyWith(reviewReactions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerReactionDetailCopyWith<$Res>? get customerReactionDetail {
    if (_value.customerReactionDetail == null) {
      return null;
    }

    return $CustomerReactionDetailCopyWith<$Res>(_value.customerReactionDetail!,
        (value) {
      return _then(_value.copyWith(customerReactionDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewItemCopyWith<$Res>
    implements $ReviewItemCopyWith<$Res> {
  factory _$$_ReviewItemCopyWith(
          _$_ReviewItem value, $Res Function(_$_ReviewItem) then) =
      __$$_ReviewItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? createdAt,
      int? artistId,
      int? eventId,
      int? value,
      String? header,
      String? content,
      ReviewReactions? reviewReactions,
      int? createdBy,
      String? displayName,
      bool? isRated,
      CustomerReactionDetail? customerReactionDetail});

  @override
  $ReviewReactionsCopyWith<$Res>? get reviewReactions;
  @override
  $CustomerReactionDetailCopyWith<$Res>? get customerReactionDetail;
}

/// @nodoc
class __$$_ReviewItemCopyWithImpl<$Res>
    extends _$ReviewItemCopyWithImpl<$Res, _$_ReviewItem>
    implements _$$_ReviewItemCopyWith<$Res> {
  __$$_ReviewItemCopyWithImpl(
      _$_ReviewItem _value, $Res Function(_$_ReviewItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? artistId = freezed,
    Object? eventId = freezed,
    Object? value = freezed,
    Object? header = freezed,
    Object? content = freezed,
    Object? reviewReactions = freezed,
    Object? createdBy = freezed,
    Object? displayName = freezed,
    Object? isRated = freezed,
    Object? customerReactionDetail = freezed,
  }) {
    return _then(_$_ReviewItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewReactions: freezed == reviewReactions
          ? _value.reviewReactions
          : reviewReactions // ignore: cast_nullable_to_non_nullable
              as ReviewReactions?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isRated: freezed == isRated
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool?,
      customerReactionDetail: freezed == customerReactionDetail
          ? _value.customerReactionDetail
          : customerReactionDetail // ignore: cast_nullable_to_non_nullable
              as CustomerReactionDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewItem implements _ReviewItem {
  const _$_ReviewItem(
      {this.id,
      this.createdAt,
      this.artistId,
      this.eventId,
      this.value,
      this.header,
      this.content,
      this.reviewReactions,
      this.createdBy,
      this.displayName,
      this.isRated,
      this.customerReactionDetail});

  factory _$_ReviewItem.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewItemFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? createdAt;
  @override
  final int? artistId;
  @override
  final int? eventId;
  @override
  final int? value;
  @override
  final String? header;
  @override
  final String? content;
  @override
  final ReviewReactions? reviewReactions;
  @override
  final int? createdBy;
  @override
  final String? displayName;
  @override
  final bool? isRated;
  @override
  final CustomerReactionDetail? customerReactionDetail;

  @override
  String toString() {
    return 'ReviewItem(id: $id, createdAt: $createdAt, artistId: $artistId, eventId: $eventId, value: $value, header: $header, content: $content, reviewReactions: $reviewReactions, createdBy: $createdBy, displayName: $displayName, isRated: $isRated, customerReactionDetail: $customerReactionDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.reviewReactions, reviewReactions) ||
                other.reviewReactions == reviewReactions) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.isRated, isRated) || other.isRated == isRated) &&
            (identical(other.customerReactionDetail, customerReactionDetail) ||
                other.customerReactionDetail == customerReactionDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      artistId,
      eventId,
      value,
      header,
      content,
      reviewReactions,
      createdBy,
      displayName,
      isRated,
      customerReactionDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewItemCopyWith<_$_ReviewItem> get copyWith =>
      __$$_ReviewItemCopyWithImpl<_$_ReviewItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewItemToJson(
      this,
    );
  }
}

abstract class _ReviewItem implements ReviewItem {
  const factory _ReviewItem(
      {final int? id,
      final DateTime? createdAt,
      final int? artistId,
      final int? eventId,
      final int? value,
      final String? header,
      final String? content,
      final ReviewReactions? reviewReactions,
      final int? createdBy,
      final String? displayName,
      final bool? isRated,
      final CustomerReactionDetail? customerReactionDetail}) = _$_ReviewItem;

  factory _ReviewItem.fromJson(Map<String, dynamic> json) =
      _$_ReviewItem.fromJson;

  @override
  int? get id;
  @override
  DateTime? get createdAt;
  @override
  int? get artistId;
  @override
  int? get eventId;
  @override
  int? get value;
  @override
  String? get header;
  @override
  String? get content;
  @override
  ReviewReactions? get reviewReactions;
  @override
  int? get createdBy;
  @override
  String? get displayName;
  @override
  bool? get isRated;
  @override
  CustomerReactionDetail? get customerReactionDetail;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewItemCopyWith<_$_ReviewItem> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerReactionDetail _$CustomerReactionDetailFromJson(
    Map<String, dynamic> json) {
  return _CustomerReactionDetail.fromJson(json);
}

/// @nodoc
mixin _$CustomerReactionDetail {
  int? get reviewReactionId => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;
  bool? get disliked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerReactionDetailCopyWith<CustomerReactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerReactionDetailCopyWith<$Res> {
  factory $CustomerReactionDetailCopyWith(CustomerReactionDetail value,
          $Res Function(CustomerReactionDetail) then) =
      _$CustomerReactionDetailCopyWithImpl<$Res, CustomerReactionDetail>;
  @useResult
  $Res call({int? reviewReactionId, bool? liked, bool? disliked});
}

/// @nodoc
class _$CustomerReactionDetailCopyWithImpl<$Res,
        $Val extends CustomerReactionDetail>
    implements $CustomerReactionDetailCopyWith<$Res> {
  _$CustomerReactionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactionId = freezed,
    Object? liked = freezed,
    Object? disliked = freezed,
  }) {
    return _then(_value.copyWith(
      reviewReactionId: freezed == reviewReactionId
          ? _value.reviewReactionId
          : reviewReactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      disliked: freezed == disliked
          ? _value.disliked
          : disliked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerReactionDetailCopyWith<$Res>
    implements $CustomerReactionDetailCopyWith<$Res> {
  factory _$$_CustomerReactionDetailCopyWith(_$_CustomerReactionDetail value,
          $Res Function(_$_CustomerReactionDetail) then) =
      __$$_CustomerReactionDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? reviewReactionId, bool? liked, bool? disliked});
}

/// @nodoc
class __$$_CustomerReactionDetailCopyWithImpl<$Res>
    extends _$CustomerReactionDetailCopyWithImpl<$Res,
        _$_CustomerReactionDetail>
    implements _$$_CustomerReactionDetailCopyWith<$Res> {
  __$$_CustomerReactionDetailCopyWithImpl(_$_CustomerReactionDetail _value,
      $Res Function(_$_CustomerReactionDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactionId = freezed,
    Object? liked = freezed,
    Object? disliked = freezed,
  }) {
    return _then(_$_CustomerReactionDetail(
      reviewReactionId: freezed == reviewReactionId
          ? _value.reviewReactionId
          : reviewReactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      disliked: freezed == disliked
          ? _value.disliked
          : disliked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerReactionDetail implements _CustomerReactionDetail {
  const _$_CustomerReactionDetail(
      {this.reviewReactionId, this.liked, this.disliked});

  factory _$_CustomerReactionDetail.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerReactionDetailFromJson(json);

  @override
  final int? reviewReactionId;
  @override
  final bool? liked;
  @override
  final bool? disliked;

  @override
  String toString() {
    return 'CustomerReactionDetail(reviewReactionId: $reviewReactionId, liked: $liked, disliked: $disliked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerReactionDetail &&
            (identical(other.reviewReactionId, reviewReactionId) ||
                other.reviewReactionId == reviewReactionId) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.disliked, disliked) ||
                other.disliked == disliked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reviewReactionId, liked, disliked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerReactionDetailCopyWith<_$_CustomerReactionDetail> get copyWith =>
      __$$_CustomerReactionDetailCopyWithImpl<_$_CustomerReactionDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerReactionDetailToJson(
      this,
    );
  }
}

abstract class _CustomerReactionDetail implements CustomerReactionDetail {
  const factory _CustomerReactionDetail(
      {final int? reviewReactionId,
      final bool? liked,
      final bool? disliked}) = _$_CustomerReactionDetail;

  factory _CustomerReactionDetail.fromJson(Map<String, dynamic> json) =
      _$_CustomerReactionDetail.fromJson;

  @override
  int? get reviewReactionId;
  @override
  bool? get liked;
  @override
  bool? get disliked;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerReactionDetailCopyWith<_$_CustomerReactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewReactions _$ReviewReactionsFromJson(Map<String, dynamic> json) {
  return _ReviewReactions.fromJson(json);
}

/// @nodoc
mixin _$ReviewReactions {
  int? get likes => throw _privateConstructorUsedError;
  int? get dislikes => throw _privateConstructorUsedError;
  int? get offs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewReactionsCopyWith<ReviewReactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewReactionsCopyWith<$Res> {
  factory $ReviewReactionsCopyWith(
          ReviewReactions value, $Res Function(ReviewReactions) then) =
      _$ReviewReactionsCopyWithImpl<$Res, ReviewReactions>;
  @useResult
  $Res call({int? likes, int? dislikes, int? offs});
}

/// @nodoc
class _$ReviewReactionsCopyWithImpl<$Res, $Val extends ReviewReactions>
    implements $ReviewReactionsCopyWith<$Res> {
  _$ReviewReactionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? dislikes = freezed,
    Object? offs = freezed,
  }) {
    return _then(_value.copyWith(
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikes: freezed == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as int?,
      offs: freezed == offs
          ? _value.offs
          : offs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewReactionsCopyWith<$Res>
    implements $ReviewReactionsCopyWith<$Res> {
  factory _$$_ReviewReactionsCopyWith(
          _$_ReviewReactions value, $Res Function(_$_ReviewReactions) then) =
      __$$_ReviewReactionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? likes, int? dislikes, int? offs});
}

/// @nodoc
class __$$_ReviewReactionsCopyWithImpl<$Res>
    extends _$ReviewReactionsCopyWithImpl<$Res, _$_ReviewReactions>
    implements _$$_ReviewReactionsCopyWith<$Res> {
  __$$_ReviewReactionsCopyWithImpl(
      _$_ReviewReactions _value, $Res Function(_$_ReviewReactions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? dislikes = freezed,
    Object? offs = freezed,
  }) {
    return _then(_$_ReviewReactions(
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikes: freezed == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as int?,
      offs: freezed == offs
          ? _value.offs
          : offs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewReactions implements _ReviewReactions {
  const _$_ReviewReactions({this.likes, this.dislikes, this.offs});

  factory _$_ReviewReactions.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewReactionsFromJson(json);

  @override
  final int? likes;
  @override
  final int? dislikes;
  @override
  final int? offs;

  @override
  String toString() {
    return 'ReviewReactions(likes: $likes, dislikes: $dislikes, offs: $offs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewReactions &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.dislikes, dislikes) ||
                other.dislikes == dislikes) &&
            (identical(other.offs, offs) || other.offs == offs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, likes, dislikes, offs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewReactionsCopyWith<_$_ReviewReactions> get copyWith =>
      __$$_ReviewReactionsCopyWithImpl<_$_ReviewReactions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewReactionsToJson(
      this,
    );
  }
}

abstract class _ReviewReactions implements ReviewReactions {
  const factory _ReviewReactions(
      {final int? likes,
      final int? dislikes,
      final int? offs}) = _$_ReviewReactions;

  factory _ReviewReactions.fromJson(Map<String, dynamic> json) =
      _$_ReviewReactions.fromJson;

  @override
  int? get likes;
  @override
  int? get dislikes;
  @override
  int? get offs;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewReactionsCopyWith<_$_ReviewReactions> get copyWith =>
      throw _privateConstructorUsedError;
}
