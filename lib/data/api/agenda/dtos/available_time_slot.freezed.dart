// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_time_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailableTimeSlot _$AvailableTimeSlotFromJson(Map<String, dynamic> json) {
  return _AvailableTimeSlot.fromJson(json);
}

/// @nodoc
mixin _$AvailableTimeSlot {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  double? get density => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableTimeSlotCopyWith<AvailableTimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableTimeSlotCopyWith<$Res> {
  factory $AvailableTimeSlotCopyWith(
          AvailableTimeSlot value, $Res Function(AvailableTimeSlot) then) =
      _$AvailableTimeSlotCopyWithImpl<$Res, AvailableTimeSlot>;
  @useResult
  $Res call({DateTime startTime, DateTime endTime, double? density});
}

/// @nodoc
class _$AvailableTimeSlotCopyWithImpl<$Res, $Val extends AvailableTimeSlot>
    implements $AvailableTimeSlotCopyWith<$Res> {
  _$AvailableTimeSlotCopyWithImpl(this._value, this._then);

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
abstract class _$$AvailableTimeSlotImplCopyWith<$Res>
    implements $AvailableTimeSlotCopyWith<$Res> {
  factory _$$AvailableTimeSlotImplCopyWith(_$AvailableTimeSlotImpl value,
          $Res Function(_$AvailableTimeSlotImpl) then) =
      __$$AvailableTimeSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startTime, DateTime endTime, double? density});
}

/// @nodoc
class __$$AvailableTimeSlotImplCopyWithImpl<$Res>
    extends _$AvailableTimeSlotCopyWithImpl<$Res, _$AvailableTimeSlotImpl>
    implements _$$AvailableTimeSlotImplCopyWith<$Res> {
  __$$AvailableTimeSlotImplCopyWithImpl(_$AvailableTimeSlotImpl _value,
      $Res Function(_$AvailableTimeSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? density = freezed,
  }) {
    return _then(_$AvailableTimeSlotImpl(
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
class _$AvailableTimeSlotImpl implements _AvailableTimeSlot {
  const _$AvailableTimeSlotImpl(
      {required this.startTime, required this.endTime, this.density});

  factory _$AvailableTimeSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableTimeSlotImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final double? density;

  @override
  String toString() {
    return 'AvailableTimeSlot(startTime: $startTime, endTime: $endTime, density: $density)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableTimeSlotImpl &&
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
  _$$AvailableTimeSlotImplCopyWith<_$AvailableTimeSlotImpl> get copyWith =>
      __$$AvailableTimeSlotImplCopyWithImpl<_$AvailableTimeSlotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableTimeSlotImplToJson(
      this,
    );
  }
}

abstract class _AvailableTimeSlot implements AvailableTimeSlot {
  const factory _AvailableTimeSlot(
      {required final DateTime startTime,
      required final DateTime endTime,
      final double? density}) = _$AvailableTimeSlotImpl;

  factory _AvailableTimeSlot.fromJson(Map<String, dynamic> json) =
      _$AvailableTimeSlotImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  double? get density;
  @override
  @JsonKey(ignore: true)
  _$$AvailableTimeSlotImplCopyWith<_$AvailableTimeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailabilityCalendar _$AvailabilityCalendarFromJson(Map<String, dynamic> json) {
  return _AvailabilityCalendar.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityCalendar {
  String get date => throw _privateConstructorUsedError;
  List<AvailableTimeSlot> get slots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityCalendarCopyWith<AvailabilityCalendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityCalendarCopyWith<$Res> {
  factory $AvailabilityCalendarCopyWith(AvailabilityCalendar value,
          $Res Function(AvailabilityCalendar) then) =
      _$AvailabilityCalendarCopyWithImpl<$Res, AvailabilityCalendar>;
  @useResult
  $Res call({String date, List<AvailableTimeSlot> slots});
}

/// @nodoc
class _$AvailabilityCalendarCopyWithImpl<$Res,
        $Val extends AvailabilityCalendar>
    implements $AvailabilityCalendarCopyWith<$Res> {
  _$AvailabilityCalendarCopyWithImpl(this._value, this._then);

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
              as List<AvailableTimeSlot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityCalendarImplCopyWith<$Res>
    implements $AvailabilityCalendarCopyWith<$Res> {
  factory _$$AvailabilityCalendarImplCopyWith(_$AvailabilityCalendarImpl value,
          $Res Function(_$AvailabilityCalendarImpl) then) =
      __$$AvailabilityCalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, List<AvailableTimeSlot> slots});
}

/// @nodoc
class __$$AvailabilityCalendarImplCopyWithImpl<$Res>
    extends _$AvailabilityCalendarCopyWithImpl<$Res, _$AvailabilityCalendarImpl>
    implements _$$AvailabilityCalendarImplCopyWith<$Res> {
  __$$AvailabilityCalendarImplCopyWithImpl(_$AvailabilityCalendarImpl _value,
      $Res Function(_$AvailabilityCalendarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? slots = null,
  }) {
    return _then(_$AvailabilityCalendarImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      slots: null == slots
          ? _value._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<AvailableTimeSlot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityCalendarImpl implements _AvailabilityCalendar {
  const _$AvailabilityCalendarImpl(
      {required this.date, required final List<AvailableTimeSlot> slots})
      : _slots = slots;

  factory _$AvailabilityCalendarImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityCalendarImplFromJson(json);

  @override
  final String date;
  final List<AvailableTimeSlot> _slots;
  @override
  List<AvailableTimeSlot> get slots {
    if (_slots is EqualUnmodifiableListView) return _slots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slots);
  }

  @override
  String toString() {
    return 'AvailabilityCalendar(date: $date, slots: $slots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityCalendarImpl &&
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
  _$$AvailabilityCalendarImplCopyWith<_$AvailabilityCalendarImpl>
      get copyWith =>
          __$$AvailabilityCalendarImplCopyWithImpl<_$AvailabilityCalendarImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityCalendarImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityCalendar implements AvailabilityCalendar {
  const factory _AvailabilityCalendar(
          {required final String date,
          required final List<AvailableTimeSlot> slots}) =
      _$AvailabilityCalendarImpl;

  factory _AvailabilityCalendar.fromJson(Map<String, dynamic> json) =
      _$AvailabilityCalendarImpl.fromJson;

  @override
  String get date;
  @override
  List<AvailableTimeSlot> get slots;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityCalendarImplCopyWith<_$AvailabilityCalendarImpl>
      get copyWith => throw _privateConstructorUsedError;
}
