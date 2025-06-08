// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentDetailDto _$AppointmentDetailDtoFromJson(Map<String, dynamic> json) {
  return _AppointmentDetailDto.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDetailDto {
  AppointmentEventDto get event => throw _privateConstructorUsedError;
  Artist get artist => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  Quotation get quotation => throw _privateConstructorUsedError;
  EventActions get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentDetailDtoCopyWith<AppointmentDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailDtoCopyWith<$Res> {
  factory $AppointmentDetailDtoCopyWith(AppointmentDetailDto value,
          $Res Function(AppointmentDetailDto) then) =
      _$AppointmentDetailDtoCopyWithImpl<$Res, AppointmentDetailDto>;
  @useResult
  $Res call(
      {AppointmentEventDto event,
      Artist artist,
      Location location,
      Quotation quotation,
      EventActions actions});

  $AppointmentEventDtoCopyWith<$Res> get event;
  $ArtistCopyWith<$Res> get artist;
  $LocationCopyWith<$Res> get location;
  $QuotationCopyWith<$Res> get quotation;
  $EventActionsCopyWith<$Res> get actions;
}

/// @nodoc
class _$AppointmentDetailDtoCopyWithImpl<$Res,
        $Val extends AppointmentDetailDto>
    implements $AppointmentDetailDtoCopyWith<$Res> {
  _$AppointmentDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? artist = null,
    Object? location = null,
    Object? quotation = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as AppointmentEventDto,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      quotation: null == quotation
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as EventActions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentEventDtoCopyWith<$Res> get event {
    return $AppointmentEventDtoCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res> get artist {
    return $ArtistCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuotationCopyWith<$Res> get quotation {
    return $QuotationCopyWith<$Res>(_value.quotation, (value) {
      return _then(_value.copyWith(quotation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventActionsCopyWith<$Res> get actions {
    return $EventActionsCopyWith<$Res>(_value.actions, (value) {
      return _then(_value.copyWith(actions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentDetailDtoImplCopyWith<$Res>
    implements $AppointmentDetailDtoCopyWith<$Res> {
  factory _$$AppointmentDetailDtoImplCopyWith(_$AppointmentDetailDtoImpl value,
          $Res Function(_$AppointmentDetailDtoImpl) then) =
      __$$AppointmentDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppointmentEventDto event,
      Artist artist,
      Location location,
      Quotation quotation,
      EventActions actions});

  @override
  $AppointmentEventDtoCopyWith<$Res> get event;
  @override
  $ArtistCopyWith<$Res> get artist;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $QuotationCopyWith<$Res> get quotation;
  @override
  $EventActionsCopyWith<$Res> get actions;
}

/// @nodoc
class __$$AppointmentDetailDtoImplCopyWithImpl<$Res>
    extends _$AppointmentDetailDtoCopyWithImpl<$Res, _$AppointmentDetailDtoImpl>
    implements _$$AppointmentDetailDtoImplCopyWith<$Res> {
  __$$AppointmentDetailDtoImplCopyWithImpl(_$AppointmentDetailDtoImpl _value,
      $Res Function(_$AppointmentDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? artist = null,
    Object? location = null,
    Object? quotation = null,
    Object? actions = null,
  }) {
    return _then(_$AppointmentDetailDtoImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as AppointmentEventDto,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      quotation: null == quotation
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as EventActions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentDetailDtoImpl implements _AppointmentDetailDto {
  const _$AppointmentDetailDtoImpl(
      {required this.event,
      required this.artist,
      required this.location,
      required this.quotation,
      required this.actions});

  factory _$AppointmentDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentDetailDtoImplFromJson(json);

  @override
  final AppointmentEventDto event;
  @override
  final Artist artist;
  @override
  final Location location;
  @override
  final Quotation quotation;
  @override
  final EventActions actions;

  @override
  String toString() {
    return 'AppointmentDetailDto(event: $event, artist: $artist, location: $location, quotation: $quotation, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentDetailDtoImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.quotation, quotation) ||
                other.quotation == quotation) &&
            (identical(other.actions, actions) || other.actions == actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, event, artist, location, quotation, actions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentDetailDtoImplCopyWith<_$AppointmentDetailDtoImpl>
      get copyWith =>
          __$$AppointmentDetailDtoImplCopyWithImpl<_$AppointmentDetailDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _AppointmentDetailDto implements AppointmentDetailDto {
  const factory _AppointmentDetailDto(
      {required final AppointmentEventDto event,
      required final Artist artist,
      required final Location location,
      required final Quotation quotation,
      required final EventActions actions}) = _$AppointmentDetailDtoImpl;

  factory _AppointmentDetailDto.fromJson(Map<String, dynamic> json) =
      _$AppointmentDetailDtoImpl.fromJson;

  @override
  AppointmentEventDto get event;
  @override
  Artist get artist;
  @override
  Location get location;
  @override
  Quotation get quotation;
  @override
  EventActions get actions;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentDetailDtoImplCopyWith<_$AppointmentDetailDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentEventDto _$AppointmentEventDtoFromJson(Map<String, dynamic> json) {
  return _AppointmentEventDto.fromJson(json);
}

/// @nodoc
mixin _$AppointmentEventDto {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;
  bool get notification => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  dynamic get workEvidence => throw _privateConstructorUsedError;
  String? get cancelationReason => throw _privateConstructorUsedError;
  String? get rescheduleReason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get preparationTime => throw _privateConstructorUsedError;
  int? get cleanupTime => throw _privateConstructorUsedError;
  DateTime? get lastStatusChange => throw _privateConstructorUsedError;
  bool? get customerNotified => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  String? get quotationId => throw _privateConstructorUsedError;
  AgendaDto get agenda => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentEventDtoCopyWith<AppointmentEventDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventDtoCopyWith<$Res> {
  factory $AppointmentEventDtoCopyWith(
          AppointmentEventDto value, $Res Function(AppointmentEventDto) then) =
      _$AppointmentEventDtoCopyWithImpl<$Res, AppointmentEventDto>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String customerId,
      String title,
      DateTime startDate,
      DateTime endDate,
      String color,
      String info,
      bool notification,
      bool done,
      String status,
      dynamic workEvidence,
      String? cancelationReason,
      String? rescheduleReason,
      String? notes,
      int? preparationTime,
      int? cleanupTime,
      DateTime? lastStatusChange,
      bool? customerNotified,
      DateTime? deletedAt,
      String? quotationId,
      AgendaDto agenda});

  $AgendaDtoCopyWith<$Res> get agenda;
}

/// @nodoc
class _$AppointmentEventDtoCopyWithImpl<$Res, $Val extends AppointmentEventDto>
    implements $AppointmentEventDtoCopyWith<$Res> {
  _$AppointmentEventDtoCopyWithImpl(this._value, this._then);

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
    Object? rescheduleReason = freezed,
    Object? notes = freezed,
    Object? preparationTime = freezed,
    Object? cleanupTime = freezed,
    Object? lastStatusChange = freezed,
    Object? customerNotified = freezed,
    Object? deletedAt = freezed,
    Object? quotationId = freezed,
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
              as dynamic,
      cancelationReason: freezed == cancelationReason
          ? _value.cancelationReason
          : cancelationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      rescheduleReason: freezed == rescheduleReason
          ? _value.rescheduleReason
          : rescheduleReason // ignore: cast_nullable_to_non_nullable
              as String?,
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
      lastStatusChange: freezed == lastStatusChange
          ? _value.lastStatusChange
          : lastStatusChange // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerNotified: freezed == customerNotified
          ? _value.customerNotified
          : customerNotified // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      agenda: null == agenda
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as AgendaDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaDtoCopyWith<$Res> get agenda {
    return $AgendaDtoCopyWith<$Res>(_value.agenda, (value) {
      return _then(_value.copyWith(agenda: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentEventDtoImplCopyWith<$Res>
    implements $AppointmentEventDtoCopyWith<$Res> {
  factory _$$AppointmentEventDtoImplCopyWith(_$AppointmentEventDtoImpl value,
          $Res Function(_$AppointmentEventDtoImpl) then) =
      __$$AppointmentEventDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String customerId,
      String title,
      DateTime startDate,
      DateTime endDate,
      String color,
      String info,
      bool notification,
      bool done,
      String status,
      dynamic workEvidence,
      String? cancelationReason,
      String? rescheduleReason,
      String? notes,
      int? preparationTime,
      int? cleanupTime,
      DateTime? lastStatusChange,
      bool? customerNotified,
      DateTime? deletedAt,
      String? quotationId,
      AgendaDto agenda});

  @override
  $AgendaDtoCopyWith<$Res> get agenda;
}

/// @nodoc
class __$$AppointmentEventDtoImplCopyWithImpl<$Res>
    extends _$AppointmentEventDtoCopyWithImpl<$Res, _$AppointmentEventDtoImpl>
    implements _$$AppointmentEventDtoImplCopyWith<$Res> {
  __$$AppointmentEventDtoImplCopyWithImpl(_$AppointmentEventDtoImpl _value,
      $Res Function(_$AppointmentEventDtoImpl) _then)
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
    Object? rescheduleReason = freezed,
    Object? notes = freezed,
    Object? preparationTime = freezed,
    Object? cleanupTime = freezed,
    Object? lastStatusChange = freezed,
    Object? customerNotified = freezed,
    Object? deletedAt = freezed,
    Object? quotationId = freezed,
    Object? agenda = null,
  }) {
    return _then(_$AppointmentEventDtoImpl(
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
              as dynamic,
      cancelationReason: freezed == cancelationReason
          ? _value.cancelationReason
          : cancelationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      rescheduleReason: freezed == rescheduleReason
          ? _value.rescheduleReason
          : rescheduleReason // ignore: cast_nullable_to_non_nullable
              as String?,
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
      lastStatusChange: freezed == lastStatusChange
          ? _value.lastStatusChange
          : lastStatusChange // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerNotified: freezed == customerNotified
          ? _value.customerNotified
          : customerNotified // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      agenda: null == agenda
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as AgendaDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentEventDtoImpl implements _AppointmentEventDto {
  const _$AppointmentEventDtoImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.customerId,
      required this.title,
      required this.startDate,
      required this.endDate,
      required this.color,
      required this.info,
      required this.notification,
      required this.done,
      required this.status,
      this.workEvidence,
      this.cancelationReason,
      this.rescheduleReason,
      this.notes,
      this.preparationTime,
      this.cleanupTime,
      this.lastStatusChange,
      this.customerNotified,
      this.deletedAt,
      this.quotationId,
      required this.agenda});

  factory _$AppointmentEventDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentEventDtoImplFromJson(json);

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
  final DateTime startDate;
  @override
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
  @override
  final dynamic workEvidence;
  @override
  final String? cancelationReason;
  @override
  final String? rescheduleReason;
  @override
  final String? notes;
  @override
  final int? preparationTime;
  @override
  final int? cleanupTime;
  @override
  final DateTime? lastStatusChange;
  @override
  final bool? customerNotified;
  @override
  final DateTime? deletedAt;
  @override
  final String? quotationId;
  @override
  final AgendaDto agenda;

  @override
  String toString() {
    return 'AppointmentEventDto(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, title: $title, startDate: $startDate, endDate: $endDate, color: $color, info: $info, notification: $notification, done: $done, status: $status, workEvidence: $workEvidence, cancelationReason: $cancelationReason, rescheduleReason: $rescheduleReason, notes: $notes, preparationTime: $preparationTime, cleanupTime: $cleanupTime, lastStatusChange: $lastStatusChange, customerNotified: $customerNotified, deletedAt: $deletedAt, quotationId: $quotationId, agenda: $agenda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentEventDtoImpl &&
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
            (identical(other.cancelationReason, cancelationReason) ||
                other.cancelationReason == cancelationReason) &&
            (identical(other.rescheduleReason, rescheduleReason) ||
                other.rescheduleReason == rescheduleReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.cleanupTime, cleanupTime) ||
                other.cleanupTime == cleanupTime) &&
            (identical(other.lastStatusChange, lastStatusChange) ||
                other.lastStatusChange == lastStatusChange) &&
            (identical(other.customerNotified, customerNotified) ||
                other.customerNotified == customerNotified) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
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
        cancelationReason,
        rescheduleReason,
        notes,
        preparationTime,
        cleanupTime,
        lastStatusChange,
        customerNotified,
        deletedAt,
        quotationId,
        agenda
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentEventDtoImplCopyWith<_$AppointmentEventDtoImpl> get copyWith =>
      __$$AppointmentEventDtoImplCopyWithImpl<_$AppointmentEventDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentEventDtoImplToJson(
      this,
    );
  }
}

abstract class _AppointmentEventDto implements AppointmentEventDto {
  const factory _AppointmentEventDto(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String customerId,
      required final String title,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String color,
      required final String info,
      required final bool notification,
      required final bool done,
      required final String status,
      final dynamic workEvidence,
      final String? cancelationReason,
      final String? rescheduleReason,
      final String? notes,
      final int? preparationTime,
      final int? cleanupTime,
      final DateTime? lastStatusChange,
      final bool? customerNotified,
      final DateTime? deletedAt,
      final String? quotationId,
      required final AgendaDto agenda}) = _$AppointmentEventDtoImpl;

  factory _AppointmentEventDto.fromJson(Map<String, dynamic> json) =
      _$AppointmentEventDtoImpl.fromJson;

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
  DateTime get startDate;
  @override
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
  dynamic get workEvidence;
  @override
  String? get cancelationReason;
  @override
  String? get rescheduleReason;
  @override
  String? get notes;
  @override
  int? get preparationTime;
  @override
  int? get cleanupTime;
  @override
  DateTime? get lastStatusChange;
  @override
  bool? get customerNotified;
  @override
  DateTime? get deletedAt;
  @override
  String? get quotationId;
  @override
  AgendaDto get agenda;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentEventDtoImplCopyWith<_$AppointmentEventDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgendaDto _$AgendaDtoFromJson(Map<String, dynamic> json) {
  return _AgendaDto.fromJson(json);
}

/// @nodoc
mixin _$AgendaDto {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  List<String> get workingDays => throw _privateConstructorUsedError;
  String? get workingHoursStart => throw _privateConstructorUsedError;
  String? get workingHoursEnd => throw _privateConstructorUsedError;
  bool get public => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaDtoCopyWith<AgendaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaDtoCopyWith<$Res> {
  factory $AgendaDtoCopyWith(AgendaDto value, $Res Function(AgendaDto) then) =
      _$AgendaDtoCopyWithImpl<$Res, AgendaDto>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String userId,
      String artistId,
      List<String> workingDays,
      String? workingHoursStart,
      String? workingHoursEnd,
      bool public,
      bool open,
      DateTime? deletedAt});
}

/// @nodoc
class _$AgendaDtoCopyWithImpl<$Res, $Val extends AgendaDto>
    implements $AgendaDtoCopyWith<$Res> {
  _$AgendaDtoCopyWithImpl(this._value, this._then);

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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$AgendaDtoImplCopyWith<$Res>
    implements $AgendaDtoCopyWith<$Res> {
  factory _$$AgendaDtoImplCopyWith(
          _$AgendaDtoImpl value, $Res Function(_$AgendaDtoImpl) then) =
      __$$AgendaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String userId,
      String artistId,
      List<String> workingDays,
      String? workingHoursStart,
      String? workingHoursEnd,
      bool public,
      bool open,
      DateTime? deletedAt});
}

/// @nodoc
class __$$AgendaDtoImplCopyWithImpl<$Res>
    extends _$AgendaDtoCopyWithImpl<$Res, _$AgendaDtoImpl>
    implements _$$AgendaDtoImplCopyWith<$Res> {
  __$$AgendaDtoImplCopyWithImpl(
      _$AgendaDtoImpl _value, $Res Function(_$AgendaDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? artistId = null,
    Object? workingDays = null,
    Object? workingHoursStart = freezed,
    Object? workingHoursEnd = freezed,
    Object? public = null,
    Object? open = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$AgendaDtoImpl(
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
class _$AgendaDtoImpl implements _AgendaDto {
  const _$AgendaDtoImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.userId,
      required this.artistId,
      required final List<String> workingDays,
      this.workingHoursStart,
      this.workingHoursEnd,
      required this.public,
      required this.open,
      this.deletedAt})
      : _workingDays = workingDays;

  factory _$AgendaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaDtoImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String userId;
  @override
  final String artistId;
  final List<String> _workingDays;
  @override
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
  final bool public;
  @override
  final bool open;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'AgendaDto(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, artistId: $artistId, workingDays: $workingDays, workingHoursStart: $workingHoursStart, workingHoursEnd: $workingHoursEnd, public: $public, open: $open, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaDtoImpl &&
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
  _$$AgendaDtoImplCopyWith<_$AgendaDtoImpl> get copyWith =>
      __$$AgendaDtoImplCopyWithImpl<_$AgendaDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaDtoImplToJson(
      this,
    );
  }
}

abstract class _AgendaDto implements AgendaDto {
  const factory _AgendaDto(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String userId,
      required final String artistId,
      required final List<String> workingDays,
      final String? workingHoursStart,
      final String? workingHoursEnd,
      required final bool public,
      required final bool open,
      final DateTime? deletedAt}) = _$AgendaDtoImpl;

  factory _AgendaDto.fromJson(Map<String, dynamic> json) =
      _$AgendaDtoImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
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
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$AgendaDtoImplCopyWith<_$AgendaDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
