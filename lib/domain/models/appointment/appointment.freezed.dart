// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get endDate => throw _privateConstructorUsedError;
  AppointmentStatus get status => throw _privateConstructorUsedError;
  Artist get artist => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  bool get notification => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String? get quotationId => throw _privateConstructorUsedError;
  String? get cancelationReason => throw _privateConstructorUsedError;
  WorkEvidence? get workEvidence => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  bool? get readByCustomer => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {String id,
      String eventId,
      String customerId,
      String artistId,
      String title,
      String info,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime startDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime endDate,
      AppointmentStatus status,
      Artist artist,
      Location location,
      String color,
      bool notification,
      bool done,
      String? quotationId,
      String? cancelationReason,
      WorkEvidence? workEvidence,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? readByCustomer,
      DateTime? deletedAt});

  $ArtistCopyWith<$Res> get artist;
  $LocationCopyWith<$Res> get location;
  $WorkEvidenceCopyWith<$Res>? get workEvidence;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? customerId = null,
    Object? artistId = null,
    Object? title = null,
    Object? info = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? artist = null,
    Object? location = null,
    Object? color = null,
    Object? notification = null,
    Object? done = null,
    Object? quotationId = freezed,
    Object? cancelationReason = freezed,
    Object? workEvidence = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? readByCustomer = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelationReason: freezed == cancelationReason
          ? _value.cancelationReason
          : cancelationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as WorkEvidence?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readByCustomer: freezed == readByCustomer
          ? _value.readByCustomer
          : readByCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
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
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String eventId,
      String customerId,
      String artistId,
      String title,
      String info,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime startDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime endDate,
      AppointmentStatus status,
      Artist artist,
      Location location,
      String color,
      bool notification,
      bool done,
      String? quotationId,
      String? cancelationReason,
      WorkEvidence? workEvidence,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? readByCustomer,
      DateTime? deletedAt});

  @override
  $ArtistCopyWith<$Res> get artist;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $WorkEvidenceCopyWith<$Res>? get workEvidence;
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? customerId = null,
    Object? artistId = null,
    Object? title = null,
    Object? info = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? artist = null,
    Object? location = null,
    Object? color = null,
    Object? notification = null,
    Object? done = null,
    Object? quotationId = freezed,
    Object? cancelationReason = freezed,
    Object? workEvidence = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? readByCustomer = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$AppointmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelationReason: freezed == cancelationReason
          ? _value.cancelationReason
          : cancelationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as WorkEvidence?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readByCustomer: freezed == readByCustomer
          ? _value.readByCustomer
          : readByCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl implements _Appointment {
  const _$AppointmentImpl(
      {required this.id,
      required this.eventId,
      required this.customerId,
      required this.artistId,
      required this.title,
      required this.info,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.startDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.endDate,
      required this.status,
      required this.artist,
      required this.location,
      required this.color,
      required this.notification,
      required this.done,
      this.quotationId,
      this.cancelationReason,
      this.workEvidence,
      this.createdAt,
      this.updatedAt,
      this.readByCustomer,
      this.deletedAt});

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String customerId;
  @override
  final String artistId;
  @override
  final String title;
  @override
  final String info;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime startDate;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime endDate;
  @override
  final AppointmentStatus status;
  @override
  final Artist artist;
  @override
  final Location location;
  @override
  final String color;
  @override
  final bool notification;
  @override
  final bool done;
  @override
  final String? quotationId;
  @override
  final String? cancelationReason;
  @override
  final WorkEvidence? workEvidence;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final bool? readByCustomer;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Appointment(id: $id, eventId: $eventId, customerId: $customerId, artistId: $artistId, title: $title, info: $info, startDate: $startDate, endDate: $endDate, status: $status, artist: $artist, location: $location, color: $color, notification: $notification, done: $done, quotationId: $quotationId, cancelationReason: $cancelationReason, workEvidence: $workEvidence, createdAt: $createdAt, updatedAt: $updatedAt, readByCustomer: $readByCustomer, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.cancelationReason, cancelationReason) ||
                other.cancelationReason == cancelationReason) &&
            (identical(other.workEvidence, workEvidence) ||
                other.workEvidence == workEvidence) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.readByCustomer, readByCustomer) ||
                other.readByCustomer == readByCustomer) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        eventId,
        customerId,
        artistId,
        title,
        info,
        startDate,
        endDate,
        status,
        artist,
        location,
        color,
        notification,
        done,
        quotationId,
        cancelationReason,
        workEvidence,
        createdAt,
        updatedAt,
        readByCustomer,
        deletedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  const factory _Appointment(
      {required final String id,
      required final String eventId,
      required final String customerId,
      required final String artistId,
      required final String title,
      required final String info,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime startDate,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime endDate,
      required final AppointmentStatus status,
      required final Artist artist,
      required final Location location,
      required final String color,
      required final bool notification,
      required final bool done,
      final String? quotationId,
      final String? cancelationReason,
      final WorkEvidence? workEvidence,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final bool? readByCustomer,
      final DateTime? deletedAt}) = _$AppointmentImpl;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  String get id;
  @override
  String get eventId;
  @override
  String get customerId;
  @override
  String get artistId;
  @override
  String get title;
  @override
  String get info;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get startDate;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get endDate;
  @override
  AppointmentStatus get status;
  @override
  Artist get artist;
  @override
  Location get location;
  @override
  String get color;
  @override
  bool get notification;
  @override
  bool get done;
  @override
  String? get quotationId;
  @override
  String? get cancelationReason;
  @override
  WorkEvidence? get workEvidence;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  bool? get readByCustomer;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkEvidence _$WorkEvidenceFromJson(Map<String, dynamic> json) {
  return _WorkEvidence.fromJson(json);
}

/// @nodoc
mixin _$WorkEvidence {
  int get count => throw _privateConstructorUsedError;
  List<WorkEvidenceMetadata> get metadata => throw _privateConstructorUsedError;

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
  $Res call({int count, List<WorkEvidenceMetadata> metadata});
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
              as List<WorkEvidenceMetadata>,
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
  $Res call({int count, List<WorkEvidenceMetadata> metadata});
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
              as List<WorkEvidenceMetadata>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkEvidenceImpl implements _WorkEvidence {
  const _$WorkEvidenceImpl(
      {required this.count, required final List<WorkEvidenceMetadata> metadata})
      : _metadata = metadata;

  factory _$WorkEvidenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkEvidenceImplFromJson(json);

  @override
  final int count;
  final List<WorkEvidenceMetadata> _metadata;
  @override
  List<WorkEvidenceMetadata> get metadata {
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
      required final List<WorkEvidenceMetadata> metadata}) = _$WorkEvidenceImpl;

  factory _WorkEvidence.fromJson(Map<String, dynamic> json) =
      _$WorkEvidenceImpl.fromJson;

  @override
  int get count;
  @override
  List<WorkEvidenceMetadata> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$WorkEvidenceImplCopyWith<_$WorkEvidenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkEvidenceMetadata _$WorkEvidenceMetadataFromJson(Map<String, dynamic> json) {
  return _WorkEvidenceMetadata.fromJson(json);
}

/// @nodoc
mixin _$WorkEvidenceMetadata {
  String get url => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get encoding => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  String get fieldname => throw _privateConstructorUsedError;
  String get originalname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkEvidenceMetadataCopyWith<WorkEvidenceMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkEvidenceMetadataCopyWith<$Res> {
  factory $WorkEvidenceMetadataCopyWith(WorkEvidenceMetadata value,
          $Res Function(WorkEvidenceMetadata) then) =
      _$WorkEvidenceMetadataCopyWithImpl<$Res, WorkEvidenceMetadata>;
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
class _$WorkEvidenceMetadataCopyWithImpl<$Res,
        $Val extends WorkEvidenceMetadata>
    implements $WorkEvidenceMetadataCopyWith<$Res> {
  _$WorkEvidenceMetadataCopyWithImpl(this._value, this._then);

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
abstract class _$$WorkEvidenceMetadataImplCopyWith<$Res>
    implements $WorkEvidenceMetadataCopyWith<$Res> {
  factory _$$WorkEvidenceMetadataImplCopyWith(_$WorkEvidenceMetadataImpl value,
          $Res Function(_$WorkEvidenceMetadataImpl) then) =
      __$$WorkEvidenceMetadataImplCopyWithImpl<$Res>;
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
class __$$WorkEvidenceMetadataImplCopyWithImpl<$Res>
    extends _$WorkEvidenceMetadataCopyWithImpl<$Res, _$WorkEvidenceMetadataImpl>
    implements _$$WorkEvidenceMetadataImplCopyWith<$Res> {
  __$$WorkEvidenceMetadataImplCopyWithImpl(_$WorkEvidenceMetadataImpl _value,
      $Res Function(_$WorkEvidenceMetadataImpl) _then)
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
    return _then(_$WorkEvidenceMetadataImpl(
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
class _$WorkEvidenceMetadataImpl implements _WorkEvidenceMetadata {
  const _$WorkEvidenceMetadataImpl(
      {required this.url,
      required this.size,
      required this.type,
      required this.encoding,
      required this.position,
      required this.fieldname,
      required this.originalname});

  factory _$WorkEvidenceMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkEvidenceMetadataImplFromJson(json);

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
    return 'WorkEvidenceMetadata(url: $url, size: $size, type: $type, encoding: $encoding, position: $position, fieldname: $fieldname, originalname: $originalname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkEvidenceMetadataImpl &&
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
  _$$WorkEvidenceMetadataImplCopyWith<_$WorkEvidenceMetadataImpl>
      get copyWith =>
          __$$WorkEvidenceMetadataImplCopyWithImpl<_$WorkEvidenceMetadataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkEvidenceMetadataImplToJson(
      this,
    );
  }
}

abstract class _WorkEvidenceMetadata implements WorkEvidenceMetadata {
  const factory _WorkEvidenceMetadata(
      {required final String url,
      required final int size,
      required final String type,
      required final String encoding,
      required final int position,
      required final String fieldname,
      required final String originalname}) = _$WorkEvidenceMetadataImpl;

  factory _WorkEvidenceMetadata.fromJson(Map<String, dynamic> json) =
      _$WorkEvidenceMetadataImpl.fromJson;

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
  _$$WorkEvidenceMetadataImplCopyWith<_$WorkEvidenceMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
