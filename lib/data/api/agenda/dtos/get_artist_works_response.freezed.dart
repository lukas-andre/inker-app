// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_artist_works_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetArtistWorksResponse _$GetArtistWorksResponseFromJson(
    Map<String, dynamic> json) {
  return _GetArtistWorksResponse.fromJson(json);
}

/// @nodoc
mixin _$GetArtistWorksResponse {
  List<WorkItem>? get items => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetArtistWorksResponseCopyWith<GetArtistWorksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetArtistWorksResponseCopyWith<$Res> {
  factory $GetArtistWorksResponseCopyWith(GetArtistWorksResponse value,
          $Res Function(GetArtistWorksResponse) then) =
      _$GetArtistWorksResponseCopyWithImpl<$Res, GetArtistWorksResponse>;
  @useResult
  $Res call({List<WorkItem>? items, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$GetArtistWorksResponseCopyWithImpl<$Res,
        $Val extends GetArtistWorksResponse>
    implements $GetArtistWorksResponseCopyWith<$Res> {
  _$GetArtistWorksResponseCopyWithImpl(this._value, this._then);

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
              as List<WorkItem>?,
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
abstract class _$$_GetArtistWorksResponseCopyWith<$Res>
    implements $GetArtistWorksResponseCopyWith<$Res> {
  factory _$$_GetArtistWorksResponseCopyWith(_$_GetArtistWorksResponse value,
          $Res Function(_$_GetArtistWorksResponse) then) =
      __$$_GetArtistWorksResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WorkItem>? items, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_GetArtistWorksResponseCopyWithImpl<$Res>
    extends _$GetArtistWorksResponseCopyWithImpl<$Res,
        _$_GetArtistWorksResponse>
    implements _$$_GetArtistWorksResponseCopyWith<$Res> {
  __$$_GetArtistWorksResponseCopyWithImpl(_$_GetArtistWorksResponse _value,
      $Res Function(_$_GetArtistWorksResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_GetArtistWorksResponse(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WorkItem>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetArtistWorksResponse implements _GetArtistWorksResponse {
  const _$_GetArtistWorksResponse({final List<WorkItem>? items, this.meta})
      : _items = items;

  factory _$_GetArtistWorksResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetArtistWorksResponseFromJson(json);

  final List<WorkItem>? _items;
  @override
  List<WorkItem>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'GetArtistWorksResponse(items: $items, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetArtistWorksResponse &&
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
  _$$_GetArtistWorksResponseCopyWith<_$_GetArtistWorksResponse> get copyWith =>
      __$$_GetArtistWorksResponseCopyWithImpl<_$_GetArtistWorksResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetArtistWorksResponseToJson(
      this,
    );
  }
}

abstract class _GetArtistWorksResponse implements GetArtistWorksResponse {
  const factory _GetArtistWorksResponse(
      {final List<WorkItem>? items,
      final Meta? meta}) = _$_GetArtistWorksResponse;

  factory _GetArtistWorksResponse.fromJson(Map<String, dynamic> json) =
      _$_GetArtistWorksResponse.fromJson;

  @override
  List<WorkItem>? get items;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_GetArtistWorksResponseCopyWith<_$_GetArtistWorksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkItem _$WorkItemFromJson(Map<String, dynamic> json) {
  return _WorkItem.fromJson(json);
}

/// @nodoc
mixin _$WorkItem {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get customerId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  bool? get notification => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  WorkEvidence? get workEvidence => throw _privateConstructorUsedError;
  dynamic? get deletedAt => throw _privateConstructorUsedError;
  Review? get review => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkItemCopyWith<WorkItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkItemCopyWith<$Res> {
  factory $WorkItemCopyWith(WorkItem value, $Res Function(WorkItem) then) =
      _$WorkItemCopyWithImpl<$Res, WorkItem>;
  @useResult
  $Res call(
      {int? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? customerId,
      String? title,
      DateTime? start,
      DateTime? end,
      String? color,
      String? info,
      bool? notification,
      bool? done,
      WorkEvidence? workEvidence,
      dynamic? deletedAt,
      Review? review});

  $WorkEvidenceCopyWith<$Res>? get workEvidence;
  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class _$WorkItemCopyWithImpl<$Res, $Val extends WorkItem>
    implements $WorkItemCopyWith<$Res> {
  _$WorkItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customerId = freezed,
    Object? title = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? color = freezed,
    Object? info = freezed,
    Object? notification = freezed,
    Object? done = freezed,
    Object? workEvidence = freezed,
    Object? deletedAt = null,
    Object? review = freezed,
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
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as WorkEvidence?,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkEvidenceCopyWith<$Res>? get workEvidence {
    if (_value.workEvidence == null) {
      return null;
    }

    return $WorkEvidenceCopyWith<$Res>(_value.workEvidence!, (value) {
      return _then(_value.copyWith(workEvidence: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $ReviewCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WorkItemCopyWith<$Res> implements $WorkItemCopyWith<$Res> {
  factory _$$_WorkItemCopyWith(
          _$_WorkItem value, $Res Function(_$_WorkItem) then) =
      __$$_WorkItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? customerId,
      String? title,
      DateTime? start,
      DateTime? end,
      String? color,
      String? info,
      bool? notification,
      bool? done,
      WorkEvidence? workEvidence,
      dynamic? deletedAt,
      Review? review});

  @override
  $WorkEvidenceCopyWith<$Res>? get workEvidence;
  @override
  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class __$$_WorkItemCopyWithImpl<$Res>
    extends _$WorkItemCopyWithImpl<$Res, _$_WorkItem>
    implements _$$_WorkItemCopyWith<$Res> {
  __$$_WorkItemCopyWithImpl(
      _$_WorkItem _value, $Res Function(_$_WorkItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customerId = freezed,
    Object? title = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? color = freezed,
    Object? info = freezed,
    Object? notification = freezed,
    Object? done = freezed,
    Object? workEvidence = freezed,
    Object? deletedAt = null,
    Object? review = freezed,
  }) {
    return _then(_$_WorkItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as WorkEvidence?,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkItem implements _WorkItem {
  const _$_WorkItem(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.customerId,
      this.title,
      this.start,
      this.end,
      this.color,
      this.info,
      this.notification,
      this.done,
      this.workEvidence,
      this.deletedAt,
      this.review});

  factory _$_WorkItem.fromJson(Map<String, dynamic> json) =>
      _$$_WorkItemFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? customerId;
  @override
  final String? title;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final String? color;
  @override
  final String? info;
  @override
  final bool? notification;
  @override
  final bool? done;
  @override
  final WorkEvidence? workEvidence;
  @override
  final dynamic? deletedAt;
  @override
  final Review? review;

  @override
  String toString() {
    return 'WorkItem(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, title: $title, start: $start, end: $end, color: $color, info: $info, notification: $notification, done: $done, workEvidence: $workEvidence, deletedAt: $deletedAt, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.workEvidence, workEvidence) ||
                other.workEvidence == workEvidence) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      customerId,
      title,
      start,
      end,
      color,
      info,
      notification,
      done,
      workEvidence,
      const DeepCollectionEquality().hash(deletedAt),
      review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkItemCopyWith<_$_WorkItem> get copyWith =>
      __$$_WorkItemCopyWithImpl<_$_WorkItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkItemToJson(
      this,
    );
  }
}

abstract class _WorkItem implements WorkItem {
  const factory _WorkItem(
      {final int? id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? customerId,
      final String? title,
      final DateTime? start,
      final DateTime? end,
      final String? color,
      final String? info,
      final bool? notification,
      final bool? done,
      final WorkEvidence? workEvidence,
      final dynamic? deletedAt,
      final Review? review}) = _$_WorkItem;

  factory _WorkItem.fromJson(Map<String, dynamic> json) = _$_WorkItem.fromJson;

  @override
  int? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get customerId;
  @override
  String? get title;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  String? get color;
  @override
  String? get info;
  @override
  bool? get notification;
  @override
  bool? get done;
  @override
  WorkEvidence? get workEvidence;
  @override
  dynamic? get deletedAt;
  @override
  Review? get review;
  @override
  @JsonKey(ignore: true)
  _$$_WorkItemCopyWith<_$_WorkItem> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get artistId => throw _privateConstructorUsedError;
  int? get eventId => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  String? get header => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  ReviewReactions? get reviewReactions => throw _privateConstructorUsedError;
  int? get createdBy => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  bool? get isRated => throw _privateConstructorUsedError;
  CustomerReviewDetail? get customerReviewDetail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {int? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? artistId,
      int? eventId,
      int? value,
      String? header,
      String? content,
      ReviewReactions? reviewReactions,
      int? createdBy,
      String? displayName,
      bool? isRated,
      CustomerReviewDetail? customerReviewDetail});

  $ReviewReactionsCopyWith<$Res>? get reviewReactions;
  $CustomerReviewDetailCopyWith<$Res>? get customerReviewDetail;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? artistId = freezed,
    Object? eventId = freezed,
    Object? value = freezed,
    Object? header = freezed,
    Object? content = freezed,
    Object? reviewReactions = freezed,
    Object? createdBy = freezed,
    Object? displayName = freezed,
    Object? isRated = freezed,
    Object? customerReviewDetail = freezed,
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
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
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
      customerReviewDetail: freezed == customerReviewDetail
          ? _value.customerReviewDetail
          : customerReviewDetail // ignore: cast_nullable_to_non_nullable
              as CustomerReviewDetail?,
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
  $CustomerReviewDetailCopyWith<$Res>? get customerReviewDetail {
    if (_value.customerReviewDetail == null) {
      return null;
    }

    return $CustomerReviewDetailCopyWith<$Res>(_value.customerReviewDetail!,
        (value) {
      return _then(_value.copyWith(customerReviewDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? artistId,
      int? eventId,
      int? value,
      String? header,
      String? content,
      ReviewReactions? reviewReactions,
      int? createdBy,
      String? displayName,
      bool? isRated,
      CustomerReviewDetail? customerReviewDetail});

  @override
  $ReviewReactionsCopyWith<$Res>? get reviewReactions;
  @override
  $CustomerReviewDetailCopyWith<$Res>? get customerReviewDetail;
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? artistId = freezed,
    Object? eventId = freezed,
    Object? value = freezed,
    Object? header = freezed,
    Object? content = freezed,
    Object? reviewReactions = freezed,
    Object? createdBy = freezed,
    Object? displayName = freezed,
    Object? isRated = freezed,
    Object? customerReviewDetail = freezed,
  }) {
    return _then(_$_Review(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
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
      customerReviewDetail: freezed == customerReviewDetail
          ? _value.customerReviewDetail
          : customerReviewDetail // ignore: cast_nullable_to_non_nullable
              as CustomerReviewDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  const _$_Review(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.artistId,
      this.eventId,
      this.value,
      this.header,
      this.content,
      this.reviewReactions,
      this.createdBy,
      this.displayName,
      this.isRated,
      this.customerReviewDetail});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
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
  final CustomerReviewDetail? customerReviewDetail;

  @override
  String toString() {
    return 'Review(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, artistId: $artistId, eventId: $eventId, value: $value, header: $header, content: $content, reviewReactions: $reviewReactions, createdBy: $createdBy, displayName: $displayName, isRated: $isRated, customerReviewDetail: $customerReviewDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
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
            (identical(other.customerReviewDetail, customerReviewDetail) ||
                other.customerReviewDetail == customerReviewDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      artistId,
      eventId,
      value,
      header,
      content,
      reviewReactions,
      createdBy,
      displayName,
      isRated,
      customerReviewDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {final int? id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? artistId,
      final int? eventId,
      final int? value,
      final String? header,
      final String? content,
      final ReviewReactions? reviewReactions,
      final int? createdBy,
      final String? displayName,
      final bool? isRated,
      final CustomerReviewDetail? customerReviewDetail}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  int? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
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
  CustomerReviewDetail? get customerReviewDetail;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerReviewDetail _$CustomerReviewDetailFromJson(Map<String, dynamic> json) {
  return _CustomerReviewDetail.fromJson(json);
}

/// @nodoc
mixin _$CustomerReviewDetail {
  int? get reviewReactionId => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;
  bool? get disliked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerReviewDetailCopyWith<CustomerReviewDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerReviewDetailCopyWith<$Res> {
  factory $CustomerReviewDetailCopyWith(CustomerReviewDetail value,
          $Res Function(CustomerReviewDetail) then) =
      _$CustomerReviewDetailCopyWithImpl<$Res, CustomerReviewDetail>;
  @useResult
  $Res call({int? reviewReactionId, bool? liked, bool? disliked});
}

/// @nodoc
class _$CustomerReviewDetailCopyWithImpl<$Res,
        $Val extends CustomerReviewDetail>
    implements $CustomerReviewDetailCopyWith<$Res> {
  _$CustomerReviewDetailCopyWithImpl(this._value, this._then);

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
abstract class _$$_CustomerReviewDetailCopyWith<$Res>
    implements $CustomerReviewDetailCopyWith<$Res> {
  factory _$$_CustomerReviewDetailCopyWith(_$_CustomerReviewDetail value,
          $Res Function(_$_CustomerReviewDetail) then) =
      __$$_CustomerReviewDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? reviewReactionId, bool? liked, bool? disliked});
}

/// @nodoc
class __$$_CustomerReviewDetailCopyWithImpl<$Res>
    extends _$CustomerReviewDetailCopyWithImpl<$Res, _$_CustomerReviewDetail>
    implements _$$_CustomerReviewDetailCopyWith<$Res> {
  __$$_CustomerReviewDetailCopyWithImpl(_$_CustomerReviewDetail _value,
      $Res Function(_$_CustomerReviewDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactionId = freezed,
    Object? liked = freezed,
    Object? disliked = freezed,
  }) {
    return _then(_$_CustomerReviewDetail(
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
class _$_CustomerReviewDetail implements _CustomerReviewDetail {
  const _$_CustomerReviewDetail(
      {this.reviewReactionId, this.liked, this.disliked});

  factory _$_CustomerReviewDetail.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerReviewDetailFromJson(json);

  @override
  final int? reviewReactionId;
  @override
  final bool? liked;
  @override
  final bool? disliked;

  @override
  String toString() {
    return 'CustomerReviewDetail(reviewReactionId: $reviewReactionId, liked: $liked, disliked: $disliked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerReviewDetail &&
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
  _$$_CustomerReviewDetailCopyWith<_$_CustomerReviewDetail> get copyWith =>
      __$$_CustomerReviewDetailCopyWithImpl<_$_CustomerReviewDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerReviewDetailToJson(
      this,
    );
  }
}

abstract class _CustomerReviewDetail implements CustomerReviewDetail {
  const factory _CustomerReviewDetail(
      {final int? reviewReactionId,
      final bool? liked,
      final bool? disliked}) = _$_CustomerReviewDetail;

  factory _CustomerReviewDetail.fromJson(Map<String, dynamic> json) =
      _$_CustomerReviewDetail.fromJson;

  @override
  int? get reviewReactionId;
  @override
  bool? get liked;
  @override
  bool? get disliked;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerReviewDetailCopyWith<_$_CustomerReviewDetail> get copyWith =>
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

WorkEvidence _$WorkEvidenceFromJson(Map<String, dynamic> json) {
  return _WorkEvidence.fromJson(json);
}

/// @nodoc
mixin _$WorkEvidence {
  int? get count => throw _privateConstructorUsedError;
  List<Metadatum>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkEvidenceCopyWith<WorkEvidence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkEvidenceCopyWith<$Res> {
  factory $WorkEvidenceCopyWith(
          WorkEvidence value, $Res Function(WorkEvidence) then) =
      _$WorkEvidenceCopyWithImpl<$Res, WorkEvidence>;
  @useResult
  $Res call({int? count, List<Metadatum>? metadata});
}

/// @nodoc
class _$WorkEvidenceCopyWithImpl<$Res, $Val extends WorkEvidence>
    implements $WorkEvidenceCopyWith<$Res> {
  _$WorkEvidenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<Metadatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkEvidenceCopyWith<$Res>
    implements $WorkEvidenceCopyWith<$Res> {
  factory _$$_WorkEvidenceCopyWith(
          _$_WorkEvidence value, $Res Function(_$_WorkEvidence) then) =
      __$$_WorkEvidenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<Metadatum>? metadata});
}

/// @nodoc
class __$$_WorkEvidenceCopyWithImpl<$Res>
    extends _$WorkEvidenceCopyWithImpl<$Res, _$_WorkEvidence>
    implements _$$_WorkEvidenceCopyWith<$Res> {
  __$$_WorkEvidenceCopyWithImpl(
      _$_WorkEvidence _value, $Res Function(_$_WorkEvidence) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$_WorkEvidence(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<Metadatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkEvidence implements _WorkEvidence {
  const _$_WorkEvidence({this.count, final List<Metadatum>? metadata})
      : _metadata = metadata;

  factory _$_WorkEvidence.fromJson(Map<String, dynamic> json) =>
      _$$_WorkEvidenceFromJson(json);

  @override
  final int? count;
  final List<Metadatum>? _metadata;
  @override
  List<Metadatum>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkEvidence(count: $count, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkEvidence &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkEvidenceCopyWith<_$_WorkEvidence> get copyWith =>
      __$$_WorkEvidenceCopyWithImpl<_$_WorkEvidence>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkEvidenceToJson(
      this,
    );
  }
}

abstract class _WorkEvidence implements WorkEvidence {
  const factory _WorkEvidence(
      {final int? count, final List<Metadatum>? metadata}) = _$_WorkEvidence;

  factory _WorkEvidence.fromJson(Map<String, dynamic> json) =
      _$_WorkEvidence.fromJson;

  @override
  int? get count;
  @override
  List<Metadatum>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_WorkEvidenceCopyWith<_$_WorkEvidence> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadatum _$MetadatumFromJson(Map<String, dynamic> json) {
  return _Metadatum.fromJson(json);
}

/// @nodoc
mixin _$Metadatum {
  String? get url => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get encoding => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;
  String? get fieldname => throw _privateConstructorUsedError;
  String? get originalname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetadatumCopyWith<Metadatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadatumCopyWith<$Res> {
  factory $MetadatumCopyWith(Metadatum value, $Res Function(Metadatum) then) =
      _$MetadatumCopyWithImpl<$Res, Metadatum>;
  @useResult
  $Res call(
      {String? url,
      int? size,
      String? type,
      String? encoding,
      int? position,
      String? fieldname,
      String? originalname});
}

/// @nodoc
class _$MetadatumCopyWithImpl<$Res, $Val extends Metadatum>
    implements $MetadatumCopyWith<$Res> {
  _$MetadatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? encoding = freezed,
    Object? position = freezed,
    Object? fieldname = freezed,
    Object? originalname = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldname: freezed == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String?,
      originalname: freezed == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetadatumCopyWith<$Res> implements $MetadatumCopyWith<$Res> {
  factory _$$_MetadatumCopyWith(
          _$_Metadatum value, $Res Function(_$_Metadatum) then) =
      __$$_MetadatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
      int? size,
      String? type,
      String? encoding,
      int? position,
      String? fieldname,
      String? originalname});
}

/// @nodoc
class __$$_MetadatumCopyWithImpl<$Res>
    extends _$MetadatumCopyWithImpl<$Res, _$_Metadatum>
    implements _$$_MetadatumCopyWith<$Res> {
  __$$_MetadatumCopyWithImpl(
      _$_Metadatum _value, $Res Function(_$_Metadatum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? encoding = freezed,
    Object? position = freezed,
    Object? fieldname = freezed,
    Object? originalname = freezed,
  }) {
    return _then(_$_Metadatum(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldname: freezed == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String?,
      originalname: freezed == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Metadatum implements _Metadatum {
  const _$_Metadatum(
      {this.url,
      this.size,
      this.type,
      this.encoding,
      this.position,
      this.fieldname,
      this.originalname});

  factory _$_Metadatum.fromJson(Map<String, dynamic> json) =>
      _$$_MetadatumFromJson(json);

  @override
  final String? url;
  @override
  final int? size;
  @override
  final String? type;
  @override
  final String? encoding;
  @override
  final int? position;
  @override
  final String? fieldname;
  @override
  final String? originalname;

  @override
  String toString() {
    return 'Metadatum(url: $url, size: $size, type: $type, encoding: $encoding, position: $position, fieldname: $fieldname, originalname: $originalname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Metadatum &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.fieldname, fieldname) ||
                other.fieldname == fieldname) &&
            (identical(other.originalname, originalname) ||
                other.originalname == originalname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, size, type, encoding,
      position, fieldname, originalname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetadatumCopyWith<_$_Metadatum> get copyWith =>
      __$$_MetadatumCopyWithImpl<_$_Metadatum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetadatumToJson(
      this,
    );
  }
}

abstract class _Metadatum implements Metadatum {
  const factory _Metadatum(
      {final String? url,
      final int? size,
      final String? type,
      final String? encoding,
      final int? position,
      final String? fieldname,
      final String? originalname}) = _$_Metadatum;

  factory _Metadatum.fromJson(Map<String, dynamic> json) =
      _$_Metadatum.fromJson;

  @override
  String? get url;
  @override
  int? get size;
  @override
  String? get type;
  @override
  String? get encoding;
  @override
  int? get position;
  @override
  String? get fieldname;
  @override
  String? get originalname;
  @override
  @JsonKey(ignore: true)
  _$$_MetadatumCopyWith<_$_Metadatum> get copyWith =>
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
