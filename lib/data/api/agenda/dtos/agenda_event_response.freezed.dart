// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agenda_event_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgendaEventResponse _$AgendaEventResponseFromJson(Map<String, dynamic> json) {
  return _AgendaEventResponse.fromJson(json);
}

/// @nodoc
mixin _$AgendaEventResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerId')
  int get customerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  DateTime get endDate => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;
  bool get notification => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'workEvidence')
  Map<String, dynamic>? get workEvidence => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelationReason')
  String? get cancelationReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletedAt')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'quotationId')
  int? get quotationId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get agenda => throw _privateConstructorUsedError;
  Map<String, dynamic>? get artist => throw _privateConstructorUsedError;
  Map<String, dynamic>? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaEventResponseCopyWith<AgendaEventResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaEventResponseCopyWith<$Res> {
  factory $AgendaEventResponseCopyWith(
          AgendaEventResponse value, $Res Function(AgendaEventResponse) then) =
      _$AgendaEventResponseCopyWithImpl<$Res, AgendaEventResponse>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime updatedAt,
      @JsonKey(name: 'customerId') int customerId,
      String title,
      @JsonKey(name: 'startDate') DateTime startDate,
      @JsonKey(name: 'endDate') DateTime endDate,
      String color,
      String info,
      bool notification,
      bool done,
      String status,
      @JsonKey(name: 'workEvidence') Map<String, dynamic>? workEvidence,
      @JsonKey(name: 'cancelationReason') String? cancelationReason,
      @JsonKey(name: 'deletedAt') DateTime? deletedAt,
      @JsonKey(name: 'quotationId') int? quotationId,
      Map<String, dynamic>? agenda,
      Map<String, dynamic>? artist,
      Map<String, dynamic>? location});
}

/// @nodoc
class _$AgendaEventResponseCopyWithImpl<$Res, $Val extends AgendaEventResponse>
    implements $AgendaEventResponseCopyWith<$Res> {
  _$AgendaEventResponseCopyWithImpl(this._value, this._then);

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
    Object? startDate = null,
    Object? endDate = null,
    Object? color = null,
    Object? info = null,
    Object? notification = null,
    Object? done = null,
    Object? status = null,
    Object? workEvidence = freezed,
    Object? cancelationReason = freezed,
    Object? deletedAt = freezed,
    Object? quotationId = freezed,
    Object? agenda = freezed,
    Object? artist = freezed,
    Object? location = freezed,
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
              as int?,
      agenda: freezed == agenda
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgendaEventResponseImplCopyWith<$Res>
    implements $AgendaEventResponseCopyWith<$Res> {
  factory _$$AgendaEventResponseImplCopyWith(_$AgendaEventResponseImpl value,
          $Res Function(_$AgendaEventResponseImpl) then) =
      __$$AgendaEventResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime updatedAt,
      @JsonKey(name: 'customerId') int customerId,
      String title,
      @JsonKey(name: 'startDate') DateTime startDate,
      @JsonKey(name: 'endDate') DateTime endDate,
      String color,
      String info,
      bool notification,
      bool done,
      String status,
      @JsonKey(name: 'workEvidence') Map<String, dynamic>? workEvidence,
      @JsonKey(name: 'cancelationReason') String? cancelationReason,
      @JsonKey(name: 'deletedAt') DateTime? deletedAt,
      @JsonKey(name: 'quotationId') int? quotationId,
      Map<String, dynamic>? agenda,
      Map<String, dynamic>? artist,
      Map<String, dynamic>? location});
}

/// @nodoc
class __$$AgendaEventResponseImplCopyWithImpl<$Res>
    extends _$AgendaEventResponseCopyWithImpl<$Res, _$AgendaEventResponseImpl>
    implements _$$AgendaEventResponseImplCopyWith<$Res> {
  __$$AgendaEventResponseImplCopyWithImpl(_$AgendaEventResponseImpl _value,
      $Res Function(_$AgendaEventResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? customerId = null,
    Object? title = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? color = null,
    Object? info = null,
    Object? notification = null,
    Object? done = null,
    Object? status = null,
    Object? workEvidence = freezed,
    Object? cancelationReason = freezed,
    Object? deletedAt = freezed,
    Object? quotationId = freezed,
    Object? agenda = freezed,
    Object? artist = freezed,
    Object? location = freezed,
  }) {
    return _then(_$AgendaEventResponseImpl(
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      workEvidence: freezed == workEvidence
          ? _value._workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
              as int?,
      agenda: freezed == agenda
          ? _value._agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      artist: freezed == artist
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaEventResponseImpl implements _AgendaEventResponse {
  const _$AgendaEventResponseImpl(
      {required this.id,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt,
      @JsonKey(name: 'customerId') required this.customerId,
      required this.title,
      @JsonKey(name: 'startDate') required this.startDate,
      @JsonKey(name: 'endDate') required this.endDate,
      required this.color,
      required this.info,
      required this.notification,
      required this.done,
      required this.status,
      @JsonKey(name: 'workEvidence') final Map<String, dynamic>? workEvidence,
      @JsonKey(name: 'cancelationReason') this.cancelationReason,
      @JsonKey(name: 'deletedAt') this.deletedAt,
      @JsonKey(name: 'quotationId') this.quotationId,
      required final Map<String, dynamic>? agenda,
      required final Map<String, dynamic>? artist,
      required final Map<String, dynamic>? location})
      : _workEvidence = workEvidence,
        _agenda = agenda,
        _artist = artist,
        _location = location;

  factory _$AgendaEventResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaEventResponseImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'customerId')
  final int customerId;
  @override
  final String title;
  @override
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @override
  @JsonKey(name: 'endDate')
  final DateTime endDate;
  @override
  final String color;
  @override
  final String info;
  @override
  final bool notification;
  @override
  final bool done;
  @override
  final String status;
  final Map<String, dynamic>? _workEvidence;
  @override
  @JsonKey(name: 'workEvidence')
  Map<String, dynamic>? get workEvidence {
    final value = _workEvidence;
    if (value == null) return null;
    if (_workEvidence is EqualUnmodifiableMapView) return _workEvidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'cancelationReason')
  final String? cancelationReason;
  @override
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'quotationId')
  final int? quotationId;
  final Map<String, dynamic>? _agenda;
  @override
  Map<String, dynamic>? get agenda {
    final value = _agenda;
    if (value == null) return null;
    if (_agenda is EqualUnmodifiableMapView) return _agenda;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _artist;
  @override
  Map<String, dynamic>? get artist {
    final value = _artist;
    if (value == null) return null;
    if (_artist is EqualUnmodifiableMapView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _location;
  @override
  Map<String, dynamic>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AgendaEventResponse(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, title: $title, startDate: $startDate, endDate: $endDate, color: $color, info: $info, notification: $notification, done: $done, status: $status, workEvidence: $workEvidence, cancelationReason: $cancelationReason, deletedAt: $deletedAt, quotationId: $quotationId, agenda: $agenda, artist: $artist, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaEventResponseImpl &&
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
                .equals(other._workEvidence, _workEvidence) &&
            (identical(other.cancelationReason, cancelationReason) ||
                other.cancelationReason == cancelationReason) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            const DeepCollectionEquality().equals(other._agenda, _agenda) &&
            const DeepCollectionEquality().equals(other._artist, _artist) &&
            const DeepCollectionEquality().equals(other._location, _location));
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
        const DeepCollectionEquality().hash(_workEvidence),
        cancelationReason,
        deletedAt,
        quotationId,
        const DeepCollectionEquality().hash(_agenda),
        const DeepCollectionEquality().hash(_artist),
        const DeepCollectionEquality().hash(_location)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaEventResponseImplCopyWith<_$AgendaEventResponseImpl> get copyWith =>
      __$$AgendaEventResponseImplCopyWithImpl<_$AgendaEventResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaEventResponseImplToJson(
      this,
    );
  }
}

abstract class _AgendaEventResponse implements AgendaEventResponse {
  const factory _AgendaEventResponse(
      {required final int id,
      @JsonKey(name: 'createdAt') required final DateTime createdAt,
      @JsonKey(name: 'updatedAt') required final DateTime updatedAt,
      @JsonKey(name: 'customerId') required final int customerId,
      required final String title,
      @JsonKey(name: 'startDate') required final DateTime startDate,
      @JsonKey(name: 'endDate') required final DateTime endDate,
      required final String color,
      required final String info,
      required final bool notification,
      required final bool done,
      required final String status,
      @JsonKey(name: 'workEvidence') final Map<String, dynamic>? workEvidence,
      @JsonKey(name: 'cancelationReason') final String? cancelationReason,
      @JsonKey(name: 'deletedAt') final DateTime? deletedAt,
      @JsonKey(name: 'quotationId') final int? quotationId,
      required final Map<String, dynamic>? agenda,
      required final Map<String, dynamic>? artist,
      required final Map<String, dynamic>?
          location}) = _$AgendaEventResponseImpl;

  factory _AgendaEventResponse.fromJson(Map<String, dynamic> json) =
      _$AgendaEventResponseImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'customerId')
  int get customerId;
  @override
  String get title;
  @override
  @JsonKey(name: 'startDate')
  DateTime get startDate;
  @override
  @JsonKey(name: 'endDate')
  DateTime get endDate;
  @override
  String get color;
  @override
  String get info;
  @override
  bool get notification;
  @override
  bool get done;
  @override
  String get status;
  @override
  @JsonKey(name: 'workEvidence')
  Map<String, dynamic>? get workEvidence;
  @override
  @JsonKey(name: 'cancelationReason')
  String? get cancelationReason;
  @override
  @JsonKey(name: 'deletedAt')
  DateTime? get deletedAt;
  @override
  @JsonKey(name: 'quotationId')
  int? get quotationId;
  @override
  Map<String, dynamic>? get agenda;
  @override
  Map<String, dynamic>? get artist;
  @override
  Map<String, dynamic>? get location;
  @override
  @JsonKey(ignore: true)
  _$$AgendaEventResponseImplCopyWith<_$AgendaEventResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
