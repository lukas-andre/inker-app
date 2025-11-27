// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agenda_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AgendaSettings {
  String get workingHoursStart => throw _privateConstructorUsedError;
  String get workingHoursEnd => throw _privateConstructorUsedError;
  List<String> get workingDays => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgendaSettingsCopyWith<AgendaSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaSettingsCopyWith<$Res> {
  factory $AgendaSettingsCopyWith(
          AgendaSettings value, $Res Function(AgendaSettings) then) =
      _$AgendaSettingsCopyWithImpl<$Res, AgendaSettings>;
  @useResult
  $Res call(
      {String workingHoursStart,
      String workingHoursEnd,
      List<String> workingDays,
      bool isPublic,
      bool isOpen});
}

/// @nodoc
class _$AgendaSettingsCopyWithImpl<$Res, $Val extends AgendaSettings>
    implements $AgendaSettingsCopyWith<$Res> {
  _$AgendaSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingHoursStart = null,
    Object? workingHoursEnd = null,
    Object? workingDays = null,
    Object? isPublic = null,
    Object? isOpen = null,
  }) {
    return _then(_value.copyWith(
      workingHoursStart: null == workingHoursStart
          ? _value.workingHoursStart
          : workingHoursStart // ignore: cast_nullable_to_non_nullable
              as String,
      workingHoursEnd: null == workingHoursEnd
          ? _value.workingHoursEnd
          : workingHoursEnd // ignore: cast_nullable_to_non_nullable
              as String,
      workingDays: null == workingDays
          ? _value.workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgendaSettingsImplCopyWith<$Res>
    implements $AgendaSettingsCopyWith<$Res> {
  factory _$$AgendaSettingsImplCopyWith(_$AgendaSettingsImpl value,
          $Res Function(_$AgendaSettingsImpl) then) =
      __$$AgendaSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String workingHoursStart,
      String workingHoursEnd,
      List<String> workingDays,
      bool isPublic,
      bool isOpen});
}

/// @nodoc
class __$$AgendaSettingsImplCopyWithImpl<$Res>
    extends _$AgendaSettingsCopyWithImpl<$Res, _$AgendaSettingsImpl>
    implements _$$AgendaSettingsImplCopyWith<$Res> {
  __$$AgendaSettingsImplCopyWithImpl(
      _$AgendaSettingsImpl _value, $Res Function(_$AgendaSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingHoursStart = null,
    Object? workingHoursEnd = null,
    Object? workingDays = null,
    Object? isPublic = null,
    Object? isOpen = null,
  }) {
    return _then(_$AgendaSettingsImpl(
      workingHoursStart: null == workingHoursStart
          ? _value.workingHoursStart
          : workingHoursStart // ignore: cast_nullable_to_non_nullable
              as String,
      workingHoursEnd: null == workingHoursEnd
          ? _value.workingHoursEnd
          : workingHoursEnd // ignore: cast_nullable_to_non_nullable
              as String,
      workingDays: null == workingDays
          ? _value._workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AgendaSettingsImpl implements _AgendaSettings {
  const _$AgendaSettingsImpl(
      {required this.workingHoursStart,
      required this.workingHoursEnd,
      required final List<String> workingDays,
      required this.isPublic,
      required this.isOpen})
      : _workingDays = workingDays;

  @override
  final String workingHoursStart;
  @override
  final String workingHoursEnd;
  final List<String> _workingDays;
  @override
  List<String> get workingDays {
    if (_workingDays is EqualUnmodifiableListView) return _workingDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workingDays);
  }

  @override
  final bool isPublic;
  @override
  final bool isOpen;

  @override
  String toString() {
    return 'AgendaSettings(workingHoursStart: $workingHoursStart, workingHoursEnd: $workingHoursEnd, workingDays: $workingDays, isPublic: $isPublic, isOpen: $isOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaSettingsImpl &&
            (identical(other.workingHoursStart, workingHoursStart) ||
                other.workingHoursStart == workingHoursStart) &&
            (identical(other.workingHoursEnd, workingHoursEnd) ||
                other.workingHoursEnd == workingHoursEnd) &&
            const DeepCollectionEquality()
                .equals(other._workingDays, _workingDays) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      workingHoursStart,
      workingHoursEnd,
      const DeepCollectionEquality().hash(_workingDays),
      isPublic,
      isOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaSettingsImplCopyWith<_$AgendaSettingsImpl> get copyWith =>
      __$$AgendaSettingsImplCopyWithImpl<_$AgendaSettingsImpl>(
          this, _$identity);
}

abstract class _AgendaSettings implements AgendaSettings {
  const factory _AgendaSettings(
      {required final String workingHoursStart,
      required final String workingHoursEnd,
      required final List<String> workingDays,
      required final bool isPublic,
      required final bool isOpen}) = _$AgendaSettingsImpl;

  @override
  String get workingHoursStart;
  @override
  String get workingHoursEnd;
  @override
  List<String> get workingDays;
  @override
  bool get isPublic;
  @override
  bool get isOpen;
  @override
  @JsonKey(ignore: true)
  _$$AgendaSettingsImplCopyWith<_$AgendaSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UnavailableTimeBlock {
  String get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnavailableTimeBlockCopyWith<UnavailableTimeBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnavailableTimeBlockCopyWith<$Res> {
  factory $UnavailableTimeBlockCopyWith(UnavailableTimeBlock value,
          $Res Function(UnavailableTimeBlock) then) =
      _$UnavailableTimeBlockCopyWithImpl<$Res, UnavailableTimeBlock>;
  @useResult
  $Res call({String id, DateTime startDate, DateTime endDate, String? reason});
}

/// @nodoc
class _$UnavailableTimeBlockCopyWithImpl<$Res,
        $Val extends UnavailableTimeBlock>
    implements $UnavailableTimeBlockCopyWith<$Res> {
  _$UnavailableTimeBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnavailableTimeBlockImplCopyWith<$Res>
    implements $UnavailableTimeBlockCopyWith<$Res> {
  factory _$$UnavailableTimeBlockImplCopyWith(_$UnavailableTimeBlockImpl value,
          $Res Function(_$UnavailableTimeBlockImpl) then) =
      __$$UnavailableTimeBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime startDate, DateTime endDate, String? reason});
}

/// @nodoc
class __$$UnavailableTimeBlockImplCopyWithImpl<$Res>
    extends _$UnavailableTimeBlockCopyWithImpl<$Res, _$UnavailableTimeBlockImpl>
    implements _$$UnavailableTimeBlockImplCopyWith<$Res> {
  __$$UnavailableTimeBlockImplCopyWithImpl(_$UnavailableTimeBlockImpl _value,
      $Res Function(_$UnavailableTimeBlockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? reason = freezed,
  }) {
    return _then(_$UnavailableTimeBlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnavailableTimeBlockImpl implements _UnavailableTimeBlock {
  const _$UnavailableTimeBlockImpl(
      {required this.id,
      required this.startDate,
      required this.endDate,
      this.reason});

  @override
  final String id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String? reason;

  @override
  String toString() {
    return 'UnavailableTimeBlock(id: $id, startDate: $startDate, endDate: $endDate, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnavailableTimeBlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, startDate, endDate, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnavailableTimeBlockImplCopyWith<_$UnavailableTimeBlockImpl>
      get copyWith =>
          __$$UnavailableTimeBlockImplCopyWithImpl<_$UnavailableTimeBlockImpl>(
              this, _$identity);
}

abstract class _UnavailableTimeBlock implements UnavailableTimeBlock {
  const factory _UnavailableTimeBlock(
      {required final String id,
      required final DateTime startDate,
      required final DateTime endDate,
      final String? reason}) = _$UnavailableTimeBlockImpl;

  @override
  String get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$UnavailableTimeBlockImplCopyWith<_$UnavailableTimeBlockImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeSlot {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  double? get density => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeSlotCopyWith<TimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotCopyWith<$Res> {
  factory $TimeSlotCopyWith(TimeSlot value, $Res Function(TimeSlot) then) =
      _$TimeSlotCopyWithImpl<$Res, TimeSlot>;
  @useResult
  $Res call({DateTime startTime, DateTime endTime, double? density});
}

/// @nodoc
class _$TimeSlotCopyWithImpl<$Res, $Val extends TimeSlot>
    implements $TimeSlotCopyWith<$Res> {
  _$TimeSlotCopyWithImpl(this._value, this._then);

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
abstract class _$$TimeSlotImplCopyWith<$Res>
    implements $TimeSlotCopyWith<$Res> {
  factory _$$TimeSlotImplCopyWith(
          _$TimeSlotImpl value, $Res Function(_$TimeSlotImpl) then) =
      __$$TimeSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startTime, DateTime endTime, double? density});
}

/// @nodoc
class __$$TimeSlotImplCopyWithImpl<$Res>
    extends _$TimeSlotCopyWithImpl<$Res, _$TimeSlotImpl>
    implements _$$TimeSlotImplCopyWith<$Res> {
  __$$TimeSlotImplCopyWithImpl(
      _$TimeSlotImpl _value, $Res Function(_$TimeSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? density = freezed,
  }) {
    return _then(_$TimeSlotImpl(
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

class _$TimeSlotImpl implements _TimeSlot {
  const _$TimeSlotImpl(
      {required this.startTime, required this.endTime, this.density});

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final double? density;

  @override
  String toString() {
    return 'TimeSlot(startTime: $startTime, endTime: $endTime, density: $density)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.density, density) || other.density == density));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, density);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotImplCopyWith<_$TimeSlotImpl> get copyWith =>
      __$$TimeSlotImplCopyWithImpl<_$TimeSlotImpl>(this, _$identity);
}

abstract class _TimeSlot implements TimeSlot {
  const factory _TimeSlot(
      {required final DateTime startTime,
      required final DateTime endTime,
      final double? density}) = _$TimeSlotImpl;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  double? get density;
  @override
  @JsonKey(ignore: true)
  _$$TimeSlotImplCopyWith<_$TimeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AvailabilityDay {
  String get date => throw _privateConstructorUsedError;
  List<TimeSlot> get slots => throw _privateConstructorUsedError;

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
  $Res call({String date, List<TimeSlot> slots});
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
              as List<TimeSlot>,
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
  $Res call({String date, List<TimeSlot> slots});
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
              as List<TimeSlot>,
    ));
  }
}

/// @nodoc

class _$AvailabilityDayImpl implements _AvailabilityDay {
  const _$AvailabilityDayImpl(
      {required this.date, required final List<TimeSlot> slots})
      : _slots = slots;

  @override
  final String date;
  final List<TimeSlot> _slots;
  @override
  List<TimeSlot> get slots {
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

  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_slots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityDayImplCopyWith<_$AvailabilityDayImpl> get copyWith =>
      __$$AvailabilityDayImplCopyWithImpl<_$AvailabilityDayImpl>(
          this, _$identity);
}

abstract class _AvailabilityDay implements AvailabilityDay {
  const factory _AvailabilityDay(
      {required final String date,
      required final List<TimeSlot> slots}) = _$AvailabilityDayImpl;

  @override
  String get date;
  @override
  List<TimeSlot> get slots;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityDayImplCopyWith<_$AvailabilityDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
