// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_artist_works_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$GetArtistWorksResponseImplCopyWith<$Res>
    implements $GetArtistWorksResponseCopyWith<$Res> {
  factory _$$GetArtistWorksResponseImplCopyWith(
          _$GetArtistWorksResponseImpl value,
          $Res Function(_$GetArtistWorksResponseImpl) then) =
      __$$GetArtistWorksResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WorkItem>? items, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$GetArtistWorksResponseImplCopyWithImpl<$Res>
    extends _$GetArtistWorksResponseCopyWithImpl<$Res,
        _$GetArtistWorksResponseImpl>
    implements _$$GetArtistWorksResponseImplCopyWith<$Res> {
  __$$GetArtistWorksResponseImplCopyWithImpl(
      _$GetArtistWorksResponseImpl _value,
      $Res Function(_$GetArtistWorksResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$GetArtistWorksResponseImpl(
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
class _$GetArtistWorksResponseImpl implements _GetArtistWorksResponse {
  const _$GetArtistWorksResponseImpl({final List<WorkItem>? items, this.meta})
      : _items = items;

  factory _$GetArtistWorksResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetArtistWorksResponseImplFromJson(json);

  final List<WorkItem>? _items;
  @override
  List<WorkItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArtistWorksResponseImpl &&
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
  _$$GetArtistWorksResponseImplCopyWith<_$GetArtistWorksResponseImpl>
      get copyWith => __$$GetArtistWorksResponseImplCopyWithImpl<
          _$GetArtistWorksResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetArtistWorksResponseImplToJson(
      this,
    );
  }
}

abstract class _GetArtistWorksResponse implements GetArtistWorksResponse {
  const factory _GetArtistWorksResponse(
      {final List<WorkItem>? items,
      final Meta? meta}) = _$GetArtistWorksResponseImpl;

  factory _GetArtistWorksResponse.fromJson(Map<String, dynamic> json) =
      _$GetArtistWorksResponseImpl.fromJson;

  @override
  List<WorkItem>? get items;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$GetArtistWorksResponseImplCopyWith<_$GetArtistWorksResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkItem _$WorkItemFromJson(Map<String, dynamic> json) {
  return _WorkItem.fromJson(json);
}

/// @nodoc
mixin _$WorkItem {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  bool? get notification => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  WorkEvidence? get workEvidence => throw _privateConstructorUsedError;
  dynamic get deletedAt => throw _privateConstructorUsedError;
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
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? customerId,
      String? title,
      DateTime? start,
      DateTime? end,
      String? color,
      String? info,
      bool? notification,
      bool? done,
      WorkEvidence? workEvidence,
      dynamic deletedAt,
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
    Object? deletedAt = freezed,
    Object? review = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
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
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$WorkItemImplCopyWith<$Res>
    implements $WorkItemCopyWith<$Res> {
  factory _$$WorkItemImplCopyWith(
          _$WorkItemImpl value, $Res Function(_$WorkItemImpl) then) =
      __$$WorkItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? customerId,
      String? title,
      DateTime? start,
      DateTime? end,
      String? color,
      String? info,
      bool? notification,
      bool? done,
      WorkEvidence? workEvidence,
      dynamic deletedAt,
      Review? review});

  @override
  $WorkEvidenceCopyWith<$Res>? get workEvidence;
  @override
  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class __$$WorkItemImplCopyWithImpl<$Res>
    extends _$WorkItemCopyWithImpl<$Res, _$WorkItemImpl>
    implements _$$WorkItemImplCopyWith<$Res> {
  __$$WorkItemImplCopyWithImpl(
      _$WorkItemImpl _value, $Res Function(_$WorkItemImpl) _then)
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
    Object? deletedAt = freezed,
    Object? review = freezed,
  }) {
    return _then(_$WorkItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
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
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkItemImpl implements _WorkItem {
  const _$WorkItemImpl(
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

  factory _$WorkItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkItemImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? customerId;
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
  final dynamic deletedAt;
  @override
  final Review? review;

  @override
  String toString() {
    return 'WorkItem(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, title: $title, start: $start, end: $end, color: $color, info: $info, notification: $notification, done: $done, workEvidence: $workEvidence, deletedAt: $deletedAt, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkItemImpl &&
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
  _$$WorkItemImplCopyWith<_$WorkItemImpl> get copyWith =>
      __$$WorkItemImplCopyWithImpl<_$WorkItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkItemImplToJson(
      this,
    );
  }
}

abstract class _WorkItem implements WorkItem {
  const factory _WorkItem(
      {final String? id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? customerId,
      final String? title,
      final DateTime? start,
      final DateTime? end,
      final String? color,
      final String? info,
      final bool? notification,
      final bool? done,
      final WorkEvidence? workEvidence,
      final dynamic deletedAt,
      final Review? review}) = _$WorkItemImpl;

  factory _WorkItem.fromJson(Map<String, dynamic> json) =
      _$WorkItemImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get customerId;
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
  dynamic get deletedAt;
  @override
  Review? get review;
  @override
  @JsonKey(ignore: true)
  _$$WorkItemImplCopyWith<_$WorkItemImpl> get copyWith =>
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
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
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
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
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
    return _then(_$ReviewImpl(
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
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
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

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
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
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
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
      final CustomerReviewDetail? customerReviewDetail}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

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
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
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
abstract class _$$CustomerReviewDetailImplCopyWith<$Res>
    implements $CustomerReviewDetailCopyWith<$Res> {
  factory _$$CustomerReviewDetailImplCopyWith(_$CustomerReviewDetailImpl value,
          $Res Function(_$CustomerReviewDetailImpl) then) =
      __$$CustomerReviewDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? reviewReactionId, bool? liked, bool? disliked});
}

/// @nodoc
class __$$CustomerReviewDetailImplCopyWithImpl<$Res>
    extends _$CustomerReviewDetailCopyWithImpl<$Res, _$CustomerReviewDetailImpl>
    implements _$$CustomerReviewDetailImplCopyWith<$Res> {
  __$$CustomerReviewDetailImplCopyWithImpl(_$CustomerReviewDetailImpl _value,
      $Res Function(_$CustomerReviewDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewReactionId = freezed,
    Object? liked = freezed,
    Object? disliked = freezed,
  }) {
    return _then(_$CustomerReviewDetailImpl(
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
class _$CustomerReviewDetailImpl implements _CustomerReviewDetail {
  const _$CustomerReviewDetailImpl(
      {this.reviewReactionId, this.liked, this.disliked});

  factory _$CustomerReviewDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerReviewDetailImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerReviewDetailImpl &&
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
  _$$CustomerReviewDetailImplCopyWith<_$CustomerReviewDetailImpl>
      get copyWith =>
          __$$CustomerReviewDetailImplCopyWithImpl<_$CustomerReviewDetailImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerReviewDetailImplToJson(
      this,
    );
  }
}

abstract class _CustomerReviewDetail implements CustomerReviewDetail {
  const factory _CustomerReviewDetail(
      {final int? reviewReactionId,
      final bool? liked,
      final bool? disliked}) = _$CustomerReviewDetailImpl;

  factory _CustomerReviewDetail.fromJson(Map<String, dynamic> json) =
      _$CustomerReviewDetailImpl.fromJson;

  @override
  int? get reviewReactionId;
  @override
  bool? get liked;
  @override
  bool? get disliked;
  @override
  @JsonKey(ignore: true)
  _$$CustomerReviewDetailImplCopyWith<_$CustomerReviewDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$ReviewReactionsImplCopyWith<$Res>
    implements $ReviewReactionsCopyWith<$Res> {
  factory _$$ReviewReactionsImplCopyWith(_$ReviewReactionsImpl value,
          $Res Function(_$ReviewReactionsImpl) then) =
      __$$ReviewReactionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? likes, int? dislikes, int? offs});
}

/// @nodoc
class __$$ReviewReactionsImplCopyWithImpl<$Res>
    extends _$ReviewReactionsCopyWithImpl<$Res, _$ReviewReactionsImpl>
    implements _$$ReviewReactionsImplCopyWith<$Res> {
  __$$ReviewReactionsImplCopyWithImpl(
      _$ReviewReactionsImpl _value, $Res Function(_$ReviewReactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? dislikes = freezed,
    Object? offs = freezed,
  }) {
    return _then(_$ReviewReactionsImpl(
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
class _$ReviewReactionsImpl implements _ReviewReactions {
  const _$ReviewReactionsImpl({this.likes, this.dislikes, this.offs});

  factory _$ReviewReactionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewReactionsImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewReactionsImpl &&
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
  _$$ReviewReactionsImplCopyWith<_$ReviewReactionsImpl> get copyWith =>
      __$$ReviewReactionsImplCopyWithImpl<_$ReviewReactionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewReactionsImplToJson(
      this,
    );
  }
}

abstract class _ReviewReactions implements ReviewReactions {
  const factory _ReviewReactions(
      {final int? likes,
      final int? dislikes,
      final int? offs}) = _$ReviewReactionsImpl;

  factory _ReviewReactions.fromJson(Map<String, dynamic> json) =
      _$ReviewReactionsImpl.fromJson;

  @override
  int? get likes;
  @override
  int? get dislikes;
  @override
  int? get offs;
  @override
  @JsonKey(ignore: true)
  _$$ReviewReactionsImplCopyWith<_$ReviewReactionsImpl> get copyWith =>
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
abstract class _$$WorkEvidenceImplCopyWith<$Res>
    implements $WorkEvidenceCopyWith<$Res> {
  factory _$$WorkEvidenceImplCopyWith(
          _$WorkEvidenceImpl value, $Res Function(_$WorkEvidenceImpl) then) =
      __$$WorkEvidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<Metadatum>? metadata});
}

/// @nodoc
class __$$WorkEvidenceImplCopyWithImpl<$Res>
    extends _$WorkEvidenceCopyWithImpl<$Res, _$WorkEvidenceImpl>
    implements _$$WorkEvidenceImplCopyWith<$Res> {
  __$$WorkEvidenceImplCopyWithImpl(
      _$WorkEvidenceImpl _value, $Res Function(_$WorkEvidenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$WorkEvidenceImpl(
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
class _$WorkEvidenceImpl implements _WorkEvidence {
  const _$WorkEvidenceImpl({this.count, final List<Metadatum>? metadata})
      : _metadata = metadata;

  factory _$WorkEvidenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkEvidenceImplFromJson(json);

  @override
  final int? count;
  final List<Metadatum>? _metadata;
  @override
  List<Metadatum>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableListView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkEvidence(count: $count, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkEvidenceImpl &&
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
  _$$WorkEvidenceImplCopyWith<_$WorkEvidenceImpl> get copyWith =>
      __$$WorkEvidenceImplCopyWithImpl<_$WorkEvidenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkEvidenceImplToJson(
      this,
    );
  }
}

abstract class _WorkEvidence implements WorkEvidence {
  const factory _WorkEvidence(
      {final int? count, final List<Metadatum>? metadata}) = _$WorkEvidenceImpl;

  factory _WorkEvidence.fromJson(Map<String, dynamic> json) =
      _$WorkEvidenceImpl.fromJson;

  @override
  int? get count;
  @override
  List<Metadatum>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$WorkEvidenceImplCopyWith<_$WorkEvidenceImpl> get copyWith =>
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
abstract class _$$MetadatumImplCopyWith<$Res>
    implements $MetadatumCopyWith<$Res> {
  factory _$$MetadatumImplCopyWith(
          _$MetadatumImpl value, $Res Function(_$MetadatumImpl) then) =
      __$$MetadatumImplCopyWithImpl<$Res>;
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
class __$$MetadatumImplCopyWithImpl<$Res>
    extends _$MetadatumCopyWithImpl<$Res, _$MetadatumImpl>
    implements _$$MetadatumImplCopyWith<$Res> {
  __$$MetadatumImplCopyWithImpl(
      _$MetadatumImpl _value, $Res Function(_$MetadatumImpl) _then)
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
    return _then(_$MetadatumImpl(
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
class _$MetadatumImpl implements _Metadatum {
  const _$MetadatumImpl(
      {this.url,
      this.size,
      this.type,
      this.encoding,
      this.position,
      this.fieldname,
      this.originalname});

  factory _$MetadatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadatumImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadatumImpl &&
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
  _$$MetadatumImplCopyWith<_$MetadatumImpl> get copyWith =>
      __$$MetadatumImplCopyWithImpl<_$MetadatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadatumImplToJson(
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
      final String? originalname}) = _$MetadatumImpl;

  factory _Metadatum.fromJson(Map<String, dynamic> json) =
      _$MetadatumImpl.fromJson;

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
  _$$MetadatumImplCopyWith<_$MetadatumImpl> get copyWith =>
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
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
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
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
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
    return _then(_$MetaImpl(
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
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {this.totalItems,
      this.itemCount,
      this.itemsPerPage,
      this.totalPages,
      this.currentPage});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
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
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
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
      final int? currentPage}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

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
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
