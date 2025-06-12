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
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'startDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get start => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get end => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  bool get notification => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  WorkEvidence? get workEvidence => throw _privateConstructorUsedError;
  String? get cancelationReason => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  String? get quotationId => throw _privateConstructorUsedError;

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
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String customerId,
      String title,
      @JsonKey(
          name: 'startDate',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      DateTime start,
      @JsonKey(
          name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime end,
      String color,
      String? info,
      bool notification,
      bool done,
      WorkEvidence? workEvidence,
      String? cancelationReason,
      DateTime? deletedAt,
      String? quotationId});

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
    Object? info = freezed,
    Object? notification = null,
    Object? done = null,
    Object? workEvidence = freezed,
    Object? cancelationReason = freezed,
    Object? deletedAt = freezed,
    Object? quotationId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
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
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
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
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String customerId,
      String title,
      @JsonKey(
          name: 'startDate',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      DateTime start,
      @JsonKey(
          name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime end,
      String color,
      String? info,
      bool notification,
      bool done,
      WorkEvidence? workEvidence,
      String? cancelationReason,
      DateTime? deletedAt,
      String? quotationId});

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
    Object? info = freezed,
    Object? notification = null,
    Object? done = null,
    Object? workEvidence = freezed,
    Object? cancelationReason = freezed,
    Object? deletedAt = freezed,
    Object? quotationId = freezed,
  }) {
    return _then(_$EventItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
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
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
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
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(
          name: 'startDate',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      required this.start,
      @JsonKey(
          name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.end,
      required this.color,
      this.info,
      required this.notification,
      required this.done,
      this.workEvidence,
      this.cancelationReason,
      this.deletedAt,
      this.quotationId});

  factory _$EventItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventItemImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String customerId;
  @override
  final String title;
  @override
  @JsonKey(
      name: 'startDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime start;
  @override
  @JsonKey(
      name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime end;
  @override
  final String color;
  @override
  final String? info;
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
  final String? quotationId;

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
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String customerId,
      required final String title,
      @JsonKey(
          name: 'startDate',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      required final DateTime start,
      @JsonKey(
          name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime end,
      required final String color,
      final String? info,
      required final bool notification,
      required final bool done,
      final WorkEvidence? workEvidence,
      final String? cancelationReason,
      final DateTime? deletedAt,
      final String? quotationId}) = _$EventItemImpl;

  factory _EventItem.fromJson(Map<String, dynamic> json) =
      _$EventItemImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get customerId;
  @override
  String get title;
  @override
  @JsonKey(
      name: 'startDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get start;
  @override
  @JsonKey(
      name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get end;
  @override
  String get color;
  @override
  String? get info;
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
  String? get quotationId;
  @override
  @JsonKey(ignore: true)
  _$$EventItemImplCopyWith<_$EventItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
