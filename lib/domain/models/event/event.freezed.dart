// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'startDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get startDateTime => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get endDateTime => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  bool get notification => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  EventStatus get status => throw _privateConstructorUsedError;
  WorkEvidence? get workEvidence => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get preparationTime => throw _privateConstructorUsedError;
  int? get cleanupTime => throw _privateConstructorUsedError;
  bool get customerNotified => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  dynamic get statusLog => throw _privateConstructorUsedError;
  String? get quotationId => throw _privateConstructorUsedError;
  String? get reviewId => throw _privateConstructorUsedError;
  dynamic get rescheduleLog => throw _privateConstructorUsedError;
  List<EventMessage> get messages => throw _privateConstructorUsedError;
  Agenda get agenda => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime updatedAt,
      String customerId,
      String title,
      @JsonKey(
          name: 'startDate',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      DateTime startDateTime,
      @JsonKey(
          name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime endDateTime,
      String? color,
      String? info,
      bool notification,
      bool done,
      EventStatus status,
      WorkEvidence? workEvidence,
      String? notes,
      int? preparationTime,
      int? cleanupTime,
      bool customerNotified,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? deletedAt,
      dynamic statusLog,
      String? quotationId,
      String? reviewId,
      dynamic rescheduleLog,
      List<EventMessage> messages,
      Agenda agenda});

  $WorkEvidenceCopyWith<$Res>? get workEvidence;
  $AgendaCopyWith<$Res> get agenda;
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

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
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? color = freezed,
    Object? info = freezed,
    Object? notification = null,
    Object? done = null,
    Object? status = null,
    Object? workEvidence = freezed,
    Object? notes = freezed,
    Object? preparationTime = freezed,
    Object? cleanupTime = freezed,
    Object? customerNotified = null,
    Object? deletedAt = freezed,
    Object? statusLog = freezed,
    Object? quotationId = freezed,
    Object? reviewId = freezed,
    Object? rescheduleLog = freezed,
    Object? messages = null,
    Object? agenda = null,
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
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as WorkEvidence?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      preparationTime: freezed == preparationTime
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as int?,
      cleanupTime: freezed == cleanupTime
          ? _value.cleanupTime
          : cleanupTime // ignore: cast_nullable_to_non_nullable
              as int?,
      customerNotified: null == customerNotified
          ? _value.customerNotified
          : customerNotified // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusLog: freezed == statusLog
          ? _value.statusLog
          : statusLog // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      rescheduleLog: freezed == rescheduleLog
          ? _value.rescheduleLog
          : rescheduleLog // ignore: cast_nullable_to_non_nullable
              as dynamic,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<EventMessage>,
      agenda: null == agenda
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as Agenda,
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
  $AgendaCopyWith<$Res> get agenda {
    return $AgendaCopyWith<$Res>(_value.agenda, (value) {
      return _then(_value.copyWith(agenda: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime updatedAt,
      String customerId,
      String title,
      @JsonKey(
          name: 'startDate',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      DateTime startDateTime,
      @JsonKey(
          name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime endDateTime,
      String? color,
      String? info,
      bool notification,
      bool done,
      EventStatus status,
      WorkEvidence? workEvidence,
      String? notes,
      int? preparationTime,
      int? cleanupTime,
      bool customerNotified,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? deletedAt,
      dynamic statusLog,
      String? quotationId,
      String? reviewId,
      dynamic rescheduleLog,
      List<EventMessage> messages,
      Agenda agenda});

  @override
  $WorkEvidenceCopyWith<$Res>? get workEvidence;
  @override
  $AgendaCopyWith<$Res> get agenda;
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? customerId = null,
    Object? title = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? color = freezed,
    Object? info = freezed,
    Object? notification = null,
    Object? done = null,
    Object? status = null,
    Object? workEvidence = freezed,
    Object? notes = freezed,
    Object? preparationTime = freezed,
    Object? cleanupTime = freezed,
    Object? customerNotified = null,
    Object? deletedAt = freezed,
    Object? statusLog = freezed,
    Object? quotationId = freezed,
    Object? reviewId = freezed,
    Object? rescheduleLog = freezed,
    Object? messages = null,
    Object? agenda = null,
  }) {
    return _then(_$EventImpl(
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
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as WorkEvidence?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      preparationTime: freezed == preparationTime
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as int?,
      cleanupTime: freezed == cleanupTime
          ? _value.cleanupTime
          : cleanupTime // ignore: cast_nullable_to_non_nullable
              as int?,
      customerNotified: null == customerNotified
          ? _value.customerNotified
          : customerNotified // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusLog: freezed == statusLog
          ? _value.statusLog
          : statusLog // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      rescheduleLog: freezed == rescheduleLog
          ? _value.rescheduleLog
          : rescheduleLog // ignore: cast_nullable_to_non_nullable
              as dynamic,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<EventMessage>,
      agenda: null == agenda
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as Agenda,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EventImpl extends _Event {
  const _$EventImpl(
      {required this.id,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.updatedAt,
      required this.customerId,
      required this.title,
      @JsonKey(
          name: 'startDate',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      required this.startDateTime,
      @JsonKey(
          name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.endDateTime,
      this.color,
      this.info,
      this.notification = false,
      this.done = false,
      required this.status,
      this.workEvidence,
      this.notes,
      this.preparationTime,
      this.cleanupTime,
      this.customerNotified = false,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      this.deletedAt,
      this.statusLog,
      this.quotationId,
      this.reviewId,
      this.rescheduleLog,
      final List<EventMessage> messages = const [],
      required this.agenda})
      : _messages = messages,
        super._();

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime updatedAt;
  @override
  final String customerId;
  @override
  final String title;
  @override
  @JsonKey(
      name: 'startDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime startDateTime;
  @override
  @JsonKey(
      name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime endDateTime;
  @override
  final String? color;
  @override
  final String? info;
  @override
  @JsonKey()
  final bool notification;
  @override
  @JsonKey()
  final bool done;
  @override
  final EventStatus status;
  @override
  final WorkEvidence? workEvidence;
  @override
  final String? notes;
  @override
  final int? preparationTime;
  @override
  final int? cleanupTime;
  @override
  @JsonKey()
  final bool customerNotified;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  final DateTime? deletedAt;
  @override
  final dynamic statusLog;
  @override
  final String? quotationId;
  @override
  final String? reviewId;
  @override
  final dynamic rescheduleLog;
  final List<EventMessage> _messages;
  @override
  @JsonKey()
  List<EventMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final Agenda agenda;

  @override
  String toString() {
    return 'Event(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, title: $title, startDateTime: $startDateTime, endDateTime: $endDateTime, color: $color, info: $info, notification: $notification, done: $done, status: $status, workEvidence: $workEvidence, notes: $notes, preparationTime: $preparationTime, cleanupTime: $cleanupTime, customerNotified: $customerNotified, deletedAt: $deletedAt, statusLog: $statusLog, quotationId: $quotationId, reviewId: $reviewId, rescheduleLog: $rescheduleLog, messages: $messages, agenda: $agenda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.workEvidence, workEvidence) ||
                other.workEvidence == workEvidence) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.cleanupTime, cleanupTime) ||
                other.cleanupTime == cleanupTime) &&
            (identical(other.customerNotified, customerNotified) ||
                other.customerNotified == customerNotified) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            const DeepCollectionEquality().equals(other.statusLog, statusLog) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            const DeepCollectionEquality()
                .equals(other.rescheduleLog, rescheduleLog) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.agenda, agenda) || other.agenda == agenda));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        customerId,
        title,
        startDateTime,
        endDateTime,
        color,
        info,
        notification,
        done,
        status,
        workEvidence,
        notes,
        preparationTime,
        cleanupTime,
        customerNotified,
        deletedAt,
        const DeepCollectionEquality().hash(statusLog),
        quotationId,
        reviewId,
        const DeepCollectionEquality().hash(rescheduleLog),
        const DeepCollectionEquality().hash(_messages),
        agenda
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event extends Event {
  const factory _Event(
      {required final String id,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime updatedAt,
      required final String customerId,
      required final String title,
      @JsonKey(
          name: 'startDate',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      required final DateTime startDateTime,
      @JsonKey(
          name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime endDateTime,
      final String? color,
      final String? info,
      final bool notification,
      final bool done,
      required final EventStatus status,
      final WorkEvidence? workEvidence,
      final String? notes,
      final int? preparationTime,
      final int? cleanupTime,
      final bool customerNotified,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      final DateTime? deletedAt,
      final dynamic statusLog,
      final String? quotationId,
      final String? reviewId,
      final dynamic rescheduleLog,
      final List<EventMessage> messages,
      required final Agenda agenda}) = _$EventImpl;
  const _Event._() : super._();

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get updatedAt;
  @override
  String get customerId;
  @override
  String get title;
  @override
  @JsonKey(
      name: 'startDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get startDateTime;
  @override
  @JsonKey(
      name: 'endDate', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get endDateTime;
  @override
  String? get color;
  @override
  String? get info;
  @override
  bool get notification;
  @override
  bool get done;
  @override
  EventStatus get status;
  @override
  WorkEvidence? get workEvidence;
  @override
  String? get notes;
  @override
  int? get preparationTime;
  @override
  int? get cleanupTime;
  @override
  bool get customerNotified;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get deletedAt;
  @override
  dynamic get statusLog;
  @override
  String? get quotationId;
  @override
  String? get reviewId;
  @override
  dynamic get rescheduleLog;
  @override
  List<EventMessage> get messages;
  @override
  Agenda get agenda;
  @override
  @JsonKey(ignore: true)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
