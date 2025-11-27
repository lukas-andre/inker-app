// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agenda_event_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgendaEventDetailResponse _$AgendaEventDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _AgendaEventDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$AgendaEventDetailResponse {
  AgendaEventDetailEvent get event => throw _privateConstructorUsedError;
  AgendaEventDetailLocation get location => throw _privateConstructorUsedError;
  Quotation? get quotation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaEventDetailResponseCopyWith<AgendaEventDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaEventDetailResponseCopyWith<$Res> {
  factory $AgendaEventDetailResponseCopyWith(AgendaEventDetailResponse value,
          $Res Function(AgendaEventDetailResponse) then) =
      _$AgendaEventDetailResponseCopyWithImpl<$Res, AgendaEventDetailResponse>;
  @useResult
  $Res call(
      {AgendaEventDetailEvent event,
      AgendaEventDetailLocation location,
      Quotation? quotation});

  $AgendaEventDetailEventCopyWith<$Res> get event;
  $AgendaEventDetailLocationCopyWith<$Res> get location;
  $QuotationCopyWith<$Res>? get quotation;
}

/// @nodoc
class _$AgendaEventDetailResponseCopyWithImpl<$Res,
        $Val extends AgendaEventDetailResponse>
    implements $AgendaEventDetailResponseCopyWith<$Res> {
  _$AgendaEventDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? location = null,
    Object? quotation = freezed,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailEvent,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailLocation,
      quotation: freezed == quotation
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaEventDetailEventCopyWith<$Res> get event {
    return $AgendaEventDetailEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaEventDetailLocationCopyWith<$Res> get location {
    return $AgendaEventDetailLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuotationCopyWith<$Res>? get quotation {
    if (_value.quotation == null) {
      return null;
    }

    return $QuotationCopyWith<$Res>(_value.quotation!, (value) {
      return _then(_value.copyWith(quotation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgendaEventDetailResponseImplCopyWith<$Res>
    implements $AgendaEventDetailResponseCopyWith<$Res> {
  factory _$$AgendaEventDetailResponseImplCopyWith(
          _$AgendaEventDetailResponseImpl value,
          $Res Function(_$AgendaEventDetailResponseImpl) then) =
      __$$AgendaEventDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AgendaEventDetailEvent event,
      AgendaEventDetailLocation location,
      Quotation? quotation});

  @override
  $AgendaEventDetailEventCopyWith<$Res> get event;
  @override
  $AgendaEventDetailLocationCopyWith<$Res> get location;
  @override
  $QuotationCopyWith<$Res>? get quotation;
}

/// @nodoc
class __$$AgendaEventDetailResponseImplCopyWithImpl<$Res>
    extends _$AgendaEventDetailResponseCopyWithImpl<$Res,
        _$AgendaEventDetailResponseImpl>
    implements _$$AgendaEventDetailResponseImplCopyWith<$Res> {
  __$$AgendaEventDetailResponseImplCopyWithImpl(
      _$AgendaEventDetailResponseImpl _value,
      $Res Function(_$AgendaEventDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? location = null,
    Object? quotation = freezed,
  }) {
    return _then(_$AgendaEventDetailResponseImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailEvent,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailLocation,
      quotation: freezed == quotation
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaEventDetailResponseImpl implements _AgendaEventDetailResponse {
  const _$AgendaEventDetailResponseImpl(
      {required this.event, required this.location, this.quotation});

  factory _$AgendaEventDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaEventDetailResponseImplFromJson(json);

  @override
  final AgendaEventDetailEvent event;
  @override
  final AgendaEventDetailLocation location;
  @override
  final Quotation? quotation;

  @override
  String toString() {
    return 'AgendaEventDetailResponse(event: $event, location: $location, quotation: $quotation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaEventDetailResponseImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.quotation, quotation) ||
                other.quotation == quotation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, event, location, quotation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaEventDetailResponseImplCopyWith<_$AgendaEventDetailResponseImpl>
      get copyWith => __$$AgendaEventDetailResponseImplCopyWithImpl<
          _$AgendaEventDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaEventDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _AgendaEventDetailResponse implements AgendaEventDetailResponse {
  const factory _AgendaEventDetailResponse(
      {required final AgendaEventDetailEvent event,
      required final AgendaEventDetailLocation location,
      final Quotation? quotation}) = _$AgendaEventDetailResponseImpl;

  factory _AgendaEventDetailResponse.fromJson(Map<String, dynamic> json) =
      _$AgendaEventDetailResponseImpl.fromJson;

  @override
  AgendaEventDetailEvent get event;
  @override
  AgendaEventDetailLocation get location;
  @override
  Quotation? get quotation;
  @override
  @JsonKey(ignore: true)
  _$$AgendaEventDetailResponseImplCopyWith<_$AgendaEventDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgendaEventDetailEvent _$AgendaEventDetailEventFromJson(
    Map<String, dynamic> json) {
  return _AgendaEventDetailEvent.fromJson(json);
}

/// @nodoc
mixin _$AgendaEventDetailEvent {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  DateTime get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  DateTime get end => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  bool get notification => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  AgendaEventDetailWorkEvidence? get workEvidence =>
      throw _privateConstructorUsedError;
  String? get cancelationReason => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  String? get quotationId => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get preparationTimeMinutes => throw _privateConstructorUsedError;
  int? get cleanupTimeMinutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaEventDetailEventCopyWith<AgendaEventDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaEventDetailEventCopyWith<$Res> {
  factory $AgendaEventDetailEventCopyWith(AgendaEventDetailEvent value,
          $Res Function(AgendaEventDetailEvent) then) =
      _$AgendaEventDetailEventCopyWithImpl<$Res, AgendaEventDetailEvent>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String customerId,
      String title,
      @JsonKey(name: 'startDate') DateTime start,
      @JsonKey(name: 'endDate') DateTime end,
      String color,
      String? info,
      bool notification,
      bool done,
      AgendaEventDetailWorkEvidence? workEvidence,
      String? cancelationReason,
      DateTime? deletedAt,
      String? quotationId,
      String? notes,
      int? preparationTimeMinutes,
      int? cleanupTimeMinutes});

  $AgendaEventDetailWorkEvidenceCopyWith<$Res>? get workEvidence;
}

/// @nodoc
class _$AgendaEventDetailEventCopyWithImpl<$Res,
        $Val extends AgendaEventDetailEvent>
    implements $AgendaEventDetailEventCopyWith<$Res> {
  _$AgendaEventDetailEventCopyWithImpl(this._value, this._then);

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
    Object? notes = freezed,
    Object? preparationTimeMinutes = freezed,
    Object? cleanupTimeMinutes = freezed,
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
              as AgendaEventDetailWorkEvidence?,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      preparationTimeMinutes: freezed == preparationTimeMinutes
          ? _value.preparationTimeMinutes
          : preparationTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      cleanupTimeMinutes: freezed == cleanupTimeMinutes
          ? _value.cleanupTimeMinutes
          : cleanupTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaEventDetailWorkEvidenceCopyWith<$Res>? get workEvidence {
    if (_value.workEvidence == null) {
      return null;
    }

    return $AgendaEventDetailWorkEvidenceCopyWith<$Res>(_value.workEvidence!,
        (value) {
      return _then(_value.copyWith(workEvidence: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgendaEventDetailEventImplCopyWith<$Res>
    implements $AgendaEventDetailEventCopyWith<$Res> {
  factory _$$AgendaEventDetailEventImplCopyWith(
          _$AgendaEventDetailEventImpl value,
          $Res Function(_$AgendaEventDetailEventImpl) then) =
      __$$AgendaEventDetailEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String customerId,
      String title,
      @JsonKey(name: 'startDate') DateTime start,
      @JsonKey(name: 'endDate') DateTime end,
      String color,
      String? info,
      bool notification,
      bool done,
      AgendaEventDetailWorkEvidence? workEvidence,
      String? cancelationReason,
      DateTime? deletedAt,
      String? quotationId,
      String? notes,
      int? preparationTimeMinutes,
      int? cleanupTimeMinutes});

  @override
  $AgendaEventDetailWorkEvidenceCopyWith<$Res>? get workEvidence;
}

/// @nodoc
class __$$AgendaEventDetailEventImplCopyWithImpl<$Res>
    extends _$AgendaEventDetailEventCopyWithImpl<$Res,
        _$AgendaEventDetailEventImpl>
    implements _$$AgendaEventDetailEventImplCopyWith<$Res> {
  __$$AgendaEventDetailEventImplCopyWithImpl(
      _$AgendaEventDetailEventImpl _value,
      $Res Function(_$AgendaEventDetailEventImpl) _then)
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
    Object? notes = freezed,
    Object? preparationTimeMinutes = freezed,
    Object? cleanupTimeMinutes = freezed,
  }) {
    return _then(_$AgendaEventDetailEventImpl(
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
              as AgendaEventDetailWorkEvidence?,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      preparationTimeMinutes: freezed == preparationTimeMinutes
          ? _value.preparationTimeMinutes
          : preparationTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      cleanupTimeMinutes: freezed == cleanupTimeMinutes
          ? _value.cleanupTimeMinutes
          : cleanupTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaEventDetailEventImpl implements _AgendaEventDetailEvent {
  const _$AgendaEventDetailEventImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.customerId,
      required this.title,
      @JsonKey(name: 'startDate') required this.start,
      @JsonKey(name: 'endDate') required this.end,
      required this.color,
      this.info,
      required this.notification,
      required this.done,
      this.workEvidence,
      this.cancelationReason,
      this.deletedAt,
      this.quotationId,
      this.notes,
      this.preparationTimeMinutes,
      this.cleanupTimeMinutes});

  factory _$AgendaEventDetailEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaEventDetailEventImplFromJson(json);

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
  @JsonKey(name: 'startDate')
  final DateTime start;
  @override
  @JsonKey(name: 'endDate')
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
  final AgendaEventDetailWorkEvidence? workEvidence;
  @override
  final String? cancelationReason;
  @override
  final DateTime? deletedAt;
  @override
  final String? quotationId;
  @override
  final String? notes;
  @override
  final int? preparationTimeMinutes;
  @override
  final int? cleanupTimeMinutes;

  @override
  String toString() {
    return 'AgendaEventDetailEvent(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, title: $title, start: $start, end: $end, color: $color, info: $info, notification: $notification, done: $done, workEvidence: $workEvidence, cancelationReason: $cancelationReason, deletedAt: $deletedAt, quotationId: $quotationId, notes: $notes, preparationTimeMinutes: $preparationTimeMinutes, cleanupTimeMinutes: $cleanupTimeMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaEventDetailEventImpl &&
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
                other.quotationId == quotationId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.preparationTimeMinutes, preparationTimeMinutes) ||
                other.preparationTimeMinutes == preparationTimeMinutes) &&
            (identical(other.cleanupTimeMinutes, cleanupTimeMinutes) ||
                other.cleanupTimeMinutes == cleanupTimeMinutes));
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
      quotationId,
      notes,
      preparationTimeMinutes,
      cleanupTimeMinutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaEventDetailEventImplCopyWith<_$AgendaEventDetailEventImpl>
      get copyWith => __$$AgendaEventDetailEventImplCopyWithImpl<
          _$AgendaEventDetailEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaEventDetailEventImplToJson(
      this,
    );
  }
}

abstract class _AgendaEventDetailEvent implements AgendaEventDetailEvent {
  const factory _AgendaEventDetailEvent(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String customerId,
      required final String title,
      @JsonKey(name: 'startDate') required final DateTime start,
      @JsonKey(name: 'endDate') required final DateTime end,
      required final String color,
      final String? info,
      required final bool notification,
      required final bool done,
      final AgendaEventDetailWorkEvidence? workEvidence,
      final String? cancelationReason,
      final DateTime? deletedAt,
      final String? quotationId,
      final String? notes,
      final int? preparationTimeMinutes,
      final int? cleanupTimeMinutes}) = _$AgendaEventDetailEventImpl;

  factory _AgendaEventDetailEvent.fromJson(Map<String, dynamic> json) =
      _$AgendaEventDetailEventImpl.fromJson;

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
  @JsonKey(name: 'startDate')
  DateTime get start;
  @override
  @JsonKey(name: 'endDate')
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
  AgendaEventDetailWorkEvidence? get workEvidence;
  @override
  String? get cancelationReason;
  @override
  DateTime? get deletedAt;
  @override
  String? get quotationId;
  @override
  String? get notes;
  @override
  int? get preparationTimeMinutes;
  @override
  int? get cleanupTimeMinutes;
  @override
  @JsonKey(ignore: true)
  _$$AgendaEventDetailEventImplCopyWith<_$AgendaEventDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgendaEventDetailWorkEvidence _$AgendaEventDetailWorkEvidenceFromJson(
    Map<String, dynamic> json) {
  return _AgendaEventDetailWorkEvidence.fromJson(json);
}

/// @nodoc
mixin _$AgendaEventDetailWorkEvidence {
  int get count => throw _privateConstructorUsedError;
  List<AgendaEventDetailMetadata> get metadata =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaEventDetailWorkEvidenceCopyWith<AgendaEventDetailWorkEvidence>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaEventDetailWorkEvidenceCopyWith<$Res> {
  factory $AgendaEventDetailWorkEvidenceCopyWith(
          AgendaEventDetailWorkEvidence value,
          $Res Function(AgendaEventDetailWorkEvidence) then) =
      _$AgendaEventDetailWorkEvidenceCopyWithImpl<$Res,
          AgendaEventDetailWorkEvidence>;
  @useResult
  $Res call({int count, List<AgendaEventDetailMetadata> metadata});
}

/// @nodoc
class _$AgendaEventDetailWorkEvidenceCopyWithImpl<$Res,
        $Val extends AgendaEventDetailWorkEvidence>
    implements $AgendaEventDetailWorkEvidenceCopyWith<$Res> {
  _$AgendaEventDetailWorkEvidenceCopyWithImpl(this._value, this._then);

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
              as List<AgendaEventDetailMetadata>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgendaEventDetailWorkEvidenceImplCopyWith<$Res>
    implements $AgendaEventDetailWorkEvidenceCopyWith<$Res> {
  factory _$$AgendaEventDetailWorkEvidenceImplCopyWith(
          _$AgendaEventDetailWorkEvidenceImpl value,
          $Res Function(_$AgendaEventDetailWorkEvidenceImpl) then) =
      __$$AgendaEventDetailWorkEvidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<AgendaEventDetailMetadata> metadata});
}

/// @nodoc
class __$$AgendaEventDetailWorkEvidenceImplCopyWithImpl<$Res>
    extends _$AgendaEventDetailWorkEvidenceCopyWithImpl<$Res,
        _$AgendaEventDetailWorkEvidenceImpl>
    implements _$$AgendaEventDetailWorkEvidenceImplCopyWith<$Res> {
  __$$AgendaEventDetailWorkEvidenceImplCopyWithImpl(
      _$AgendaEventDetailWorkEvidenceImpl _value,
      $Res Function(_$AgendaEventDetailWorkEvidenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? metadata = null,
  }) {
    return _then(_$AgendaEventDetailWorkEvidenceImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<AgendaEventDetailMetadata>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaEventDetailWorkEvidenceImpl
    implements _AgendaEventDetailWorkEvidence {
  const _$AgendaEventDetailWorkEvidenceImpl(
      {required this.count,
      required final List<AgendaEventDetailMetadata> metadata})
      : _metadata = metadata;

  factory _$AgendaEventDetailWorkEvidenceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgendaEventDetailWorkEvidenceImplFromJson(json);

  @override
  final int count;
  final List<AgendaEventDetailMetadata> _metadata;
  @override
  List<AgendaEventDetailMetadata> get metadata {
    if (_metadata is EqualUnmodifiableListView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metadata);
  }

  @override
  String toString() {
    return 'AgendaEventDetailWorkEvidence(count: $count, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaEventDetailWorkEvidenceImpl &&
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
  _$$AgendaEventDetailWorkEvidenceImplCopyWith<
          _$AgendaEventDetailWorkEvidenceImpl>
      get copyWith => __$$AgendaEventDetailWorkEvidenceImplCopyWithImpl<
          _$AgendaEventDetailWorkEvidenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaEventDetailWorkEvidenceImplToJson(
      this,
    );
  }
}

abstract class _AgendaEventDetailWorkEvidence
    implements AgendaEventDetailWorkEvidence {
  const factory _AgendaEventDetailWorkEvidence(
          {required final int count,
          required final List<AgendaEventDetailMetadata> metadata}) =
      _$AgendaEventDetailWorkEvidenceImpl;

  factory _AgendaEventDetailWorkEvidence.fromJson(Map<String, dynamic> json) =
      _$AgendaEventDetailWorkEvidenceImpl.fromJson;

  @override
  int get count;
  @override
  List<AgendaEventDetailMetadata> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AgendaEventDetailWorkEvidenceImplCopyWith<
          _$AgendaEventDetailWorkEvidenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgendaEventDetailMetadata _$AgendaEventDetailMetadataFromJson(
    Map<String, dynamic> json) {
  return _AgendaEventDetailMetadata.fromJson(json);
}

/// @nodoc
mixin _$AgendaEventDetailMetadata {
  String get url => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get encoding => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  String get fieldname => throw _privateConstructorUsedError;
  String get originalname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaEventDetailMetadataCopyWith<AgendaEventDetailMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaEventDetailMetadataCopyWith<$Res> {
  factory $AgendaEventDetailMetadataCopyWith(AgendaEventDetailMetadata value,
          $Res Function(AgendaEventDetailMetadata) then) =
      _$AgendaEventDetailMetadataCopyWithImpl<$Res, AgendaEventDetailMetadata>;
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
class _$AgendaEventDetailMetadataCopyWithImpl<$Res,
        $Val extends AgendaEventDetailMetadata>
    implements $AgendaEventDetailMetadataCopyWith<$Res> {
  _$AgendaEventDetailMetadataCopyWithImpl(this._value, this._then);

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
abstract class _$$AgendaEventDetailMetadataImplCopyWith<$Res>
    implements $AgendaEventDetailMetadataCopyWith<$Res> {
  factory _$$AgendaEventDetailMetadataImplCopyWith(
          _$AgendaEventDetailMetadataImpl value,
          $Res Function(_$AgendaEventDetailMetadataImpl) then) =
      __$$AgendaEventDetailMetadataImplCopyWithImpl<$Res>;
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
class __$$AgendaEventDetailMetadataImplCopyWithImpl<$Res>
    extends _$AgendaEventDetailMetadataCopyWithImpl<$Res,
        _$AgendaEventDetailMetadataImpl>
    implements _$$AgendaEventDetailMetadataImplCopyWith<$Res> {
  __$$AgendaEventDetailMetadataImplCopyWithImpl(
      _$AgendaEventDetailMetadataImpl _value,
      $Res Function(_$AgendaEventDetailMetadataImpl) _then)
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
    return _then(_$AgendaEventDetailMetadataImpl(
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
class _$AgendaEventDetailMetadataImpl implements _AgendaEventDetailMetadata {
  const _$AgendaEventDetailMetadataImpl(
      {required this.url,
      required this.size,
      required this.type,
      required this.encoding,
      required this.position,
      required this.fieldname,
      required this.originalname});

  factory _$AgendaEventDetailMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaEventDetailMetadataImplFromJson(json);

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
    return 'AgendaEventDetailMetadata(url: $url, size: $size, type: $type, encoding: $encoding, position: $position, fieldname: $fieldname, originalname: $originalname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaEventDetailMetadataImpl &&
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
  _$$AgendaEventDetailMetadataImplCopyWith<_$AgendaEventDetailMetadataImpl>
      get copyWith => __$$AgendaEventDetailMetadataImplCopyWithImpl<
          _$AgendaEventDetailMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaEventDetailMetadataImplToJson(
      this,
    );
  }
}

abstract class _AgendaEventDetailMetadata implements AgendaEventDetailMetadata {
  const factory _AgendaEventDetailMetadata(
      {required final String url,
      required final int size,
      required final String type,
      required final String encoding,
      required final int position,
      required final String fieldname,
      required final String originalname}) = _$AgendaEventDetailMetadataImpl;

  factory _AgendaEventDetailMetadata.fromJson(Map<String, dynamic> json) =
      _$AgendaEventDetailMetadataImpl.fromJson;

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
  _$$AgendaEventDetailMetadataImplCopyWith<_$AgendaEventDetailMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgendaEventDetailLocation _$AgendaEventDetailLocationFromJson(
    Map<String, dynamic> json) {
  return _AgendaEventDetailLocation.fromJson(json);
}

/// @nodoc
mixin _$AgendaEventDetailLocation {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get address1 => throw _privateConstructorUsedError;
  String get shortAddress1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String get addressType => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get formattedAddress => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  AgendaEventDetailViewport get viewport => throw _privateConstructorUsedError;
  AgendaEventDetailLocationCoordinates get location =>
      throw _privateConstructorUsedError;
  String? get artistId => throw _privateConstructorUsedError;
  String? get address3 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get profileThumbnail => throw _privateConstructorUsedError;
  String? get googlePlaceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaEventDetailLocationCopyWith<AgendaEventDetailLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaEventDetailLocationCopyWith<$Res> {
  factory $AgendaEventDetailLocationCopyWith(AgendaEventDetailLocation value,
          $Res Function(AgendaEventDetailLocation) then) =
      _$AgendaEventDetailLocationCopyWithImpl<$Res, AgendaEventDetailLocation>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String address1,
      String shortAddress1,
      String address2,
      String addressType,
      String state,
      String city,
      String country,
      String formattedAddress,
      double lat,
      double lng,
      AgendaEventDetailViewport viewport,
      AgendaEventDetailLocationCoordinates location,
      String? artistId,
      String? address3,
      String? name,
      String? profileThumbnail,
      String? googlePlaceId});

  $AgendaEventDetailViewportCopyWith<$Res> get viewport;
  $AgendaEventDetailLocationCoordinatesCopyWith<$Res> get location;
}

/// @nodoc
class _$AgendaEventDetailLocationCopyWithImpl<$Res,
        $Val extends AgendaEventDetailLocation>
    implements $AgendaEventDetailLocationCopyWith<$Res> {
  _$AgendaEventDetailLocationCopyWithImpl(this._value, this._then);

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
    Object? address1 = null,
    Object? shortAddress1 = null,
    Object? address2 = null,
    Object? addressType = null,
    Object? state = null,
    Object? city = null,
    Object? country = null,
    Object? formattedAddress = null,
    Object? lat = null,
    Object? lng = null,
    Object? viewport = null,
    Object? location = null,
    Object? artistId = freezed,
    Object? address3 = freezed,
    Object? name = freezed,
    Object? profileThumbnail = freezed,
    Object? googlePlaceId = freezed,
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
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress1: null == shortAddress1
          ? _value.shortAddress1
          : shortAddress1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      viewport: null == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailViewport,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailLocationCoordinates,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      address3: freezed == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaEventDetailViewportCopyWith<$Res> get viewport {
    return $AgendaEventDetailViewportCopyWith<$Res>(_value.viewport, (value) {
      return _then(_value.copyWith(viewport: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaEventDetailLocationCoordinatesCopyWith<$Res> get location {
    return $AgendaEventDetailLocationCoordinatesCopyWith<$Res>(_value.location,
        (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgendaEventDetailLocationImplCopyWith<$Res>
    implements $AgendaEventDetailLocationCopyWith<$Res> {
  factory _$$AgendaEventDetailLocationImplCopyWith(
          _$AgendaEventDetailLocationImpl value,
          $Res Function(_$AgendaEventDetailLocationImpl) then) =
      __$$AgendaEventDetailLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String address1,
      String shortAddress1,
      String address2,
      String addressType,
      String state,
      String city,
      String country,
      String formattedAddress,
      double lat,
      double lng,
      AgendaEventDetailViewport viewport,
      AgendaEventDetailLocationCoordinates location,
      String? artistId,
      String? address3,
      String? name,
      String? profileThumbnail,
      String? googlePlaceId});

  @override
  $AgendaEventDetailViewportCopyWith<$Res> get viewport;
  @override
  $AgendaEventDetailLocationCoordinatesCopyWith<$Res> get location;
}

/// @nodoc
class __$$AgendaEventDetailLocationImplCopyWithImpl<$Res>
    extends _$AgendaEventDetailLocationCopyWithImpl<$Res,
        _$AgendaEventDetailLocationImpl>
    implements _$$AgendaEventDetailLocationImplCopyWith<$Res> {
  __$$AgendaEventDetailLocationImplCopyWithImpl(
      _$AgendaEventDetailLocationImpl _value,
      $Res Function(_$AgendaEventDetailLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? address1 = null,
    Object? shortAddress1 = null,
    Object? address2 = null,
    Object? addressType = null,
    Object? state = null,
    Object? city = null,
    Object? country = null,
    Object? formattedAddress = null,
    Object? lat = null,
    Object? lng = null,
    Object? viewport = null,
    Object? location = null,
    Object? artistId = freezed,
    Object? address3 = freezed,
    Object? name = freezed,
    Object? profileThumbnail = freezed,
    Object? googlePlaceId = freezed,
  }) {
    return _then(_$AgendaEventDetailLocationImpl(
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
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress1: null == shortAddress1
          ? _value.shortAddress1
          : shortAddress1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      viewport: null == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailViewport,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailLocationCoordinates,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      address3: freezed == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profileThumbnail: freezed == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlaceId: freezed == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaEventDetailLocationImpl implements _AgendaEventDetailLocation {
  const _$AgendaEventDetailLocationImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.address1,
      required this.shortAddress1,
      required this.address2,
      required this.addressType,
      required this.state,
      required this.city,
      required this.country,
      required this.formattedAddress,
      required this.lat,
      required this.lng,
      required this.viewport,
      required this.location,
      this.artistId,
      this.address3,
      this.name,
      this.profileThumbnail,
      this.googlePlaceId});

  factory _$AgendaEventDetailLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaEventDetailLocationImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String address1;
  @override
  final String shortAddress1;
  @override
  final String address2;
  @override
  final String addressType;
  @override
  final String state;
  @override
  final String city;
  @override
  final String country;
  @override
  final String formattedAddress;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final AgendaEventDetailViewport viewport;
  @override
  final AgendaEventDetailLocationCoordinates location;
  @override
  final String? artistId;
  @override
  final String? address3;
  @override
  final String? name;
  @override
  final String? profileThumbnail;
  @override
  final String? googlePlaceId;

  @override
  String toString() {
    return 'AgendaEventDetailLocation(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, address1: $address1, shortAddress1: $shortAddress1, address2: $address2, addressType: $addressType, state: $state, city: $city, country: $country, formattedAddress: $formattedAddress, lat: $lat, lng: $lng, viewport: $viewport, location: $location, artistId: $artistId, address3: $address3, name: $name, profileThumbnail: $profileThumbnail, googlePlaceId: $googlePlaceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaEventDetailLocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.shortAddress1, shortAddress1) ||
                other.shortAddress1 == shortAddress1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.viewport, viewport) ||
                other.viewport == viewport) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.address3, address3) ||
                other.address3 == address3) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileThumbnail, profileThumbnail) ||
                other.profileThumbnail == profileThumbnail) &&
            (identical(other.googlePlaceId, googlePlaceId) ||
                other.googlePlaceId == googlePlaceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        address1,
        shortAddress1,
        address2,
        addressType,
        state,
        city,
        country,
        formattedAddress,
        lat,
        lng,
        viewport,
        location,
        artistId,
        address3,
        name,
        profileThumbnail,
        googlePlaceId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaEventDetailLocationImplCopyWith<_$AgendaEventDetailLocationImpl>
      get copyWith => __$$AgendaEventDetailLocationImplCopyWithImpl<
          _$AgendaEventDetailLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaEventDetailLocationImplToJson(
      this,
    );
  }
}

abstract class _AgendaEventDetailLocation implements AgendaEventDetailLocation {
  const factory _AgendaEventDetailLocation(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String address1,
      required final String shortAddress1,
      required final String address2,
      required final String addressType,
      required final String state,
      required final String city,
      required final String country,
      required final String formattedAddress,
      required final double lat,
      required final double lng,
      required final AgendaEventDetailViewport viewport,
      required final AgendaEventDetailLocationCoordinates location,
      final String? artistId,
      final String? address3,
      final String? name,
      final String? profileThumbnail,
      final String? googlePlaceId}) = _$AgendaEventDetailLocationImpl;

  factory _AgendaEventDetailLocation.fromJson(Map<String, dynamic> json) =
      _$AgendaEventDetailLocationImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get address1;
  @override
  String get shortAddress1;
  @override
  String get address2;
  @override
  String get addressType;
  @override
  String get state;
  @override
  String get city;
  @override
  String get country;
  @override
  String get formattedAddress;
  @override
  double get lat;
  @override
  double get lng;
  @override
  AgendaEventDetailViewport get viewport;
  @override
  AgendaEventDetailLocationCoordinates get location;
  @override
  String? get artistId;
  @override
  String? get address3;
  @override
  String? get name;
  @override
  String? get profileThumbnail;
  @override
  String? get googlePlaceId;
  @override
  @JsonKey(ignore: true)
  _$$AgendaEventDetailLocationImplCopyWith<_$AgendaEventDetailLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgendaEventDetailViewport _$AgendaEventDetailViewportFromJson(
    Map<String, dynamic> json) {
  return _AgendaEventDetailViewport.fromJson(json);
}

/// @nodoc
mixin _$AgendaEventDetailViewport {
  AgendaEventDetailCoordinates get northeast =>
      throw _privateConstructorUsedError;
  AgendaEventDetailCoordinates get southwest =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaEventDetailViewportCopyWith<AgendaEventDetailViewport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaEventDetailViewportCopyWith<$Res> {
  factory $AgendaEventDetailViewportCopyWith(AgendaEventDetailViewport value,
          $Res Function(AgendaEventDetailViewport) then) =
      _$AgendaEventDetailViewportCopyWithImpl<$Res, AgendaEventDetailViewport>;
  @useResult
  $Res call(
      {AgendaEventDetailCoordinates northeast,
      AgendaEventDetailCoordinates southwest});

  $AgendaEventDetailCoordinatesCopyWith<$Res> get northeast;
  $AgendaEventDetailCoordinatesCopyWith<$Res> get southwest;
}

/// @nodoc
class _$AgendaEventDetailViewportCopyWithImpl<$Res,
        $Val extends AgendaEventDetailViewport>
    implements $AgendaEventDetailViewportCopyWith<$Res> {
  _$AgendaEventDetailViewportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = null,
    Object? southwest = null,
  }) {
    return _then(_value.copyWith(
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailCoordinates,
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailCoordinates,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaEventDetailCoordinatesCopyWith<$Res> get northeast {
    return $AgendaEventDetailCoordinatesCopyWith<$Res>(_value.northeast,
        (value) {
      return _then(_value.copyWith(northeast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaEventDetailCoordinatesCopyWith<$Res> get southwest {
    return $AgendaEventDetailCoordinatesCopyWith<$Res>(_value.southwest,
        (value) {
      return _then(_value.copyWith(southwest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgendaEventDetailViewportImplCopyWith<$Res>
    implements $AgendaEventDetailViewportCopyWith<$Res> {
  factory _$$AgendaEventDetailViewportImplCopyWith(
          _$AgendaEventDetailViewportImpl value,
          $Res Function(_$AgendaEventDetailViewportImpl) then) =
      __$$AgendaEventDetailViewportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AgendaEventDetailCoordinates northeast,
      AgendaEventDetailCoordinates southwest});

  @override
  $AgendaEventDetailCoordinatesCopyWith<$Res> get northeast;
  @override
  $AgendaEventDetailCoordinatesCopyWith<$Res> get southwest;
}

/// @nodoc
class __$$AgendaEventDetailViewportImplCopyWithImpl<$Res>
    extends _$AgendaEventDetailViewportCopyWithImpl<$Res,
        _$AgendaEventDetailViewportImpl>
    implements _$$AgendaEventDetailViewportImplCopyWith<$Res> {
  __$$AgendaEventDetailViewportImplCopyWithImpl(
      _$AgendaEventDetailViewportImpl _value,
      $Res Function(_$AgendaEventDetailViewportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = null,
    Object? southwest = null,
  }) {
    return _then(_$AgendaEventDetailViewportImpl(
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailCoordinates,
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailCoordinates,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaEventDetailViewportImpl implements _AgendaEventDetailViewport {
  const _$AgendaEventDetailViewportImpl(
      {required this.northeast, required this.southwest});

  factory _$AgendaEventDetailViewportImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaEventDetailViewportImplFromJson(json);

  @override
  final AgendaEventDetailCoordinates northeast;
  @override
  final AgendaEventDetailCoordinates southwest;

  @override
  String toString() {
    return 'AgendaEventDetailViewport(northeast: $northeast, southwest: $southwest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaEventDetailViewportImpl &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaEventDetailViewportImplCopyWith<_$AgendaEventDetailViewportImpl>
      get copyWith => __$$AgendaEventDetailViewportImplCopyWithImpl<
          _$AgendaEventDetailViewportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaEventDetailViewportImplToJson(
      this,
    );
  }
}

abstract class _AgendaEventDetailViewport implements AgendaEventDetailViewport {
  const factory _AgendaEventDetailViewport(
          {required final AgendaEventDetailCoordinates northeast,
          required final AgendaEventDetailCoordinates southwest}) =
      _$AgendaEventDetailViewportImpl;

  factory _AgendaEventDetailViewport.fromJson(Map<String, dynamic> json) =
      _$AgendaEventDetailViewportImpl.fromJson;

  @override
  AgendaEventDetailCoordinates get northeast;
  @override
  AgendaEventDetailCoordinates get southwest;
  @override
  @JsonKey(ignore: true)
  _$$AgendaEventDetailViewportImplCopyWith<_$AgendaEventDetailViewportImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgendaEventDetailCoordinates _$AgendaEventDetailCoordinatesFromJson(
    Map<String, dynamic> json) {
  return _AgendaEventDetailCoordinates.fromJson(json);
}

/// @nodoc
mixin _$AgendaEventDetailCoordinates {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaEventDetailCoordinatesCopyWith<AgendaEventDetailCoordinates>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaEventDetailCoordinatesCopyWith<$Res> {
  factory $AgendaEventDetailCoordinatesCopyWith(
          AgendaEventDetailCoordinates value,
          $Res Function(AgendaEventDetailCoordinates) then) =
      _$AgendaEventDetailCoordinatesCopyWithImpl<$Res,
          AgendaEventDetailCoordinates>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$AgendaEventDetailCoordinatesCopyWithImpl<$Res,
        $Val extends AgendaEventDetailCoordinates>
    implements $AgendaEventDetailCoordinatesCopyWith<$Res> {
  _$AgendaEventDetailCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgendaEventDetailCoordinatesImplCopyWith<$Res>
    implements $AgendaEventDetailCoordinatesCopyWith<$Res> {
  factory _$$AgendaEventDetailCoordinatesImplCopyWith(
          _$AgendaEventDetailCoordinatesImpl value,
          $Res Function(_$AgendaEventDetailCoordinatesImpl) then) =
      __$$AgendaEventDetailCoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$AgendaEventDetailCoordinatesImplCopyWithImpl<$Res>
    extends _$AgendaEventDetailCoordinatesCopyWithImpl<$Res,
        _$AgendaEventDetailCoordinatesImpl>
    implements _$$AgendaEventDetailCoordinatesImplCopyWith<$Res> {
  __$$AgendaEventDetailCoordinatesImplCopyWithImpl(
      _$AgendaEventDetailCoordinatesImpl _value,
      $Res Function(_$AgendaEventDetailCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$AgendaEventDetailCoordinatesImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaEventDetailCoordinatesImpl
    implements _AgendaEventDetailCoordinates {
  const _$AgendaEventDetailCoordinatesImpl(
      {required this.lat, required this.lng});

  factory _$AgendaEventDetailCoordinatesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgendaEventDetailCoordinatesImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'AgendaEventDetailCoordinates(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaEventDetailCoordinatesImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaEventDetailCoordinatesImplCopyWith<
          _$AgendaEventDetailCoordinatesImpl>
      get copyWith => __$$AgendaEventDetailCoordinatesImplCopyWithImpl<
          _$AgendaEventDetailCoordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaEventDetailCoordinatesImplToJson(
      this,
    );
  }
}

abstract class _AgendaEventDetailCoordinates
    implements AgendaEventDetailCoordinates {
  const factory _AgendaEventDetailCoordinates(
      {required final double lat,
      required final double lng}) = _$AgendaEventDetailCoordinatesImpl;

  factory _AgendaEventDetailCoordinates.fromJson(Map<String, dynamic> json) =
      _$AgendaEventDetailCoordinatesImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$AgendaEventDetailCoordinatesImplCopyWith<
          _$AgendaEventDetailCoordinatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgendaEventDetailLocationCoordinates
    _$AgendaEventDetailLocationCoordinatesFromJson(Map<String, dynamic> json) {
  return _AgendaEventDetailLocationCoordinates.fromJson(json);
}

/// @nodoc
mixin _$AgendaEventDetailLocationCoordinates {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaEventDetailLocationCoordinatesCopyWith<
          AgendaEventDetailLocationCoordinates>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaEventDetailLocationCoordinatesCopyWith<$Res> {
  factory $AgendaEventDetailLocationCoordinatesCopyWith(
          AgendaEventDetailLocationCoordinates value,
          $Res Function(AgendaEventDetailLocationCoordinates) then) =
      _$AgendaEventDetailLocationCoordinatesCopyWithImpl<$Res,
          AgendaEventDetailLocationCoordinates>;
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$AgendaEventDetailLocationCoordinatesCopyWithImpl<$Res,
        $Val extends AgendaEventDetailLocationCoordinates>
    implements $AgendaEventDetailLocationCoordinatesCopyWith<$Res> {
  _$AgendaEventDetailLocationCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgendaEventDetailLocationCoordinatesImplCopyWith<$Res>
    implements $AgendaEventDetailLocationCoordinatesCopyWith<$Res> {
  factory _$$AgendaEventDetailLocationCoordinatesImplCopyWith(
          _$AgendaEventDetailLocationCoordinatesImpl value,
          $Res Function(_$AgendaEventDetailLocationCoordinatesImpl) then) =
      __$$AgendaEventDetailLocationCoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$$AgendaEventDetailLocationCoordinatesImplCopyWithImpl<$Res>
    extends _$AgendaEventDetailLocationCoordinatesCopyWithImpl<$Res,
        _$AgendaEventDetailLocationCoordinatesImpl>
    implements _$$AgendaEventDetailLocationCoordinatesImplCopyWith<$Res> {
  __$$AgendaEventDetailLocationCoordinatesImplCopyWithImpl(
      _$AgendaEventDetailLocationCoordinatesImpl _value,
      $Res Function(_$AgendaEventDetailLocationCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$AgendaEventDetailLocationCoordinatesImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaEventDetailLocationCoordinatesImpl
    implements _AgendaEventDetailLocationCoordinates {
  const _$AgendaEventDetailLocationCoordinatesImpl(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$AgendaEventDetailLocationCoordinatesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgendaEventDetailLocationCoordinatesImplFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'AgendaEventDetailLocationCoordinates(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaEventDetailLocationCoordinatesImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaEventDetailLocationCoordinatesImplCopyWith<
          _$AgendaEventDetailLocationCoordinatesImpl>
      get copyWith => __$$AgendaEventDetailLocationCoordinatesImplCopyWithImpl<
          _$AgendaEventDetailLocationCoordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaEventDetailLocationCoordinatesImplToJson(
      this,
    );
  }
}

abstract class _AgendaEventDetailLocationCoordinates
    implements AgendaEventDetailLocationCoordinates {
  const factory _AgendaEventDetailLocationCoordinates(
          {required final String type,
          required final List<double> coordinates}) =
      _$AgendaEventDetailLocationCoordinatesImpl;

  factory _AgendaEventDetailLocationCoordinates.fromJson(
          Map<String, dynamic> json) =
      _$AgendaEventDetailLocationCoordinatesImpl.fromJson;

  @override
  String get type;
  @override
  List<double> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$AgendaEventDetailLocationCoordinatesImplCopyWith<
          _$AgendaEventDetailLocationCoordinatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
