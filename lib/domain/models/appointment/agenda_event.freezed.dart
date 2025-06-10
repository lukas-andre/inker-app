// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agenda_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgendaEvent _$AgendaEventFromJson(Map<String, dynamic> json) {
  return _AgendaEvent.fromJson(json);
}

/// @nodoc
mixin _$AgendaEvent {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get endDate => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  bool get notification => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  Object? get workEvidence => throw _privateConstructorUsedError;
  Object? get notes => throw _privateConstructorUsedError;
  int? get preparationTime => throw _privateConstructorUsedError;
  int? get cleanupTime => throw _privateConstructorUsedError;
  bool get customerNotified => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  List<StatusLogEntry> get statusLog => throw _privateConstructorUsedError;
  String? get quotationId => throw _privateConstructorUsedError;
  String? get reviewId => throw _privateConstructorUsedError;
  Object? get rescheduleLog => throw _privateConstructorUsedError;
  List<dynamic> get messages => throw _privateConstructorUsedError;
  Agenda? get agenda => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaEventCopyWith<AgendaEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaEventCopyWith<$Res> {
  factory $AgendaEventCopyWith(
          AgendaEvent value, $Res Function(AgendaEvent) then) =
      _$AgendaEventCopyWithImpl<$Res, AgendaEvent>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? createdAt,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? updatedAt,
      String customerId,
      String title,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime startDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime endDate,
      String? color,
      String? info,
      bool notification,
      bool done,
      String status,
      Object? workEvidence,
      Object? notes,
      int? preparationTime,
      int? cleanupTime,
      bool customerNotified,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? deletedAt,
      List<StatusLogEntry> statusLog,
      String? quotationId,
      String? reviewId,
      Object? rescheduleLog,
      List<dynamic> messages,
      Agenda? agenda});

  $AgendaCopyWith<$Res>? get agenda;
}

/// @nodoc
class _$AgendaEventCopyWithImpl<$Res, $Val extends AgendaEvent>
    implements $AgendaEventCopyWith<$Res> {
  _$AgendaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customerId = null,
    Object? title = null,
    Object? startDate = null,
    Object? endDate = null,
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
    Object? statusLog = null,
    Object? quotationId = freezed,
    Object? reviewId = freezed,
    Object? rescheduleLog = freezed,
    Object? messages = null,
    Object? agenda = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
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
              as String,
      workEvidence:
          freezed == workEvidence ? _value.workEvidence : workEvidence,
      notes: freezed == notes ? _value.notes : notes,
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
      statusLog: null == statusLog
          ? _value.statusLog
          : statusLog // ignore: cast_nullable_to_non_nullable
              as List<StatusLogEntry>,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      rescheduleLog:
          freezed == rescheduleLog ? _value.rescheduleLog : rescheduleLog,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      agenda: freezed == agenda
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as Agenda?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaCopyWith<$Res>? get agenda {
    if (_value.agenda == null) {
      return null;
    }

    return $AgendaCopyWith<$Res>(_value.agenda!, (value) {
      return _then(_value.copyWith(agenda: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgendaEventImplCopyWith<$Res>
    implements $AgendaEventCopyWith<$Res> {
  factory _$$AgendaEventImplCopyWith(
          _$AgendaEventImpl value, $Res Function(_$AgendaEventImpl) then) =
      __$$AgendaEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? createdAt,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? updatedAt,
      String customerId,
      String title,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime startDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime endDate,
      String? color,
      String? info,
      bool notification,
      bool done,
      String status,
      Object? workEvidence,
      Object? notes,
      int? preparationTime,
      int? cleanupTime,
      bool customerNotified,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? deletedAt,
      List<StatusLogEntry> statusLog,
      String? quotationId,
      String? reviewId,
      Object? rescheduleLog,
      List<dynamic> messages,
      Agenda? agenda});

  @override
  $AgendaCopyWith<$Res>? get agenda;
}

/// @nodoc
class __$$AgendaEventImplCopyWithImpl<$Res>
    extends _$AgendaEventCopyWithImpl<$Res, _$AgendaEventImpl>
    implements _$$AgendaEventImplCopyWith<$Res> {
  __$$AgendaEventImplCopyWithImpl(
      _$AgendaEventImpl _value, $Res Function(_$AgendaEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customerId = null,
    Object? title = null,
    Object? startDate = null,
    Object? endDate = null,
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
    Object? statusLog = null,
    Object? quotationId = freezed,
    Object? reviewId = freezed,
    Object? rescheduleLog = freezed,
    Object? messages = null,
    Object? agenda = freezed,
  }) {
    return _then(_$AgendaEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
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
              as String,
      workEvidence:
          freezed == workEvidence ? _value.workEvidence : workEvidence,
      notes: freezed == notes ? _value.notes : notes,
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
      statusLog: null == statusLog
          ? _value._statusLog
          : statusLog // ignore: cast_nullable_to_non_nullable
              as List<StatusLogEntry>,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      rescheduleLog:
          freezed == rescheduleLog ? _value.rescheduleLog : rescheduleLog,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      agenda: freezed == agenda
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as Agenda?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AgendaEventImpl extends _AgendaEvent {
  const _$AgendaEventImpl(
      {required this.id,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      this.createdAt,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      this.updatedAt,
      required this.customerId,
      required this.title,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.startDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.endDate,
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
      final List<StatusLogEntry> statusLog = const [],
      this.quotationId,
      this.reviewId,
      this.rescheduleLog,
      final List<dynamic> messages = const [],
      this.agenda})
      : _statusLog = statusLog,
        _messages = messages,
        super._();

  factory _$AgendaEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaEventImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  final DateTime? updatedAt;
  @override
  final String customerId;
  @override
  final String title;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime startDate;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime endDate;
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
  final String status;
  @override
  final Object? workEvidence;
  @override
  final Object? notes;
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
  final List<StatusLogEntry> _statusLog;
  @override
  @JsonKey()
  List<StatusLogEntry> get statusLog {
    if (_statusLog is EqualUnmodifiableListView) return _statusLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusLog);
  }

  @override
  final String? quotationId;
  @override
  final String? reviewId;
  @override
  final Object? rescheduleLog;
  final List<dynamic> _messages;
  @override
  @JsonKey()
  List<dynamic> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final Agenda? agenda;

  @override
  String toString() {
    return 'AgendaEvent(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, title: $title, startDate: $startDate, endDate: $endDate, color: $color, info: $info, notification: $notification, done: $done, status: $status, workEvidence: $workEvidence, notes: $notes, preparationTime: $preparationTime, cleanupTime: $cleanupTime, customerNotified: $customerNotified, deletedAt: $deletedAt, statusLog: $statusLog, quotationId: $quotationId, reviewId: $reviewId, rescheduleLog: $rescheduleLog, messages: $messages, agenda: $agenda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.workEvidence, workEvidence) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.cleanupTime, cleanupTime) ||
                other.cleanupTime == cleanupTime) &&
            (identical(other.customerNotified, customerNotified) ||
                other.customerNotified == customerNotified) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            const DeepCollectionEquality()
                .equals(other._statusLog, _statusLog) &&
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
        startDate,
        endDate,
        color,
        info,
        notification,
        done,
        status,
        const DeepCollectionEquality().hash(workEvidence),
        const DeepCollectionEquality().hash(notes),
        preparationTime,
        cleanupTime,
        customerNotified,
        deletedAt,
        const DeepCollectionEquality().hash(_statusLog),
        quotationId,
        reviewId,
        const DeepCollectionEquality().hash(rescheduleLog),
        const DeepCollectionEquality().hash(_messages),
        agenda
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaEventImplCopyWith<_$AgendaEventImpl> get copyWith =>
      __$$AgendaEventImplCopyWithImpl<_$AgendaEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaEventImplToJson(
      this,
    );
  }
}

abstract class _AgendaEvent extends AgendaEvent {
  const factory _AgendaEvent(
      {required final String id,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      final DateTime? createdAt,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      final DateTime? updatedAt,
      required final String customerId,
      required final String title,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime startDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime endDate,
      final String? color,
      final String? info,
      final bool notification,
      final bool done,
      required final String status,
      final Object? workEvidence,
      final Object? notes,
      final int? preparationTime,
      final int? cleanupTime,
      final bool customerNotified,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      final DateTime? deletedAt,
      final List<StatusLogEntry> statusLog,
      final String? quotationId,
      final String? reviewId,
      final Object? rescheduleLog,
      final List<dynamic> messages,
      final Agenda? agenda}) = _$AgendaEventImpl;
  const _AgendaEvent._() : super._();

  factory _AgendaEvent.fromJson(Map<String, dynamic> json) =
      _$AgendaEventImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get updatedAt;
  @override
  String get customerId;
  @override
  String get title;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get startDate;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get endDate;
  @override
  String? get color;
  @override
  String? get info;
  @override
  bool get notification;
  @override
  bool get done;
  @override
  String get status;
  @override
  Object? get workEvidence;
  @override
  Object? get notes;
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
  List<StatusLogEntry> get statusLog;
  @override
  String? get quotationId;
  @override
  String? get reviewId;
  @override
  Object? get rescheduleLog;
  @override
  List<dynamic> get messages;
  @override
  Agenda? get agenda;
  @override
  @JsonKey(ignore: true)
  _$$AgendaEventImplCopyWith<_$AgendaEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusLogEntry _$StatusLogEntryFromJson(Map<String, dynamic> json) {
  return _StatusLogEntry.fromJson(json);
}

/// @nodoc
mixin _$StatusLogEntry {
  Actor get actor => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusLogEntryCopyWith<StatusLogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusLogEntryCopyWith<$Res> {
  factory $StatusLogEntryCopyWith(
          StatusLogEntry value, $Res Function(StatusLogEntry) then) =
      _$StatusLogEntryCopyWithImpl<$Res, StatusLogEntry>;
  @useResult
  $Res call(
      {Actor actor,
      String? notes,
      String? reason,
      String status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime timestamp,
      String? action});

  $ActorCopyWith<$Res> get actor;
}

/// @nodoc
class _$StatusLogEntryCopyWithImpl<$Res, $Val extends StatusLogEntry>
    implements $StatusLogEntryCopyWith<$Res> {
  _$StatusLogEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actor = null,
    Object? notes = freezed,
    Object? reason = freezed,
    Object? status = null,
    Object? timestamp = null,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      actor: null == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Actor,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActorCopyWith<$Res> get actor {
    return $ActorCopyWith<$Res>(_value.actor, (value) {
      return _then(_value.copyWith(actor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatusLogEntryImplCopyWith<$Res>
    implements $StatusLogEntryCopyWith<$Res> {
  factory _$$StatusLogEntryImplCopyWith(_$StatusLogEntryImpl value,
          $Res Function(_$StatusLogEntryImpl) then) =
      __$$StatusLogEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Actor actor,
      String? notes,
      String? reason,
      String status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime timestamp,
      String? action});

  @override
  $ActorCopyWith<$Res> get actor;
}

/// @nodoc
class __$$StatusLogEntryImplCopyWithImpl<$Res>
    extends _$StatusLogEntryCopyWithImpl<$Res, _$StatusLogEntryImpl>
    implements _$$StatusLogEntryImplCopyWith<$Res> {
  __$$StatusLogEntryImplCopyWithImpl(
      _$StatusLogEntryImpl _value, $Res Function(_$StatusLogEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actor = null,
    Object? notes = freezed,
    Object? reason = freezed,
    Object? status = null,
    Object? timestamp = null,
    Object? action = freezed,
  }) {
    return _then(_$StatusLogEntryImpl(
      actor: null == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Actor,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StatusLogEntryImpl extends _StatusLogEntry {
  const _$StatusLogEntryImpl(
      {required this.actor,
      this.notes,
      this.reason,
      required this.status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.timestamp,
      this.action})
      : super._();

  factory _$StatusLogEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusLogEntryImplFromJson(json);

  @override
  final Actor actor;
  @override
  final String? notes;
  @override
  final String? reason;
  @override
  final String status;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime timestamp;
  @override
  final String? action;

  @override
  String toString() {
    return 'StatusLogEntry(actor: $actor, notes: $notes, reason: $reason, status: $status, timestamp: $timestamp, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusLogEntryImpl &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, actor, notes, reason, status, timestamp, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusLogEntryImplCopyWith<_$StatusLogEntryImpl> get copyWith =>
      __$$StatusLogEntryImplCopyWithImpl<_$StatusLogEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusLogEntryImplToJson(
      this,
    );
  }
}

abstract class _StatusLogEntry extends StatusLogEntry {
  const factory _StatusLogEntry(
      {required final Actor actor,
      final String? notes,
      final String? reason,
      required final String status,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime timestamp,
      final String? action}) = _$StatusLogEntryImpl;
  const _StatusLogEntry._() : super._();

  factory _StatusLogEntry.fromJson(Map<String, dynamic> json) =
      _$StatusLogEntryImpl.fromJson;

  @override
  Actor get actor;
  @override
  String? get notes;
  @override
  String? get reason;
  @override
  String get status;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get timestamp;
  @override
  String? get action;
  @override
  @JsonKey(ignore: true)
  _$$StatusLogEntryImplCopyWith<_$StatusLogEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Actor _$ActorFromJson(Map<String, dynamic> json) {
  return _Actor.fromJson(json);
}

/// @nodoc
mixin _$Actor {
  String get role => throw _privateConstructorUsedError;
  String get roleId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorCopyWith<Actor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorCopyWith<$Res> {
  factory $ActorCopyWith(Actor value, $Res Function(Actor) then) =
      _$ActorCopyWithImpl<$Res, Actor>;
  @useResult
  $Res call({String role, String roleId, String userId});
}

/// @nodoc
class _$ActorCopyWithImpl<$Res, $Val extends Actor>
    implements $ActorCopyWith<$Res> {
  _$ActorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? roleId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActorImplCopyWith<$Res> implements $ActorCopyWith<$Res> {
  factory _$$ActorImplCopyWith(
          _$ActorImpl value, $Res Function(_$ActorImpl) then) =
      __$$ActorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String roleId, String userId});
}

/// @nodoc
class __$$ActorImplCopyWithImpl<$Res>
    extends _$ActorCopyWithImpl<$Res, _$ActorImpl>
    implements _$$ActorImplCopyWith<$Res> {
  __$$ActorImplCopyWithImpl(
      _$ActorImpl _value, $Res Function(_$ActorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? roleId = null,
    Object? userId = null,
  }) {
    return _then(_$ActorImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActorImpl implements _Actor {
  const _$ActorImpl(
      {required this.role, required this.roleId, required this.userId});

  factory _$ActorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActorImplFromJson(json);

  @override
  final String role;
  @override
  final String roleId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Actor(role: $role, roleId: $roleId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, roleId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorImplCopyWith<_$ActorImpl> get copyWith =>
      __$$ActorImplCopyWithImpl<_$ActorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActorImplToJson(
      this,
    );
  }
}

abstract class _Actor implements Actor {
  const factory _Actor(
      {required final String role,
      required final String roleId,
      required final String userId}) = _$ActorImpl;

  factory _Actor.fromJson(Map<String, dynamic> json) = _$ActorImpl.fromJson;

  @override
  String get role;
  @override
  String get roleId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$ActorImplCopyWith<_$ActorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Agenda _$AgendaFromJson(Map<String, dynamic> json) {
  return _Agenda.fromJson(json);
}

/// @nodoc
mixin _$Agenda {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  List<String> get workingDays => throw _privateConstructorUsedError;
  String? get workingHoursStart => throw _privateConstructorUsedError;
  String? get workingHoursEnd => throw _privateConstructorUsedError;
  bool get public => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaCopyWith<Agenda> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaCopyWith<$Res> {
  factory $AgendaCopyWith(Agenda value, $Res Function(Agenda) then) =
      _$AgendaCopyWithImpl<$Res, Agenda>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? createdAt,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? updatedAt,
      String userId,
      String artistId,
      List<String> workingDays,
      String? workingHoursStart,
      String? workingHoursEnd,
      bool public,
      bool open,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? deletedAt});
}

/// @nodoc
class _$AgendaCopyWithImpl<$Res, $Val extends Agenda>
    implements $AgendaCopyWith<$Res> {
  _$AgendaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = null,
    Object? artistId = null,
    Object? workingDays = null,
    Object? workingHoursStart = freezed,
    Object? workingHoursEnd = freezed,
    Object? public = null,
    Object? open = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      workingDays: null == workingDays
          ? _value.workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workingHoursStart: freezed == workingHoursStart
          ? _value.workingHoursStart
          : workingHoursStart // ignore: cast_nullable_to_non_nullable
              as String?,
      workingHoursEnd: freezed == workingHoursEnd
          ? _value.workingHoursEnd
          : workingHoursEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgendaImplCopyWith<$Res> implements $AgendaCopyWith<$Res> {
  factory _$$AgendaImplCopyWith(
          _$AgendaImpl value, $Res Function(_$AgendaImpl) then) =
      __$$AgendaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? createdAt,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? updatedAt,
      String userId,
      String artistId,
      List<String> workingDays,
      String? workingHoursStart,
      String? workingHoursEnd,
      bool public,
      bool open,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      DateTime? deletedAt});
}

/// @nodoc
class __$$AgendaImplCopyWithImpl<$Res>
    extends _$AgendaCopyWithImpl<$Res, _$AgendaImpl>
    implements _$$AgendaImplCopyWith<$Res> {
  __$$AgendaImplCopyWithImpl(
      _$AgendaImpl _value, $Res Function(_$AgendaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = null,
    Object? artistId = null,
    Object? workingDays = null,
    Object? workingHoursStart = freezed,
    Object? workingHoursEnd = freezed,
    Object? public = null,
    Object? open = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$AgendaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      workingDays: null == workingDays
          ? _value._workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workingHoursStart: freezed == workingHoursStart
          ? _value.workingHoursStart
          : workingHoursStart // ignore: cast_nullable_to_non_nullable
              as String?,
      workingHoursEnd: freezed == workingHoursEnd
          ? _value.workingHoursEnd
          : workingHoursEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaImpl implements _Agenda {
  const _$AgendaImpl(
      {required this.id,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      this.createdAt,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      this.updatedAt,
      required this.userId,
      required this.artistId,
      final List<String> workingDays = const [],
      this.workingHoursStart,
      this.workingHoursEnd,
      this.public = true,
      this.open = true,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      this.deletedAt})
      : _workingDays = workingDays;

  factory _$AgendaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  final DateTime? updatedAt;
  @override
  final String userId;
  @override
  final String artistId;
  final List<String> _workingDays;
  @override
  @JsonKey()
  List<String> get workingDays {
    if (_workingDays is EqualUnmodifiableListView) return _workingDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workingDays);
  }

  @override
  final String? workingHoursStart;
  @override
  final String? workingHoursEnd;
  @override
  @JsonKey()
  final bool public;
  @override
  @JsonKey()
  final bool open;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Agenda(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, artistId: $artistId, workingDays: $workingDays, workingHoursStart: $workingHoursStart, workingHoursEnd: $workingHoursEnd, public: $public, open: $open, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            const DeepCollectionEquality()
                .equals(other._workingDays, _workingDays) &&
            (identical(other.workingHoursStart, workingHoursStart) ||
                other.workingHoursStart == workingHoursStart) &&
            (identical(other.workingHoursEnd, workingHoursEnd) ||
                other.workingHoursEnd == workingHoursEnd) &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      userId,
      artistId,
      const DeepCollectionEquality().hash(_workingDays),
      workingHoursStart,
      workingHoursEnd,
      public,
      open,
      deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaImplCopyWith<_$AgendaImpl> get copyWith =>
      __$$AgendaImplCopyWithImpl<_$AgendaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaImplToJson(
      this,
    );
  }
}

abstract class _Agenda implements Agenda {
  const factory _Agenda(
      {required final String id,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      final DateTime? createdAt,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      final DateTime? updatedAt,
      required final String userId,
      required final String artistId,
      final List<String> workingDays,
      final String? workingHoursStart,
      final String? workingHoursEnd,
      final bool public,
      final bool open,
      @JsonKey(
          fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
      final DateTime? deletedAt}) = _$AgendaImpl;

  factory _Agenda.fromJson(Map<String, dynamic> json) = _$AgendaImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get updatedAt;
  @override
  String get userId;
  @override
  String get artistId;
  @override
  List<String> get workingDays;
  @override
  String? get workingHoursStart;
  @override
  String? get workingHoursEnd;
  @override
  bool get public;
  @override
  bool get open;
  @override
  @JsonKey(fromJson: _dateTimeFromJsonNullable, toJson: _dateTimeToJsonNullable)
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$AgendaImplCopyWith<_$AgendaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
