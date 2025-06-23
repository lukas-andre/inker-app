// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleResponse _$ScheduleResponseFromJson(Map<String, dynamic> json) {
  return _ScheduleResponse.fromJson(json);
}

/// @nodoc
mixin _$ScheduleResponse {
  List<ScheduleEvent> get events => throw _privateConstructorUsedError;
  List<ScheduleQuotation> get quotations => throw _privateConstructorUsedError;
  List<AvailabilityDay> get availability => throw _privateConstructorUsedError;
  List<SuggestedSlot> get suggestedSlots => throw _privateConstructorUsedError;
  WorkingHours get workingHours => throw _privateConstructorUsedError;
  ScheduleSummary get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleResponseCopyWith<ScheduleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleResponseCopyWith<$Res> {
  factory $ScheduleResponseCopyWith(
          ScheduleResponse value, $Res Function(ScheduleResponse) then) =
      _$ScheduleResponseCopyWithImpl<$Res, ScheduleResponse>;
  @useResult
  $Res call(
      {List<ScheduleEvent> events,
      List<ScheduleQuotation> quotations,
      List<AvailabilityDay> availability,
      List<SuggestedSlot> suggestedSlots,
      WorkingHours workingHours,
      ScheduleSummary summary});

  $WorkingHoursCopyWith<$Res> get workingHours;
  $ScheduleSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class _$ScheduleResponseCopyWithImpl<$Res, $Val extends ScheduleResponse>
    implements $ScheduleResponseCopyWith<$Res> {
  _$ScheduleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? quotations = null,
    Object? availability = null,
    Object? suggestedSlots = null,
    Object? workingHours = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEvent>,
      quotations: null == quotations
          ? _value.quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<ScheduleQuotation>,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as List<AvailabilityDay>,
      suggestedSlots: null == suggestedSlots
          ? _value.suggestedSlots
          : suggestedSlots // ignore: cast_nullable_to_non_nullable
              as List<SuggestedSlot>,
      workingHours: null == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as WorkingHours,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ScheduleSummary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkingHoursCopyWith<$Res> get workingHours {
    return $WorkingHoursCopyWith<$Res>(_value.workingHours, (value) {
      return _then(_value.copyWith(workingHours: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleSummaryCopyWith<$Res> get summary {
    return $ScheduleSummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleResponseImplCopyWith<$Res>
    implements $ScheduleResponseCopyWith<$Res> {
  factory _$$ScheduleResponseImplCopyWith(_$ScheduleResponseImpl value,
          $Res Function(_$ScheduleResponseImpl) then) =
      __$$ScheduleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ScheduleEvent> events,
      List<ScheduleQuotation> quotations,
      List<AvailabilityDay> availability,
      List<SuggestedSlot> suggestedSlots,
      WorkingHours workingHours,
      ScheduleSummary summary});

  @override
  $WorkingHoursCopyWith<$Res> get workingHours;
  @override
  $ScheduleSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class __$$ScheduleResponseImplCopyWithImpl<$Res>
    extends _$ScheduleResponseCopyWithImpl<$Res, _$ScheduleResponseImpl>
    implements _$$ScheduleResponseImplCopyWith<$Res> {
  __$$ScheduleResponseImplCopyWithImpl(_$ScheduleResponseImpl _value,
      $Res Function(_$ScheduleResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? quotations = null,
    Object? availability = null,
    Object? suggestedSlots = null,
    Object? workingHours = null,
    Object? summary = null,
  }) {
    return _then(_$ScheduleResponseImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEvent>,
      quotations: null == quotations
          ? _value._quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<ScheduleQuotation>,
      availability: null == availability
          ? _value._availability
          : availability // ignore: cast_nullable_to_non_nullable
              as List<AvailabilityDay>,
      suggestedSlots: null == suggestedSlots
          ? _value._suggestedSlots
          : suggestedSlots // ignore: cast_nullable_to_non_nullable
              as List<SuggestedSlot>,
      workingHours: null == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as WorkingHours,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ScheduleSummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleResponseImpl implements _ScheduleResponse {
  const _$ScheduleResponseImpl(
      {required final List<ScheduleEvent> events,
      required final List<ScheduleQuotation> quotations,
      required final List<AvailabilityDay> availability,
      required final List<SuggestedSlot> suggestedSlots,
      required this.workingHours,
      required this.summary})
      : _events = events,
        _quotations = quotations,
        _availability = availability,
        _suggestedSlots = suggestedSlots;

  factory _$ScheduleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleResponseImplFromJson(json);

  final List<ScheduleEvent> _events;
  @override
  List<ScheduleEvent> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<ScheduleQuotation> _quotations;
  @override
  List<ScheduleQuotation> get quotations {
    if (_quotations is EqualUnmodifiableListView) return _quotations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quotations);
  }

  final List<AvailabilityDay> _availability;
  @override
  List<AvailabilityDay> get availability {
    if (_availability is EqualUnmodifiableListView) return _availability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availability);
  }

  final List<SuggestedSlot> _suggestedSlots;
  @override
  List<SuggestedSlot> get suggestedSlots {
    if (_suggestedSlots is EqualUnmodifiableListView) return _suggestedSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedSlots);
  }

  @override
  final WorkingHours workingHours;
  @override
  final ScheduleSummary summary;

  @override
  String toString() {
    return 'ScheduleResponse(events: $events, quotations: $quotations, availability: $availability, suggestedSlots: $suggestedSlots, workingHours: $workingHours, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleResponseImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._quotations, _quotations) &&
            const DeepCollectionEquality()
                .equals(other._availability, _availability) &&
            const DeepCollectionEquality()
                .equals(other._suggestedSlots, _suggestedSlots) &&
            (identical(other.workingHours, workingHours) ||
                other.workingHours == workingHours) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_quotations),
      const DeepCollectionEquality().hash(_availability),
      const DeepCollectionEquality().hash(_suggestedSlots),
      workingHours,
      summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleResponseImplCopyWith<_$ScheduleResponseImpl> get copyWith =>
      __$$ScheduleResponseImplCopyWithImpl<_$ScheduleResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleResponseImplToJson(
      this,
    );
  }
}

abstract class _ScheduleResponse implements ScheduleResponse {
  const factory _ScheduleResponse(
      {required final List<ScheduleEvent> events,
      required final List<ScheduleQuotation> quotations,
      required final List<AvailabilityDay> availability,
      required final List<SuggestedSlot> suggestedSlots,
      required final WorkingHours workingHours,
      required final ScheduleSummary summary}) = _$ScheduleResponseImpl;

  factory _ScheduleResponse.fromJson(Map<String, dynamic> json) =
      _$ScheduleResponseImpl.fromJson;

  @override
  List<ScheduleEvent> get events;
  @override
  List<ScheduleQuotation> get quotations;
  @override
  List<AvailabilityDay> get availability;
  @override
  List<SuggestedSlot> get suggestedSlots;
  @override
  WorkingHours get workingHours;
  @override
  ScheduleSummary get summary;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleResponseImplCopyWith<_$ScheduleResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleEvent _$ScheduleEventFromJson(Map<String, dynamic> json) {
  return _ScheduleEvent.fromJson(json);
}

/// @nodoc
mixin _$ScheduleEvent {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String? get customerAvatar => throw _privateConstructorUsedError;
  String? get quotationId => throw _privateConstructorUsedError;
  bool get isBlocking => throw _privateConstructorUsedError;
  bool get canModify => throw _privateConstructorUsedError;
  bool get canCancel => throw _privateConstructorUsedError;
  bool get canReschedule => throw _privateConstructorUsedError;
  List<String>? get conflictsWith => throw _privateConstructorUsedError;
  Map<String, dynamic>? get workEvidence => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, bool>? get reminderSent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleEventCopyWith<ScheduleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
  @useResult
  $Res call(
      {String id,
      String category,
      String type,
      String title,
      String description,
      DateTime startDate,
      DateTime endDate,
      String status,
      String customerId,
      String customerName,
      String? customerAvatar,
      String? quotationId,
      bool isBlocking,
      bool canModify,
      bool canCancel,
      bool canReschedule,
      List<String>? conflictsWith,
      Map<String, dynamic>? workEvidence,
      String? notes,
      Map<String, bool>? reminderSent});
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAvatar = freezed,
    Object? quotationId = freezed,
    Object? isBlocking = null,
    Object? canModify = null,
    Object? canCancel = null,
    Object? canReschedule = null,
    Object? conflictsWith = freezed,
    Object? workEvidence = freezed,
    Object? notes = freezed,
    Object? reminderSent = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerAvatar: freezed == customerAvatar
          ? _value.customerAvatar
          : customerAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocking: null == isBlocking
          ? _value.isBlocking
          : isBlocking // ignore: cast_nullable_to_non_nullable
              as bool,
      canModify: null == canModify
          ? _value.canModify
          : canModify // ignore: cast_nullable_to_non_nullable
              as bool,
      canCancel: null == canCancel
          ? _value.canCancel
          : canCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      canReschedule: null == canReschedule
          ? _value.canReschedule
          : canReschedule // ignore: cast_nullable_to_non_nullable
              as bool,
      conflictsWith: freezed == conflictsWith
          ? _value.conflictsWith
          : conflictsWith // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      workEvidence: freezed == workEvidence
          ? _value.workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderSent: freezed == reminderSent
          ? _value.reminderSent
          : reminderSent // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleEventImplCopyWith<$Res>
    implements $ScheduleEventCopyWith<$Res> {
  factory _$$ScheduleEventImplCopyWith(
          _$ScheduleEventImpl value, $Res Function(_$ScheduleEventImpl) then) =
      __$$ScheduleEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String category,
      String type,
      String title,
      String description,
      DateTime startDate,
      DateTime endDate,
      String status,
      String customerId,
      String customerName,
      String? customerAvatar,
      String? quotationId,
      bool isBlocking,
      bool canModify,
      bool canCancel,
      bool canReschedule,
      List<String>? conflictsWith,
      Map<String, dynamic>? workEvidence,
      String? notes,
      Map<String, bool>? reminderSent});
}

/// @nodoc
class __$$ScheduleEventImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleEventImpl>
    implements _$$ScheduleEventImplCopyWith<$Res> {
  __$$ScheduleEventImplCopyWithImpl(
      _$ScheduleEventImpl _value, $Res Function(_$ScheduleEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAvatar = freezed,
    Object? quotationId = freezed,
    Object? isBlocking = null,
    Object? canModify = null,
    Object? canCancel = null,
    Object? canReschedule = null,
    Object? conflictsWith = freezed,
    Object? workEvidence = freezed,
    Object? notes = freezed,
    Object? reminderSent = freezed,
  }) {
    return _then(_$ScheduleEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerAvatar: freezed == customerAvatar
          ? _value.customerAvatar
          : customerAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocking: null == isBlocking
          ? _value.isBlocking
          : isBlocking // ignore: cast_nullable_to_non_nullable
              as bool,
      canModify: null == canModify
          ? _value.canModify
          : canModify // ignore: cast_nullable_to_non_nullable
              as bool,
      canCancel: null == canCancel
          ? _value.canCancel
          : canCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      canReschedule: null == canReschedule
          ? _value.canReschedule
          : canReschedule // ignore: cast_nullable_to_non_nullable
              as bool,
      conflictsWith: freezed == conflictsWith
          ? _value._conflictsWith
          : conflictsWith // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      workEvidence: freezed == workEvidence
          ? _value._workEvidence
          : workEvidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderSent: freezed == reminderSent
          ? _value._reminderSent
          : reminderSent // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleEventImpl implements _ScheduleEvent {
  const _$ScheduleEventImpl(
      {required this.id,
      required this.category,
      required this.type,
      required this.title,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.status,
      required this.customerId,
      required this.customerName,
      this.customerAvatar,
      this.quotationId,
      required this.isBlocking,
      required this.canModify,
      required this.canCancel,
      required this.canReschedule,
      final List<String>? conflictsWith,
      final Map<String, dynamic>? workEvidence,
      this.notes,
      final Map<String, bool>? reminderSent})
      : _conflictsWith = conflictsWith,
        _workEvidence = workEvidence,
        _reminderSent = reminderSent;

  factory _$ScheduleEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleEventImplFromJson(json);

  @override
  final String id;
  @override
  final String category;
  @override
  final String type;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String status;
  @override
  final String customerId;
  @override
  final String customerName;
  @override
  final String? customerAvatar;
  @override
  final String? quotationId;
  @override
  final bool isBlocking;
  @override
  final bool canModify;
  @override
  final bool canCancel;
  @override
  final bool canReschedule;
  final List<String>? _conflictsWith;
  @override
  List<String>? get conflictsWith {
    final value = _conflictsWith;
    if (value == null) return null;
    if (_conflictsWith is EqualUnmodifiableListView) return _conflictsWith;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _workEvidence;
  @override
  Map<String, dynamic>? get workEvidence {
    final value = _workEvidence;
    if (value == null) return null;
    if (_workEvidence is EqualUnmodifiableMapView) return _workEvidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? notes;
  final Map<String, bool>? _reminderSent;
  @override
  Map<String, bool>? get reminderSent {
    final value = _reminderSent;
    if (value == null) return null;
    if (_reminderSent is EqualUnmodifiableMapView) return _reminderSent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ScheduleEvent(id: $id, category: $category, type: $type, title: $title, description: $description, startDate: $startDate, endDate: $endDate, status: $status, customerId: $customerId, customerName: $customerName, customerAvatar: $customerAvatar, quotationId: $quotationId, isBlocking: $isBlocking, canModify: $canModify, canCancel: $canCancel, canReschedule: $canReschedule, conflictsWith: $conflictsWith, workEvidence: $workEvidence, notes: $notes, reminderSent: $reminderSent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerAvatar, customerAvatar) ||
                other.customerAvatar == customerAvatar) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.isBlocking, isBlocking) ||
                other.isBlocking == isBlocking) &&
            (identical(other.canModify, canModify) ||
                other.canModify == canModify) &&
            (identical(other.canCancel, canCancel) ||
                other.canCancel == canCancel) &&
            (identical(other.canReschedule, canReschedule) ||
                other.canReschedule == canReschedule) &&
            const DeepCollectionEquality()
                .equals(other._conflictsWith, _conflictsWith) &&
            const DeepCollectionEquality()
                .equals(other._workEvidence, _workEvidence) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._reminderSent, _reminderSent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        category,
        type,
        title,
        description,
        startDate,
        endDate,
        status,
        customerId,
        customerName,
        customerAvatar,
        quotationId,
        isBlocking,
        canModify,
        canCancel,
        canReschedule,
        const DeepCollectionEquality().hash(_conflictsWith),
        const DeepCollectionEquality().hash(_workEvidence),
        notes,
        const DeepCollectionEquality().hash(_reminderSent)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventImplCopyWith<_$ScheduleEventImpl> get copyWith =>
      __$$ScheduleEventImplCopyWithImpl<_$ScheduleEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleEventImplToJson(
      this,
    );
  }
}

abstract class _ScheduleEvent implements ScheduleEvent {
  const factory _ScheduleEvent(
      {required final String id,
      required final String category,
      required final String type,
      required final String title,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String status,
      required final String customerId,
      required final String customerName,
      final String? customerAvatar,
      final String? quotationId,
      required final bool isBlocking,
      required final bool canModify,
      required final bool canCancel,
      required final bool canReschedule,
      final List<String>? conflictsWith,
      final Map<String, dynamic>? workEvidence,
      final String? notes,
      final Map<String, bool>? reminderSent}) = _$ScheduleEventImpl;

  factory _ScheduleEvent.fromJson(Map<String, dynamic> json) =
      _$ScheduleEventImpl.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  String get type;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get status;
  @override
  String get customerId;
  @override
  String get customerName;
  @override
  String? get customerAvatar;
  @override
  String? get quotationId;
  @override
  bool get isBlocking;
  @override
  bool get canModify;
  @override
  bool get canCancel;
  @override
  bool get canReschedule;
  @override
  List<String>? get conflictsWith;
  @override
  Map<String, dynamic>? get workEvidence;
  @override
  String? get notes;
  @override
  Map<String, bool>? get reminderSent;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleEventImplCopyWith<_$ScheduleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleQuotation _$ScheduleQuotationFromJson(Map<String, dynamic> json) {
  return _ScheduleQuotation.fromJson(json);
}

/// @nodoc
mixin _$ScheduleQuotation {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get quotationType => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String? get customerAvatar => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  EstimatedCost? get estimatedCost => throw _privateConstructorUsedError;
  DateTime? get proposedDate => throw _privateConstructorUsedError;
  int? get proposedDuration => throw _privateConstructorUsedError;
  Map<String, dynamic>? get referenceImages =>
      throw _privateConstructorUsedError;
  bool get hasConflict => throw _privateConstructorUsedError;
  List<String>? get conflictingEventIds => throw _privateConstructorUsedError;
  bool get actionRequired => throw _privateConstructorUsedError;
  DateTime? get actionDeadline => throw _privateConstructorUsedError;
  List<SchedulerQuotationOffer>? get offers =>
      throw _privateConstructorUsedError;
  bool get canRespond => throw _privateConstructorUsedError;
  bool get canSubmitOffer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleQuotationCopyWith<ScheduleQuotation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleQuotationCopyWith<$Res> {
  factory $ScheduleQuotationCopyWith(
          ScheduleQuotation value, $Res Function(ScheduleQuotation) then) =
      _$ScheduleQuotationCopyWithImpl<$Res, ScheduleQuotation>;
  @useResult
  $Res call(
      {String id,
      String category,
      String type,
      String quotationType,
      String status,
      String customerId,
      String customerName,
      String? customerAvatar,
      String description,
      EstimatedCost? estimatedCost,
      DateTime? proposedDate,
      int? proposedDuration,
      Map<String, dynamic>? referenceImages,
      bool hasConflict,
      List<String>? conflictingEventIds,
      bool actionRequired,
      DateTime? actionDeadline,
      List<SchedulerQuotationOffer>? offers,
      bool canRespond,
      bool canSubmitOffer});

  $EstimatedCostCopyWith<$Res>? get estimatedCost;
}

/// @nodoc
class _$ScheduleQuotationCopyWithImpl<$Res, $Val extends ScheduleQuotation>
    implements $ScheduleQuotationCopyWith<$Res> {
  _$ScheduleQuotationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? type = null,
    Object? quotationType = null,
    Object? status = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAvatar = freezed,
    Object? description = null,
    Object? estimatedCost = freezed,
    Object? proposedDate = freezed,
    Object? proposedDuration = freezed,
    Object? referenceImages = freezed,
    Object? hasConflict = null,
    Object? conflictingEventIds = freezed,
    Object? actionRequired = null,
    Object? actionDeadline = freezed,
    Object? offers = freezed,
    Object? canRespond = null,
    Object? canSubmitOffer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      quotationType: null == quotationType
          ? _value.quotationType
          : quotationType // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerAvatar: freezed == customerAvatar
          ? _value.customerAvatar
          : customerAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as EstimatedCost?,
      proposedDate: freezed == proposedDate
          ? _value.proposedDate
          : proposedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      proposedDuration: freezed == proposedDuration
          ? _value.proposedDuration
          : proposedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      referenceImages: freezed == referenceImages
          ? _value.referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      hasConflict: null == hasConflict
          ? _value.hasConflict
          : hasConflict // ignore: cast_nullable_to_non_nullable
              as bool,
      conflictingEventIds: freezed == conflictingEventIds
          ? _value.conflictingEventIds
          : conflictingEventIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      actionRequired: null == actionRequired
          ? _value.actionRequired
          : actionRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      actionDeadline: freezed == actionDeadline
          ? _value.actionDeadline
          : actionDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<SchedulerQuotationOffer>?,
      canRespond: null == canRespond
          ? _value.canRespond
          : canRespond // ignore: cast_nullable_to_non_nullable
              as bool,
      canSubmitOffer: null == canSubmitOffer
          ? _value.canSubmitOffer
          : canSubmitOffer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EstimatedCostCopyWith<$Res>? get estimatedCost {
    if (_value.estimatedCost == null) {
      return null;
    }

    return $EstimatedCostCopyWith<$Res>(_value.estimatedCost!, (value) {
      return _then(_value.copyWith(estimatedCost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleQuotationImplCopyWith<$Res>
    implements $ScheduleQuotationCopyWith<$Res> {
  factory _$$ScheduleQuotationImplCopyWith(_$ScheduleQuotationImpl value,
          $Res Function(_$ScheduleQuotationImpl) then) =
      __$$ScheduleQuotationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String category,
      String type,
      String quotationType,
      String status,
      String customerId,
      String customerName,
      String? customerAvatar,
      String description,
      EstimatedCost? estimatedCost,
      DateTime? proposedDate,
      int? proposedDuration,
      Map<String, dynamic>? referenceImages,
      bool hasConflict,
      List<String>? conflictingEventIds,
      bool actionRequired,
      DateTime? actionDeadline,
      List<SchedulerQuotationOffer>? offers,
      bool canRespond,
      bool canSubmitOffer});

  @override
  $EstimatedCostCopyWith<$Res>? get estimatedCost;
}

/// @nodoc
class __$$ScheduleQuotationImplCopyWithImpl<$Res>
    extends _$ScheduleQuotationCopyWithImpl<$Res, _$ScheduleQuotationImpl>
    implements _$$ScheduleQuotationImplCopyWith<$Res> {
  __$$ScheduleQuotationImplCopyWithImpl(_$ScheduleQuotationImpl _value,
      $Res Function(_$ScheduleQuotationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? type = null,
    Object? quotationType = null,
    Object? status = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAvatar = freezed,
    Object? description = null,
    Object? estimatedCost = freezed,
    Object? proposedDate = freezed,
    Object? proposedDuration = freezed,
    Object? referenceImages = freezed,
    Object? hasConflict = null,
    Object? conflictingEventIds = freezed,
    Object? actionRequired = null,
    Object? actionDeadline = freezed,
    Object? offers = freezed,
    Object? canRespond = null,
    Object? canSubmitOffer = null,
  }) {
    return _then(_$ScheduleQuotationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      quotationType: null == quotationType
          ? _value.quotationType
          : quotationType // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerAvatar: freezed == customerAvatar
          ? _value.customerAvatar
          : customerAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as EstimatedCost?,
      proposedDate: freezed == proposedDate
          ? _value.proposedDate
          : proposedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      proposedDuration: freezed == proposedDuration
          ? _value.proposedDuration
          : proposedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      referenceImages: freezed == referenceImages
          ? _value._referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      hasConflict: null == hasConflict
          ? _value.hasConflict
          : hasConflict // ignore: cast_nullable_to_non_nullable
              as bool,
      conflictingEventIds: freezed == conflictingEventIds
          ? _value._conflictingEventIds
          : conflictingEventIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      actionRequired: null == actionRequired
          ? _value.actionRequired
          : actionRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      actionDeadline: freezed == actionDeadline
          ? _value.actionDeadline
          : actionDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      offers: freezed == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<SchedulerQuotationOffer>?,
      canRespond: null == canRespond
          ? _value.canRespond
          : canRespond // ignore: cast_nullable_to_non_nullable
              as bool,
      canSubmitOffer: null == canSubmitOffer
          ? _value.canSubmitOffer
          : canSubmitOffer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleQuotationImpl implements _ScheduleQuotation {
  const _$ScheduleQuotationImpl(
      {required this.id,
      required this.category,
      required this.type,
      required this.quotationType,
      required this.status,
      required this.customerId,
      required this.customerName,
      this.customerAvatar,
      required this.description,
      this.estimatedCost,
      this.proposedDate,
      this.proposedDuration,
      final Map<String, dynamic>? referenceImages,
      required this.hasConflict,
      final List<String>? conflictingEventIds,
      required this.actionRequired,
      this.actionDeadline,
      final List<SchedulerQuotationOffer>? offers,
      required this.canRespond,
      required this.canSubmitOffer})
      : _referenceImages = referenceImages,
        _conflictingEventIds = conflictingEventIds,
        _offers = offers;

  factory _$ScheduleQuotationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleQuotationImplFromJson(json);

  @override
  final String id;
  @override
  final String category;
  @override
  final String type;
  @override
  final String quotationType;
  @override
  final String status;
  @override
  final String customerId;
  @override
  final String customerName;
  @override
  final String? customerAvatar;
  @override
  final String description;
  @override
  final EstimatedCost? estimatedCost;
  @override
  final DateTime? proposedDate;
  @override
  final int? proposedDuration;
  final Map<String, dynamic>? _referenceImages;
  @override
  Map<String, dynamic>? get referenceImages {
    final value = _referenceImages;
    if (value == null) return null;
    if (_referenceImages is EqualUnmodifiableMapView) return _referenceImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool hasConflict;
  final List<String>? _conflictingEventIds;
  @override
  List<String>? get conflictingEventIds {
    final value = _conflictingEventIds;
    if (value == null) return null;
    if (_conflictingEventIds is EqualUnmodifiableListView)
      return _conflictingEventIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool actionRequired;
  @override
  final DateTime? actionDeadline;
  final List<SchedulerQuotationOffer>? _offers;
  @override
  List<SchedulerQuotationOffer>? get offers {
    final value = _offers;
    if (value == null) return null;
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool canRespond;
  @override
  final bool canSubmitOffer;

  @override
  String toString() {
    return 'ScheduleQuotation(id: $id, category: $category, type: $type, quotationType: $quotationType, status: $status, customerId: $customerId, customerName: $customerName, customerAvatar: $customerAvatar, description: $description, estimatedCost: $estimatedCost, proposedDate: $proposedDate, proposedDuration: $proposedDuration, referenceImages: $referenceImages, hasConflict: $hasConflict, conflictingEventIds: $conflictingEventIds, actionRequired: $actionRequired, actionDeadline: $actionDeadline, offers: $offers, canRespond: $canRespond, canSubmitOffer: $canSubmitOffer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleQuotationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quotationType, quotationType) ||
                other.quotationType == quotationType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerAvatar, customerAvatar) ||
                other.customerAvatar == customerAvatar) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            (identical(other.proposedDate, proposedDate) ||
                other.proposedDate == proposedDate) &&
            (identical(other.proposedDuration, proposedDuration) ||
                other.proposedDuration == proposedDuration) &&
            const DeepCollectionEquality()
                .equals(other._referenceImages, _referenceImages) &&
            (identical(other.hasConflict, hasConflict) ||
                other.hasConflict == hasConflict) &&
            const DeepCollectionEquality()
                .equals(other._conflictingEventIds, _conflictingEventIds) &&
            (identical(other.actionRequired, actionRequired) ||
                other.actionRequired == actionRequired) &&
            (identical(other.actionDeadline, actionDeadline) ||
                other.actionDeadline == actionDeadline) &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.canRespond, canRespond) ||
                other.canRespond == canRespond) &&
            (identical(other.canSubmitOffer, canSubmitOffer) ||
                other.canSubmitOffer == canSubmitOffer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        category,
        type,
        quotationType,
        status,
        customerId,
        customerName,
        customerAvatar,
        description,
        estimatedCost,
        proposedDate,
        proposedDuration,
        const DeepCollectionEquality().hash(_referenceImages),
        hasConflict,
        const DeepCollectionEquality().hash(_conflictingEventIds),
        actionRequired,
        actionDeadline,
        const DeepCollectionEquality().hash(_offers),
        canRespond,
        canSubmitOffer
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleQuotationImplCopyWith<_$ScheduleQuotationImpl> get copyWith =>
      __$$ScheduleQuotationImplCopyWithImpl<_$ScheduleQuotationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleQuotationImplToJson(
      this,
    );
  }
}

abstract class _ScheduleQuotation implements ScheduleQuotation {
  const factory _ScheduleQuotation(
      {required final String id,
      required final String category,
      required final String type,
      required final String quotationType,
      required final String status,
      required final String customerId,
      required final String customerName,
      final String? customerAvatar,
      required final String description,
      final EstimatedCost? estimatedCost,
      final DateTime? proposedDate,
      final int? proposedDuration,
      final Map<String, dynamic>? referenceImages,
      required final bool hasConflict,
      final List<String>? conflictingEventIds,
      required final bool actionRequired,
      final DateTime? actionDeadline,
      final List<SchedulerQuotationOffer>? offers,
      required final bool canRespond,
      required final bool canSubmitOffer}) = _$ScheduleQuotationImpl;

  factory _ScheduleQuotation.fromJson(Map<String, dynamic> json) =
      _$ScheduleQuotationImpl.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  String get type;
  @override
  String get quotationType;
  @override
  String get status;
  @override
  String get customerId;
  @override
  String get customerName;
  @override
  String? get customerAvatar;
  @override
  String get description;
  @override
  EstimatedCost? get estimatedCost;
  @override
  DateTime? get proposedDate;
  @override
  int? get proposedDuration;
  @override
  Map<String, dynamic>? get referenceImages;
  @override
  bool get hasConflict;
  @override
  List<String>? get conflictingEventIds;
  @override
  bool get actionRequired;
  @override
  DateTime? get actionDeadline;
  @override
  List<SchedulerQuotationOffer>? get offers;
  @override
  bool get canRespond;
  @override
  bool get canSubmitOffer;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleQuotationImplCopyWith<_$ScheduleQuotationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EstimatedCost _$EstimatedCostFromJson(Map<String, dynamic> json) {
  return _EstimatedCost.fromJson(json);
}

/// @nodoc
mixin _$EstimatedCost {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstimatedCostCopyWith<EstimatedCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimatedCostCopyWith<$Res> {
  factory $EstimatedCostCopyWith(
          EstimatedCost value, $Res Function(EstimatedCost) then) =
      _$EstimatedCostCopyWithImpl<$Res, EstimatedCost>;
  @useResult
  $Res call({double amount, String currency});
}

/// @nodoc
class _$EstimatedCostCopyWithImpl<$Res, $Val extends EstimatedCost>
    implements $EstimatedCostCopyWith<$Res> {
  _$EstimatedCostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EstimatedCostImplCopyWith<$Res>
    implements $EstimatedCostCopyWith<$Res> {
  factory _$$EstimatedCostImplCopyWith(
          _$EstimatedCostImpl value, $Res Function(_$EstimatedCostImpl) then) =
      __$$EstimatedCostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String currency});
}

/// @nodoc
class __$$EstimatedCostImplCopyWithImpl<$Res>
    extends _$EstimatedCostCopyWithImpl<$Res, _$EstimatedCostImpl>
    implements _$$EstimatedCostImplCopyWith<$Res> {
  __$$EstimatedCostImplCopyWithImpl(
      _$EstimatedCostImpl _value, $Res Function(_$EstimatedCostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_$EstimatedCostImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EstimatedCostImpl implements _EstimatedCost {
  const _$EstimatedCostImpl({required this.amount, required this.currency});

  factory _$EstimatedCostImpl.fromJson(Map<String, dynamic> json) =>
      _$$EstimatedCostImplFromJson(json);

  @override
  final double amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'EstimatedCost(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstimatedCostImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EstimatedCostImplCopyWith<_$EstimatedCostImpl> get copyWith =>
      __$$EstimatedCostImplCopyWithImpl<_$EstimatedCostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EstimatedCostImplToJson(
      this,
    );
  }
}

abstract class _EstimatedCost implements EstimatedCost {
  const factory _EstimatedCost(
      {required final double amount,
      required final String currency}) = _$EstimatedCostImpl;

  factory _EstimatedCost.fromJson(Map<String, dynamic> json) =
      _$EstimatedCostImpl.fromJson;

  @override
  double get amount;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$EstimatedCostImplCopyWith<_$EstimatedCostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailabilityDay _$AvailabilityDayFromJson(Map<String, dynamic> json) {
  return _AvailabilityDay.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityDay {
  String get date => throw _privateConstructorUsedError;
  List<AvailabilitySlot> get slots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityDayCopyWith<AvailabilityDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityDayCopyWith<$Res> {
  factory $AvailabilityDayCopyWith(
          AvailabilityDay value, $Res Function(AvailabilityDay) then) =
      _$AvailabilityDayCopyWithImpl<$Res, AvailabilityDay>;
  @useResult
  $Res call({String date, List<AvailabilitySlot> slots});
}

/// @nodoc
class _$AvailabilityDayCopyWithImpl<$Res, $Val extends AvailabilityDay>
    implements $AvailabilityDayCopyWith<$Res> {
  _$AvailabilityDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? slots = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      slots: null == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<AvailabilitySlot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityDayImplCopyWith<$Res>
    implements $AvailabilityDayCopyWith<$Res> {
  factory _$$AvailabilityDayImplCopyWith(_$AvailabilityDayImpl value,
          $Res Function(_$AvailabilityDayImpl) then) =
      __$$AvailabilityDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, List<AvailabilitySlot> slots});
}

/// @nodoc
class __$$AvailabilityDayImplCopyWithImpl<$Res>
    extends _$AvailabilityDayCopyWithImpl<$Res, _$AvailabilityDayImpl>
    implements _$$AvailabilityDayImplCopyWith<$Res> {
  __$$AvailabilityDayImplCopyWithImpl(
      _$AvailabilityDayImpl _value, $Res Function(_$AvailabilityDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? slots = null,
  }) {
    return _then(_$AvailabilityDayImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      slots: null == slots
          ? _value._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<AvailabilitySlot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityDayImpl implements _AvailabilityDay {
  const _$AvailabilityDayImpl(
      {required this.date, required final List<AvailabilitySlot> slots})
      : _slots = slots;

  factory _$AvailabilityDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityDayImplFromJson(json);

  @override
  final String date;
  final List<AvailabilitySlot> _slots;
  @override
  List<AvailabilitySlot> get slots {
    if (_slots is EqualUnmodifiableListView) return _slots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slots);
  }

  @override
  String toString() {
    return 'AvailabilityDay(date: $date, slots: $slots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityDayImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._slots, _slots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_slots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityDayImplCopyWith<_$AvailabilityDayImpl> get copyWith =>
      __$$AvailabilityDayImplCopyWithImpl<_$AvailabilityDayImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityDayImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityDay implements AvailabilityDay {
  const factory _AvailabilityDay(
      {required final String date,
      required final List<AvailabilitySlot> slots}) = _$AvailabilityDayImpl;

  factory _AvailabilityDay.fromJson(Map<String, dynamic> json) =
      _$AvailabilityDayImpl.fromJson;

  @override
  String get date;
  @override
  List<AvailabilitySlot> get slots;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityDayImplCopyWith<_$AvailabilityDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailabilitySlot _$AvailabilitySlotFromJson(Map<String, dynamic> json) {
  return _AvailabilitySlot.fromJson(json);
}

/// @nodoc
mixin _$AvailabilitySlot {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _densityFromJson)
  double get density => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilitySlotCopyWith<AvailabilitySlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilitySlotCopyWith<$Res> {
  factory $AvailabilitySlotCopyWith(
          AvailabilitySlot value, $Res Function(AvailabilitySlot) then) =
      _$AvailabilitySlotCopyWithImpl<$Res, AvailabilitySlot>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      @JsonKey(fromJson: _densityFromJson) double density});
}

/// @nodoc
class _$AvailabilitySlotCopyWithImpl<$Res, $Val extends AvailabilitySlot>
    implements $AvailabilitySlotCopyWith<$Res> {
  _$AvailabilitySlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? density = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      density: null == density
          ? _value.density
          : density // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilitySlotImplCopyWith<$Res>
    implements $AvailabilitySlotCopyWith<$Res> {
  factory _$$AvailabilitySlotImplCopyWith(_$AvailabilitySlotImpl value,
          $Res Function(_$AvailabilitySlotImpl) then) =
      __$$AvailabilitySlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      @JsonKey(fromJson: _densityFromJson) double density});
}

/// @nodoc
class __$$AvailabilitySlotImplCopyWithImpl<$Res>
    extends _$AvailabilitySlotCopyWithImpl<$Res, _$AvailabilitySlotImpl>
    implements _$$AvailabilitySlotImplCopyWith<$Res> {
  __$$AvailabilitySlotImplCopyWithImpl(_$AvailabilitySlotImpl _value,
      $Res Function(_$AvailabilitySlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? density = null,
  }) {
    return _then(_$AvailabilitySlotImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      density: null == density
          ? _value.density
          : density // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilitySlotImpl implements _AvailabilitySlot {
  const _$AvailabilitySlotImpl(
      {required this.startTime,
      required this.endTime,
      @JsonKey(fromJson: _densityFromJson) required this.density});

  factory _$AvailabilitySlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilitySlotImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  @JsonKey(fromJson: _densityFromJson)
  final double density;

  @override
  String toString() {
    return 'AvailabilitySlot(startTime: $startTime, endTime: $endTime, density: $density)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilitySlotImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.density, density) || other.density == density));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, density);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilitySlotImplCopyWith<_$AvailabilitySlotImpl> get copyWith =>
      __$$AvailabilitySlotImplCopyWithImpl<_$AvailabilitySlotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilitySlotImplToJson(
      this,
    );
  }
}

abstract class _AvailabilitySlot implements AvailabilitySlot {
  const factory _AvailabilitySlot(
          {required final DateTime startTime,
          required final DateTime endTime,
          @JsonKey(fromJson: _densityFromJson) required final double density}) =
      _$AvailabilitySlotImpl;

  factory _AvailabilitySlot.fromJson(Map<String, dynamic> json) =
      _$AvailabilitySlotImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  @JsonKey(fromJson: _densityFromJson)
  double get density;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilitySlotImplCopyWith<_$AvailabilitySlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SuggestedSlot _$SuggestedSlotFromJson(Map<String, dynamic> json) {
  return _SuggestedSlot.fromJson(json);
}

/// @nodoc
mixin _$SuggestedSlot {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _densityFromJson)
  double get density => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestedSlotCopyWith<SuggestedSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestedSlotCopyWith<$Res> {
  factory $SuggestedSlotCopyWith(
          SuggestedSlot value, $Res Function(SuggestedSlot) then) =
      _$SuggestedSlotCopyWithImpl<$Res, SuggestedSlot>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      @JsonKey(fromJson: _densityFromJson) double density});
}

/// @nodoc
class _$SuggestedSlotCopyWithImpl<$Res, $Val extends SuggestedSlot>
    implements $SuggestedSlotCopyWith<$Res> {
  _$SuggestedSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? density = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      density: null == density
          ? _value.density
          : density // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestedSlotImplCopyWith<$Res>
    implements $SuggestedSlotCopyWith<$Res> {
  factory _$$SuggestedSlotImplCopyWith(
          _$SuggestedSlotImpl value, $Res Function(_$SuggestedSlotImpl) then) =
      __$$SuggestedSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      @JsonKey(fromJson: _densityFromJson) double density});
}

/// @nodoc
class __$$SuggestedSlotImplCopyWithImpl<$Res>
    extends _$SuggestedSlotCopyWithImpl<$Res, _$SuggestedSlotImpl>
    implements _$$SuggestedSlotImplCopyWith<$Res> {
  __$$SuggestedSlotImplCopyWithImpl(
      _$SuggestedSlotImpl _value, $Res Function(_$SuggestedSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? density = null,
  }) {
    return _then(_$SuggestedSlotImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      density: null == density
          ? _value.density
          : density // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuggestedSlotImpl implements _SuggestedSlot {
  const _$SuggestedSlotImpl(
      {required this.startTime,
      required this.endTime,
      @JsonKey(fromJson: _densityFromJson) required this.density});

  factory _$SuggestedSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuggestedSlotImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  @JsonKey(fromJson: _densityFromJson)
  final double density;

  @override
  String toString() {
    return 'SuggestedSlot(startTime: $startTime, endTime: $endTime, density: $density)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestedSlotImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.density, density) || other.density == density));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, density);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestedSlotImplCopyWith<_$SuggestedSlotImpl> get copyWith =>
      __$$SuggestedSlotImplCopyWithImpl<_$SuggestedSlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuggestedSlotImplToJson(
      this,
    );
  }
}

abstract class _SuggestedSlot implements SuggestedSlot {
  const factory _SuggestedSlot(
          {required final DateTime startTime,
          required final DateTime endTime,
          @JsonKey(fromJson: _densityFromJson) required final double density}) =
      _$SuggestedSlotImpl;

  factory _SuggestedSlot.fromJson(Map<String, dynamic> json) =
      _$SuggestedSlotImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  @JsonKey(fromJson: _densityFromJson)
  double get density;
  @override
  @JsonKey(ignore: true)
  _$$SuggestedSlotImplCopyWith<_$SuggestedSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkingHours _$WorkingHoursFromJson(Map<String, dynamic> json) {
  return _WorkingHours.fromJson(json);
}

/// @nodoc
mixin _$WorkingHours {
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;
  List<String> get workingDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingHoursCopyWith<WorkingHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingHoursCopyWith<$Res> {
  factory $WorkingHoursCopyWith(
          WorkingHours value, $Res Function(WorkingHours) then) =
      _$WorkingHoursCopyWithImpl<$Res, WorkingHours>;
  @useResult
  $Res call({String start, String end, List<String> workingDays});
}

/// @nodoc
class _$WorkingHoursCopyWithImpl<$Res, $Val extends WorkingHours>
    implements $WorkingHoursCopyWith<$Res> {
  _$WorkingHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? workingDays = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      workingDays: null == workingDays
          ? _value.workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingHoursImplCopyWith<$Res>
    implements $WorkingHoursCopyWith<$Res> {
  factory _$$WorkingHoursImplCopyWith(
          _$WorkingHoursImpl value, $Res Function(_$WorkingHoursImpl) then) =
      __$$WorkingHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String start, String end, List<String> workingDays});
}

/// @nodoc
class __$$WorkingHoursImplCopyWithImpl<$Res>
    extends _$WorkingHoursCopyWithImpl<$Res, _$WorkingHoursImpl>
    implements _$$WorkingHoursImplCopyWith<$Res> {
  __$$WorkingHoursImplCopyWithImpl(
      _$WorkingHoursImpl _value, $Res Function(_$WorkingHoursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? workingDays = null,
  }) {
    return _then(_$WorkingHoursImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      workingDays: null == workingDays
          ? _value._workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingHoursImpl implements _WorkingHours {
  const _$WorkingHoursImpl(
      {required this.start,
      required this.end,
      required final List<String> workingDays})
      : _workingDays = workingDays;

  factory _$WorkingHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingHoursImplFromJson(json);

  @override
  final String start;
  @override
  final String end;
  final List<String> _workingDays;
  @override
  List<String> get workingDays {
    if (_workingDays is EqualUnmodifiableListView) return _workingDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workingDays);
  }

  @override
  String toString() {
    return 'WorkingHours(start: $start, end: $end, workingDays: $workingDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingHoursImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            const DeepCollectionEquality()
                .equals(other._workingDays, _workingDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end,
      const DeepCollectionEquality().hash(_workingDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingHoursImplCopyWith<_$WorkingHoursImpl> get copyWith =>
      __$$WorkingHoursImplCopyWithImpl<_$WorkingHoursImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingHoursImplToJson(
      this,
    );
  }
}

abstract class _WorkingHours implements WorkingHours {
  const factory _WorkingHours(
      {required final String start,
      required final String end,
      required final List<String> workingDays}) = _$WorkingHoursImpl;

  factory _WorkingHours.fromJson(Map<String, dynamic> json) =
      _$WorkingHoursImpl.fromJson;

  @override
  String get start;
  @override
  String get end;
  @override
  List<String> get workingDays;
  @override
  @JsonKey(ignore: true)
  _$$WorkingHoursImplCopyWith<_$WorkingHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleSummary _$ScheduleSummaryFromJson(Map<String, dynamic> json) {
  return _ScheduleSummary.fromJson(json);
}

/// @nodoc
mixin _$ScheduleSummary {
  int get totalConfirmedEvents => throw _privateConstructorUsedError;
  int get totalTentativeEvents => throw _privateConstructorUsedError;
  int get totalActionableQuotations => throw _privateConstructorUsedError;
  int get totalOpportunities => throw _privateConstructorUsedError;
  NextAvailableSlot? get nextAvailableSlot =>
      throw _privateConstructorUsedError;
  List<UpcomingDeadline> get upcomingDeadlines =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleSummaryCopyWith<ScheduleSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleSummaryCopyWith<$Res> {
  factory $ScheduleSummaryCopyWith(
          ScheduleSummary value, $Res Function(ScheduleSummary) then) =
      _$ScheduleSummaryCopyWithImpl<$Res, ScheduleSummary>;
  @useResult
  $Res call(
      {int totalConfirmedEvents,
      int totalTentativeEvents,
      int totalActionableQuotations,
      int totalOpportunities,
      NextAvailableSlot? nextAvailableSlot,
      List<UpcomingDeadline> upcomingDeadlines});

  $NextAvailableSlotCopyWith<$Res>? get nextAvailableSlot;
}

/// @nodoc
class _$ScheduleSummaryCopyWithImpl<$Res, $Val extends ScheduleSummary>
    implements $ScheduleSummaryCopyWith<$Res> {
  _$ScheduleSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalConfirmedEvents = null,
    Object? totalTentativeEvents = null,
    Object? totalActionableQuotations = null,
    Object? totalOpportunities = null,
    Object? nextAvailableSlot = freezed,
    Object? upcomingDeadlines = null,
  }) {
    return _then(_value.copyWith(
      totalConfirmedEvents: null == totalConfirmedEvents
          ? _value.totalConfirmedEvents
          : totalConfirmedEvents // ignore: cast_nullable_to_non_nullable
              as int,
      totalTentativeEvents: null == totalTentativeEvents
          ? _value.totalTentativeEvents
          : totalTentativeEvents // ignore: cast_nullable_to_non_nullable
              as int,
      totalActionableQuotations: null == totalActionableQuotations
          ? _value.totalActionableQuotations
          : totalActionableQuotations // ignore: cast_nullable_to_non_nullable
              as int,
      totalOpportunities: null == totalOpportunities
          ? _value.totalOpportunities
          : totalOpportunities // ignore: cast_nullable_to_non_nullable
              as int,
      nextAvailableSlot: freezed == nextAvailableSlot
          ? _value.nextAvailableSlot
          : nextAvailableSlot // ignore: cast_nullable_to_non_nullable
              as NextAvailableSlot?,
      upcomingDeadlines: null == upcomingDeadlines
          ? _value.upcomingDeadlines
          : upcomingDeadlines // ignore: cast_nullable_to_non_nullable
              as List<UpcomingDeadline>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NextAvailableSlotCopyWith<$Res>? get nextAvailableSlot {
    if (_value.nextAvailableSlot == null) {
      return null;
    }

    return $NextAvailableSlotCopyWith<$Res>(_value.nextAvailableSlot!, (value) {
      return _then(_value.copyWith(nextAvailableSlot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleSummaryImplCopyWith<$Res>
    implements $ScheduleSummaryCopyWith<$Res> {
  factory _$$ScheduleSummaryImplCopyWith(_$ScheduleSummaryImpl value,
          $Res Function(_$ScheduleSummaryImpl) then) =
      __$$ScheduleSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalConfirmedEvents,
      int totalTentativeEvents,
      int totalActionableQuotations,
      int totalOpportunities,
      NextAvailableSlot? nextAvailableSlot,
      List<UpcomingDeadline> upcomingDeadlines});

  @override
  $NextAvailableSlotCopyWith<$Res>? get nextAvailableSlot;
}

/// @nodoc
class __$$ScheduleSummaryImplCopyWithImpl<$Res>
    extends _$ScheduleSummaryCopyWithImpl<$Res, _$ScheduleSummaryImpl>
    implements _$$ScheduleSummaryImplCopyWith<$Res> {
  __$$ScheduleSummaryImplCopyWithImpl(
      _$ScheduleSummaryImpl _value, $Res Function(_$ScheduleSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalConfirmedEvents = null,
    Object? totalTentativeEvents = null,
    Object? totalActionableQuotations = null,
    Object? totalOpportunities = null,
    Object? nextAvailableSlot = freezed,
    Object? upcomingDeadlines = null,
  }) {
    return _then(_$ScheduleSummaryImpl(
      totalConfirmedEvents: null == totalConfirmedEvents
          ? _value.totalConfirmedEvents
          : totalConfirmedEvents // ignore: cast_nullable_to_non_nullable
              as int,
      totalTentativeEvents: null == totalTentativeEvents
          ? _value.totalTentativeEvents
          : totalTentativeEvents // ignore: cast_nullable_to_non_nullable
              as int,
      totalActionableQuotations: null == totalActionableQuotations
          ? _value.totalActionableQuotations
          : totalActionableQuotations // ignore: cast_nullable_to_non_nullable
              as int,
      totalOpportunities: null == totalOpportunities
          ? _value.totalOpportunities
          : totalOpportunities // ignore: cast_nullable_to_non_nullable
              as int,
      nextAvailableSlot: freezed == nextAvailableSlot
          ? _value.nextAvailableSlot
          : nextAvailableSlot // ignore: cast_nullable_to_non_nullable
              as NextAvailableSlot?,
      upcomingDeadlines: null == upcomingDeadlines
          ? _value._upcomingDeadlines
          : upcomingDeadlines // ignore: cast_nullable_to_non_nullable
              as List<UpcomingDeadline>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleSummaryImpl implements _ScheduleSummary {
  const _$ScheduleSummaryImpl(
      {required this.totalConfirmedEvents,
      required this.totalTentativeEvents,
      required this.totalActionableQuotations,
      required this.totalOpportunities,
      this.nextAvailableSlot,
      required final List<UpcomingDeadline> upcomingDeadlines})
      : _upcomingDeadlines = upcomingDeadlines;

  factory _$ScheduleSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleSummaryImplFromJson(json);

  @override
  final int totalConfirmedEvents;
  @override
  final int totalTentativeEvents;
  @override
  final int totalActionableQuotations;
  @override
  final int totalOpportunities;
  @override
  final NextAvailableSlot? nextAvailableSlot;
  final List<UpcomingDeadline> _upcomingDeadlines;
  @override
  List<UpcomingDeadline> get upcomingDeadlines {
    if (_upcomingDeadlines is EqualUnmodifiableListView)
      return _upcomingDeadlines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingDeadlines);
  }

  @override
  String toString() {
    return 'ScheduleSummary(totalConfirmedEvents: $totalConfirmedEvents, totalTentativeEvents: $totalTentativeEvents, totalActionableQuotations: $totalActionableQuotations, totalOpportunities: $totalOpportunities, nextAvailableSlot: $nextAvailableSlot, upcomingDeadlines: $upcomingDeadlines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleSummaryImpl &&
            (identical(other.totalConfirmedEvents, totalConfirmedEvents) ||
                other.totalConfirmedEvents == totalConfirmedEvents) &&
            (identical(other.totalTentativeEvents, totalTentativeEvents) ||
                other.totalTentativeEvents == totalTentativeEvents) &&
            (identical(other.totalActionableQuotations,
                    totalActionableQuotations) ||
                other.totalActionableQuotations == totalActionableQuotations) &&
            (identical(other.totalOpportunities, totalOpportunities) ||
                other.totalOpportunities == totalOpportunities) &&
            (identical(other.nextAvailableSlot, nextAvailableSlot) ||
                other.nextAvailableSlot == nextAvailableSlot) &&
            const DeepCollectionEquality()
                .equals(other._upcomingDeadlines, _upcomingDeadlines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalConfirmedEvents,
      totalTentativeEvents,
      totalActionableQuotations,
      totalOpportunities,
      nextAvailableSlot,
      const DeepCollectionEquality().hash(_upcomingDeadlines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleSummaryImplCopyWith<_$ScheduleSummaryImpl> get copyWith =>
      __$$ScheduleSummaryImplCopyWithImpl<_$ScheduleSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleSummaryImplToJson(
      this,
    );
  }
}

abstract class _ScheduleSummary implements ScheduleSummary {
  const factory _ScheduleSummary(
          {required final int totalConfirmedEvents,
          required final int totalTentativeEvents,
          required final int totalActionableQuotations,
          required final int totalOpportunities,
          final NextAvailableSlot? nextAvailableSlot,
          required final List<UpcomingDeadline> upcomingDeadlines}) =
      _$ScheduleSummaryImpl;

  factory _ScheduleSummary.fromJson(Map<String, dynamic> json) =
      _$ScheduleSummaryImpl.fromJson;

  @override
  int get totalConfirmedEvents;
  @override
  int get totalTentativeEvents;
  @override
  int get totalActionableQuotations;
  @override
  int get totalOpportunities;
  @override
  NextAvailableSlot? get nextAvailableSlot;
  @override
  List<UpcomingDeadline> get upcomingDeadlines;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleSummaryImplCopyWith<_$ScheduleSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NextAvailableSlot _$NextAvailableSlotFromJson(Map<String, dynamic> json) {
  return _NextAvailableSlot.fromJson(json);
}

/// @nodoc
mixin _$NextAvailableSlot {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _densityFromJsonNullable)
  double? get density => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextAvailableSlotCopyWith<NextAvailableSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextAvailableSlotCopyWith<$Res> {
  factory $NextAvailableSlotCopyWith(
          NextAvailableSlot value, $Res Function(NextAvailableSlot) then) =
      _$NextAvailableSlotCopyWithImpl<$Res, NextAvailableSlot>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      @JsonKey(fromJson: _densityFromJsonNullable) double? density});
}

/// @nodoc
class _$NextAvailableSlotCopyWithImpl<$Res, $Val extends NextAvailableSlot>
    implements $NextAvailableSlotCopyWith<$Res> {
  _$NextAvailableSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? density = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      density: freezed == density
          ? _value.density
          : density // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NextAvailableSlotImplCopyWith<$Res>
    implements $NextAvailableSlotCopyWith<$Res> {
  factory _$$NextAvailableSlotImplCopyWith(_$NextAvailableSlotImpl value,
          $Res Function(_$NextAvailableSlotImpl) then) =
      __$$NextAvailableSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      @JsonKey(fromJson: _densityFromJsonNullable) double? density});
}

/// @nodoc
class __$$NextAvailableSlotImplCopyWithImpl<$Res>
    extends _$NextAvailableSlotCopyWithImpl<$Res, _$NextAvailableSlotImpl>
    implements _$$NextAvailableSlotImplCopyWith<$Res> {
  __$$NextAvailableSlotImplCopyWithImpl(_$NextAvailableSlotImpl _value,
      $Res Function(_$NextAvailableSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? density = freezed,
  }) {
    return _then(_$NextAvailableSlotImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      density: freezed == density
          ? _value.density
          : density // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NextAvailableSlotImpl implements _NextAvailableSlot {
  const _$NextAvailableSlotImpl(
      {required this.startTime,
      required this.endTime,
      @JsonKey(fromJson: _densityFromJsonNullable) this.density});

  factory _$NextAvailableSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextAvailableSlotImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  @JsonKey(fromJson: _densityFromJsonNullable)
  final double? density;

  @override
  String toString() {
    return 'NextAvailableSlot(startTime: $startTime, endTime: $endTime, density: $density)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextAvailableSlotImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.density, density) || other.density == density));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, density);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextAvailableSlotImplCopyWith<_$NextAvailableSlotImpl> get copyWith =>
      __$$NextAvailableSlotImplCopyWithImpl<_$NextAvailableSlotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextAvailableSlotImplToJson(
      this,
    );
  }
}

abstract class _NextAvailableSlot implements NextAvailableSlot {
  const factory _NextAvailableSlot(
          {required final DateTime startTime,
          required final DateTime endTime,
          @JsonKey(fromJson: _densityFromJsonNullable) final double? density}) =
      _$NextAvailableSlotImpl;

  factory _NextAvailableSlot.fromJson(Map<String, dynamic> json) =
      _$NextAvailableSlotImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  @JsonKey(fromJson: _densityFromJsonNullable)
  double? get density;
  @override
  @JsonKey(ignore: true)
  _$$NextAvailableSlotImplCopyWith<_$NextAvailableSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpcomingDeadline _$UpcomingDeadlineFromJson(Map<String, dynamic> json) {
  return _UpcomingDeadline.fromJson(json);
}

/// @nodoc
mixin _$UpcomingDeadline {
  String get quotationId => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingDeadlineCopyWith<UpcomingDeadline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingDeadlineCopyWith<$Res> {
  factory $UpcomingDeadlineCopyWith(
          UpcomingDeadline value, $Res Function(UpcomingDeadline) then) =
      _$UpcomingDeadlineCopyWithImpl<$Res, UpcomingDeadline>;
  @useResult
  $Res call({String quotationId, DateTime deadline, String type});
}

/// @nodoc
class _$UpcomingDeadlineCopyWithImpl<$Res, $Val extends UpcomingDeadline>
    implements $UpcomingDeadlineCopyWith<$Res> {
  _$UpcomingDeadlineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
    Object? deadline = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpcomingDeadlineImplCopyWith<$Res>
    implements $UpcomingDeadlineCopyWith<$Res> {
  factory _$$UpcomingDeadlineImplCopyWith(_$UpcomingDeadlineImpl value,
          $Res Function(_$UpcomingDeadlineImpl) then) =
      __$$UpcomingDeadlineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String quotationId, DateTime deadline, String type});
}

/// @nodoc
class __$$UpcomingDeadlineImplCopyWithImpl<$Res>
    extends _$UpcomingDeadlineCopyWithImpl<$Res, _$UpcomingDeadlineImpl>
    implements _$$UpcomingDeadlineImplCopyWith<$Res> {
  __$$UpcomingDeadlineImplCopyWithImpl(_$UpcomingDeadlineImpl _value,
      $Res Function(_$UpcomingDeadlineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
    Object? deadline = null,
    Object? type = null,
  }) {
    return _then(_$UpcomingDeadlineImpl(
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcomingDeadlineImpl implements _UpcomingDeadline {
  const _$UpcomingDeadlineImpl(
      {required this.quotationId, required this.deadline, required this.type});

  factory _$UpcomingDeadlineImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcomingDeadlineImplFromJson(json);

  @override
  final String quotationId;
  @override
  final DateTime deadline;
  @override
  final String type;

  @override
  String toString() {
    return 'UpcomingDeadline(quotationId: $quotationId, deadline: $deadline, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingDeadlineImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quotationId, deadline, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingDeadlineImplCopyWith<_$UpcomingDeadlineImpl> get copyWith =>
      __$$UpcomingDeadlineImplCopyWithImpl<_$UpcomingDeadlineImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingDeadlineImplToJson(
      this,
    );
  }
}

abstract class _UpcomingDeadline implements UpcomingDeadline {
  const factory _UpcomingDeadline(
      {required final String quotationId,
      required final DateTime deadline,
      required final String type}) = _$UpcomingDeadlineImpl;

  factory _UpcomingDeadline.fromJson(Map<String, dynamic> json) =
      _$UpcomingDeadlineImpl.fromJson;

  @override
  String get quotationId;
  @override
  DateTime get deadline;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$UpcomingDeadlineImplCopyWith<_$UpcomingDeadlineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SchedulerQuotationOffer _$SchedulerQuotationOfferFromJson(
    Map<String, dynamic> json) {
  return _SchedulerQuotationOffer.fromJson(json);
}

/// @nodoc
mixin _$SchedulerQuotationOffer {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get quotationId => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  EstimatedCost? get estimatedCost => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  @Deprecated('Use start instead')
  DateTime? get estimatedDate => throw _privateConstructorUsedError;
  @Deprecated('Use start and end to calculate duration')
  int? get estimatedDuration => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get messages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchedulerQuotationOfferCopyWith<SchedulerQuotationOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulerQuotationOfferCopyWith<$Res> {
  factory $SchedulerQuotationOfferCopyWith(SchedulerQuotationOffer value,
          $Res Function(SchedulerQuotationOffer) then) =
      _$SchedulerQuotationOfferCopyWithImpl<$Res, SchedulerQuotationOffer>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String quotationId,
      String artistId,
      EstimatedCost? estimatedCost,
      DateTime start,
      DateTime end,
      @Deprecated('Use start instead') DateTime? estimatedDate,
      @Deprecated('Use start and end to calculate duration')
      int? estimatedDuration,
      String? message,
      String status,
      List<Map<String, dynamic>>? messages});

  $EstimatedCostCopyWith<$Res>? get estimatedCost;
}

/// @nodoc
class _$SchedulerQuotationOfferCopyWithImpl<$Res,
        $Val extends SchedulerQuotationOffer>
    implements $SchedulerQuotationOfferCopyWith<$Res> {
  _$SchedulerQuotationOfferCopyWithImpl(this._value, this._then);

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
    Object? quotationId = null,
    Object? artistId = null,
    Object? estimatedCost = freezed,
    Object? start = null,
    Object? end = null,
    Object? estimatedDate = freezed,
    Object? estimatedDuration = freezed,
    Object? message = freezed,
    Object? status = null,
    Object? messages = freezed,
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
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as EstimatedCost?,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedDate: freezed == estimatedDate
          ? _value.estimatedDate
          : estimatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EstimatedCostCopyWith<$Res>? get estimatedCost {
    if (_value.estimatedCost == null) {
      return null;
    }

    return $EstimatedCostCopyWith<$Res>(_value.estimatedCost!, (value) {
      return _then(_value.copyWith(estimatedCost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SchedulerQuotationOfferImplCopyWith<$Res>
    implements $SchedulerQuotationOfferCopyWith<$Res> {
  factory _$$SchedulerQuotationOfferImplCopyWith(
          _$SchedulerQuotationOfferImpl value,
          $Res Function(_$SchedulerQuotationOfferImpl) then) =
      __$$SchedulerQuotationOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String quotationId,
      String artistId,
      EstimatedCost? estimatedCost,
      DateTime start,
      DateTime end,
      @Deprecated('Use start instead') DateTime? estimatedDate,
      @Deprecated('Use start and end to calculate duration')
      int? estimatedDuration,
      String? message,
      String status,
      List<Map<String, dynamic>>? messages});

  @override
  $EstimatedCostCopyWith<$Res>? get estimatedCost;
}

/// @nodoc
class __$$SchedulerQuotationOfferImplCopyWithImpl<$Res>
    extends _$SchedulerQuotationOfferCopyWithImpl<$Res,
        _$SchedulerQuotationOfferImpl>
    implements _$$SchedulerQuotationOfferImplCopyWith<$Res> {
  __$$SchedulerQuotationOfferImplCopyWithImpl(
      _$SchedulerQuotationOfferImpl _value,
      $Res Function(_$SchedulerQuotationOfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? quotationId = null,
    Object? artistId = null,
    Object? estimatedCost = freezed,
    Object? start = null,
    Object? end = null,
    Object? estimatedDate = freezed,
    Object? estimatedDuration = freezed,
    Object? message = freezed,
    Object? status = null,
    Object? messages = freezed,
  }) {
    return _then(_$SchedulerQuotationOfferImpl(
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
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as EstimatedCost?,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedDate: freezed == estimatedDate
          ? _value.estimatedDate
          : estimatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchedulerQuotationOfferImpl implements _SchedulerQuotationOffer {
  const _$SchedulerQuotationOfferImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.quotationId,
      required this.artistId,
      this.estimatedCost,
      required this.start,
      required this.end,
      @Deprecated('Use start instead') this.estimatedDate,
      @Deprecated('Use start and end to calculate duration')
      this.estimatedDuration,
      this.message,
      required this.status,
      final List<Map<String, dynamic>>? messages})
      : _messages = messages;

  factory _$SchedulerQuotationOfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchedulerQuotationOfferImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String quotationId;
  @override
  final String artistId;
  @override
  final EstimatedCost? estimatedCost;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  @Deprecated('Use start instead')
  final DateTime? estimatedDate;
  @override
  @Deprecated('Use start and end to calculate duration')
  final int? estimatedDuration;
  @override
  final String? message;
  @override
  final String status;
  final List<Map<String, dynamic>>? _messages;
  @override
  List<Map<String, dynamic>>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SchedulerQuotationOffer(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, quotationId: $quotationId, artistId: $artistId, estimatedCost: $estimatedCost, start: $start, end: $end, estimatedDate: $estimatedDate, estimatedDuration: $estimatedDuration, message: $message, status: $status, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchedulerQuotationOfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.estimatedDate, estimatedDate) ||
                other.estimatedDate == estimatedDate) &&
            (identical(other.estimatedDuration, estimatedDuration) ||
                other.estimatedDuration == estimatedDuration) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      quotationId,
      artistId,
      estimatedCost,
      start,
      end,
      estimatedDate,
      estimatedDuration,
      message,
      status,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchedulerQuotationOfferImplCopyWith<_$SchedulerQuotationOfferImpl>
      get copyWith => __$$SchedulerQuotationOfferImplCopyWithImpl<
          _$SchedulerQuotationOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchedulerQuotationOfferImplToJson(
      this,
    );
  }
}

abstract class _SchedulerQuotationOffer implements SchedulerQuotationOffer {
  const factory _SchedulerQuotationOffer(
          {required final String id,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          required final String quotationId,
          required final String artistId,
          final EstimatedCost? estimatedCost,
          required final DateTime start,
          required final DateTime end,
          @Deprecated('Use start instead') final DateTime? estimatedDate,
          @Deprecated('Use start and end to calculate duration')
          final int? estimatedDuration,
          final String? message,
          required final String status,
          final List<Map<String, dynamic>>? messages}) =
      _$SchedulerQuotationOfferImpl;

  factory _SchedulerQuotationOffer.fromJson(Map<String, dynamic> json) =
      _$SchedulerQuotationOfferImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get quotationId;
  @override
  String get artistId;
  @override
  EstimatedCost? get estimatedCost;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @Deprecated('Use start instead')
  DateTime? get estimatedDate;
  @override
  @Deprecated('Use start and end to calculate duration')
  int? get estimatedDuration;
  @override
  String? get message;
  @override
  String get status;
  @override
  List<Map<String, dynamic>>? get messages;
  @override
  @JsonKey(ignore: true)
  _$$SchedulerQuotationOfferImplCopyWith<_$SchedulerQuotationOfferImpl>
      get copyWith => throw _privateConstructorUsedError;
}
