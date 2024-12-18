// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_agenda_events_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventItem _$EventItemFromJson(Map<String, dynamic> json) {
  return _EventItem.fromJson(json);
}

/// @nodoc
mixin _$EventItem {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  DateTime get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  DateTime get end => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;
  bool get notification => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  WorkEvidence? get workEvidence => throw _privateConstructorUsedError;
  String? get cancelationReason => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  int get quotationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventItemCopyWith<EventItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventItemCopyWith<$Res> {
  factory $EventItemCopyWith(EventItem value, $Res Function(EventItem) then) =
      _$EventItemCopyWithImpl<$Res, EventItem>;
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      DateTime updatedAt,
      int customerId,
      String title,
      @JsonKey(name: 'startDate') DateTime start,
      @JsonKey(name: 'endDate') DateTime end,
      String color,
      String info,
      bool notification,
      bool done,
      WorkEvidence? workEvidence,
      String? cancelationReason,
      DateTime? deletedAt,
      int quotationId});

  $WorkEvidenceCopyWith<$Res>? get workEvidence;
}

/// @nodoc
class _$EventItemCopyWithImpl<$Res, $Val extends EventItem>
    implements $EventItemCopyWith<$Res> {
  _$EventItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? customerId = null,
    Object? title = null,
    Object? start = null,
    Object? end = null,
    Object? color = null,
    Object? info = null,
    Object? notification = null,
    Object? done = null,
    Object? workEvidence = freezed,
    Object? cancelationReason = freezed,
    Object? deletedAt = freezed,
    Object? quotationId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as WorkEvidence?,
      cancelationReason: freezed == cancelationReason
          ? _value.cancelationReason
          : cancelationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as int,
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
}

/// @nodoc
abstract class _$$EventItemImplCopyWith<$Res>
    implements $EventItemCopyWith<$Res> {
  factory _$$EventItemImplCopyWith(
          _$EventItemImpl value, $Res Function(_$EventItemImpl) then) =
      __$$EventItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      DateTime updatedAt,
      int customerId,
      String title,
      @JsonKey(name: 'startDate') DateTime start,
      @JsonKey(name: 'endDate') DateTime end,
      String color,
      String info,
      bool notification,
      bool done,
      WorkEvidence? workEvidence,
      String? cancelationReason,
      DateTime? deletedAt,
      int quotationId});

  @override
  $WorkEvidenceCopyWith<$Res>? get workEvidence;
}

/// @nodoc
class __$$EventItemImplCopyWithImpl<$Res>
    extends _$EventItemCopyWithImpl<$Res, _$EventItemImpl>
    implements _$$EventItemImplCopyWith<$Res> {
  __$$EventItemImplCopyWithImpl(
      _$EventItemImpl _value, $Res Function(_$EventItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? customerId = null,
    Object? title = null,
    Object? start = null,
    Object? end = null,
    Object? color = null,
    Object? info = null,
    Object? notification = null,
    Object? done = null,
    Object? workEvidence = freezed,
    Object? cancelationReason = freezed,
    Object? deletedAt = freezed,
    Object? quotationId = null,
  }) {
    return _then(_$EventItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as WorkEvidence?,
      cancelationReason: freezed == cancelationReason
          ? _value.cancelationReason
          : cancelationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventItemImpl implements _EventItem {
  const _$EventItemImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.customerId,
      required this.title,
      @JsonKey(name: 'startDate') required this.start,
      @JsonKey(name: 'endDate') required this.end,
      required this.color,
      required this.info,
      required this.notification,
      required this.done,
      this.workEvidence,
      this.cancelationReason,
      this.deletedAt,
      required this.quotationId});

  factory _$EventItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventItemImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int customerId;
  @override
  final String title;
  @override
  @JsonKey(name: 'startDate')
  final DateTime start;
  @override
  @JsonKey(name: 'endDate')
  final DateTime end;
  @override
  final String color;
  @override
  final String info;
  @override
  final bool notification;
  @override
  final bool done;
  @override
  final WorkEvidence? workEvidence;
  @override
  final String? cancelationReason;
  @override
  final DateTime? deletedAt;
  @override
  final int quotationId;

  @override
  String toString() {
    return 'EventItem(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, title: $title, start: $start, end: $end, color: $color, info: $info, notification: $notification, done: $done, workEvidence: $workEvidence, cancelationReason: $cancelationReason, deletedAt: $deletedAt, quotationId: $quotationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventItemImpl &&
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
            (identical(other.cancelationReason, cancelationReason) ||
                other.cancelationReason == cancelationReason) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId));
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
      cancelationReason,
      deletedAt,
      quotationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventItemImplCopyWith<_$EventItemImpl> get copyWith =>
      __$$EventItemImplCopyWithImpl<_$EventItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventItemImplToJson(
      this,
    );
  }
}

abstract class _EventItem implements EventItem {
  const factory _EventItem(
      {required final int id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final int customerId,
      required final String title,
      @JsonKey(name: 'startDate') required final DateTime start,
      @JsonKey(name: 'endDate') required final DateTime end,
      required final String color,
      required final String info,
      required final bool notification,
      required final bool done,
      final WorkEvidence? workEvidence,
      final String? cancelationReason,
      final DateTime? deletedAt,
      required final int quotationId}) = _$EventItemImpl;

  factory _EventItem.fromJson(Map<String, dynamic> json) =
      _$EventItemImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  int get customerId;
  @override
  String get title;
  @override
  @JsonKey(name: 'startDate')
  DateTime get start;
  @override
  @JsonKey(name: 'endDate')
  DateTime get end;
  @override
  String get color;
  @override
  String get info;
  @override
  bool get notification;
  @override
  bool get done;
  @override
  WorkEvidence? get workEvidence;
  @override
  String? get cancelationReason;
  @override
  DateTime? get deletedAt;
  @override
  int get quotationId;
  @override
  @JsonKey(ignore: true)
  _$$EventItemImplCopyWith<_$EventItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkEvidence _$WorkEvidenceFromJson(Map<String, dynamic> json) {
  return _WorkEvidence.fromJson(json);
}

/// @nodoc
mixin _$WorkEvidence {
  int get count => throw _privateConstructorUsedError;
  List<Metadata> get metadata => throw _privateConstructorUsedError;

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
  $Res call({int count, List<Metadata> metadata});
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
    Object? count = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<Metadata>,
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
  $Res call({int count, List<Metadata> metadata});
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
    Object? count = null,
    Object? metadata = null,
  }) {
    return _then(_$WorkEvidenceImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<Metadata>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkEvidenceImpl implements _WorkEvidence {
  const _$WorkEvidenceImpl(
      {required this.count, required final List<Metadata> metadata})
      : _metadata = metadata;

  factory _$WorkEvidenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkEvidenceImplFromJson(json);

  @override
  final int count;
  final List<Metadata> _metadata;
  @override
  List<Metadata> get metadata {
    if (_metadata is EqualUnmodifiableListView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metadata);
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
      {required final int count,
      required final List<Metadata> metadata}) = _$WorkEvidenceImpl;

  factory _WorkEvidence.fromJson(Map<String, dynamic> json) =
      _$WorkEvidenceImpl.fromJson;

  @override
  int get count;
  @override
  List<Metadata> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$WorkEvidenceImplCopyWith<_$WorkEvidenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  String get url => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get encoding => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  String get fieldname => throw _privateConstructorUsedError;
  String get originalname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call(
      {String url,
      int size,
      String type,
      String encoding,
      int position,
      String fieldname,
      String originalname});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? size = null,
    Object? type = null,
    Object? encoding = null,
    Object? position = null,
    Object? fieldname = null,
    Object? originalname = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      fieldname: null == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String,
      originalname: null == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      int size,
      String type,
      String encoding,
      int position,
      String fieldname,
      String originalname});
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? size = null,
    Object? type = null,
    Object? encoding = null,
    Object? position = null,
    Object? fieldname = null,
    Object? originalname = null,
  }) {
    return _then(_$MetadataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      fieldname: null == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String,
      originalname: null == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  const _$MetadataImpl(
      {required this.url,
      required this.size,
      required this.type,
      required this.encoding,
      required this.position,
      required this.fieldname,
      required this.originalname});

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  final String url;
  @override
  final int size;
  @override
  final String type;
  @override
  final String encoding;
  @override
  final int position;
  @override
  final String fieldname;
  @override
  final String originalname;

  @override
  String toString() {
    return 'Metadata(url: $url, size: $size, type: $type, encoding: $encoding, position: $position, fieldname: $fieldname, originalname: $originalname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataImpl &&
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
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      __$$MetadataImplCopyWithImpl<_$MetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata(
      {required final String url,
      required final int size,
      required final String type,
      required final String encoding,
      required final int position,
      required final String fieldname,
      required final String originalname}) = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;

  @override
  String get url;
  @override
  int get size;
  @override
  String get type;
  @override
  String get encoding;
  @override
  int get position;
  @override
  String get fieldname;
  @override
  String get originalname;
  @override
  @JsonKey(ignore: true)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
