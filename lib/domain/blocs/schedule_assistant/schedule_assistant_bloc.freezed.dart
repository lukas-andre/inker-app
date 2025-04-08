// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_assistant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleAssistantEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agendaId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String agendaId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agendaId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateRangeChanged value) dateRangeChanged,
    required TResult Function(_TimeSlotSelected value) timeSlotSelected,
    required TResult Function(_EventCreated value) eventCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleAssistantEventCopyWith<$Res> {
  factory $ScheduleAssistantEventCopyWith(ScheduleAssistantEvent value,
          $Res Function(ScheduleAssistantEvent) then) =
      _$ScheduleAssistantEventCopyWithImpl<$Res, ScheduleAssistantEvent>;
}

/// @nodoc
class _$ScheduleAssistantEventCopyWithImpl<$Res,
        $Val extends ScheduleAssistantEvent>
    implements $ScheduleAssistantEventCopyWith<$Res> {
  _$ScheduleAssistantEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String agendaId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
  }) {
    return _then(_$StartedImpl(
      null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.agendaId);

  @override
  final String agendaId;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.started(agendaId: $agendaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agendaId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
  }) {
    return started(agendaId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String agendaId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
  }) {
    return started?.call(agendaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agendaId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(agendaId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateRangeChanged value) dateRangeChanged,
    required TResult Function(_TimeSlotSelected value) timeSlotSelected,
    required TResult Function(_EventCreated value) eventCreated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ScheduleAssistantEvent {
  const factory _Started(final String agendaId) = _$StartedImpl;

  String get agendaId;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateRangeChangedImplCopyWith<$Res> {
  factory _$$DateRangeChangedImplCopyWith(_$DateRangeChangedImpl value,
          $Res Function(_$DateRangeChangedImpl) then) =
      __$$DateRangeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$$DateRangeChangedImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res, _$DateRangeChangedImpl>
    implements _$$DateRangeChangedImplCopyWith<$Res> {
  __$$DateRangeChangedImplCopyWithImpl(_$DateRangeChangedImpl _value,
      $Res Function(_$DateRangeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$DateRangeChangedImpl(
      null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateRangeChangedImpl implements _DateRangeChanged {
  const _$DateRangeChangedImpl(this.start, this.end);

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.dateRangeChanged(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateRangeChangedImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateRangeChangedImplCopyWith<_$DateRangeChangedImpl> get copyWith =>
      __$$DateRangeChangedImplCopyWithImpl<_$DateRangeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agendaId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
  }) {
    return dateRangeChanged(start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String agendaId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
  }) {
    return dateRangeChanged?.call(start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agendaId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    required TResult orElse(),
  }) {
    if (dateRangeChanged != null) {
      return dateRangeChanged(start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateRangeChanged value) dateRangeChanged,
    required TResult Function(_TimeSlotSelected value) timeSlotSelected,
    required TResult Function(_EventCreated value) eventCreated,
  }) {
    return dateRangeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
  }) {
    return dateRangeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    required TResult orElse(),
  }) {
    if (dateRangeChanged != null) {
      return dateRangeChanged(this);
    }
    return orElse();
  }
}

abstract class _DateRangeChanged implements ScheduleAssistantEvent {
  const factory _DateRangeChanged(final DateTime start, final DateTime end) =
      _$DateRangeChangedImpl;

  DateTime get start;
  DateTime get end;
  @JsonKey(ignore: true)
  _$$DateRangeChangedImplCopyWith<_$DateRangeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeSlotSelectedImplCopyWith<$Res> {
  factory _$$TimeSlotSelectedImplCopyWith(_$TimeSlotSelectedImpl value,
          $Res Function(_$TimeSlotSelectedImpl) then) =
      __$$TimeSlotSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$$TimeSlotSelectedImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res, _$TimeSlotSelectedImpl>
    implements _$$TimeSlotSelectedImplCopyWith<$Res> {
  __$$TimeSlotSelectedImplCopyWithImpl(_$TimeSlotSelectedImpl _value,
      $Res Function(_$TimeSlotSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$TimeSlotSelectedImpl(
      null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TimeSlotSelectedImpl implements _TimeSlotSelected {
  const _$TimeSlotSelectedImpl(this.start, this.end);

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.timeSlotSelected(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotSelectedImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotSelectedImplCopyWith<_$TimeSlotSelectedImpl> get copyWith =>
      __$$TimeSlotSelectedImplCopyWithImpl<_$TimeSlotSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agendaId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
  }) {
    return timeSlotSelected(start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String agendaId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
  }) {
    return timeSlotSelected?.call(start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agendaId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    required TResult orElse(),
  }) {
    if (timeSlotSelected != null) {
      return timeSlotSelected(start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateRangeChanged value) dateRangeChanged,
    required TResult Function(_TimeSlotSelected value) timeSlotSelected,
    required TResult Function(_EventCreated value) eventCreated,
  }) {
    return timeSlotSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
  }) {
    return timeSlotSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    required TResult orElse(),
  }) {
    if (timeSlotSelected != null) {
      return timeSlotSelected(this);
    }
    return orElse();
  }
}

abstract class _TimeSlotSelected implements ScheduleAssistantEvent {
  const factory _TimeSlotSelected(final DateTime start, final DateTime end) =
      _$TimeSlotSelectedImpl;

  DateTime get start;
  DateTime get end;
  @JsonKey(ignore: true)
  _$$TimeSlotSelectedImplCopyWith<_$TimeSlotSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventCreatedImplCopyWith<$Res> {
  factory _$$EventCreatedImplCopyWith(
          _$EventCreatedImpl value, $Res Function(_$EventCreatedImpl) then) =
      __$$EventCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventDetails event});

  $EventDetailsCopyWith<$Res> get event;
}

/// @nodoc
class __$$EventCreatedImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res, _$EventCreatedImpl>
    implements _$$EventCreatedImplCopyWith<$Res> {
  __$$EventCreatedImplCopyWithImpl(
      _$EventCreatedImpl _value, $Res Function(_$EventCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$EventCreatedImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventDetails,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventDetailsCopyWith<$Res> get event {
    return $EventDetailsCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$EventCreatedImpl implements _EventCreated {
  const _$EventCreatedImpl(this.event);

  @override
  final EventDetails event;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.eventCreated(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventCreatedImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventCreatedImplCopyWith<_$EventCreatedImpl> get copyWith =>
      __$$EventCreatedImplCopyWithImpl<_$EventCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agendaId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
  }) {
    return eventCreated(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String agendaId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
  }) {
    return eventCreated?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agendaId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    required TResult orElse(),
  }) {
    if (eventCreated != null) {
      return eventCreated(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateRangeChanged value) dateRangeChanged,
    required TResult Function(_TimeSlotSelected value) timeSlotSelected,
    required TResult Function(_EventCreated value) eventCreated,
  }) {
    return eventCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
  }) {
    return eventCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    required TResult orElse(),
  }) {
    if (eventCreated != null) {
      return eventCreated(this);
    }
    return orElse();
  }
}

abstract class _EventCreated implements ScheduleAssistantEvent {
  const factory _EventCreated(final EventDetails event) = _$EventCreatedImpl;

  EventDetails get event;
  @JsonKey(ignore: true)
  _$$EventCreatedImplCopyWith<_$EventCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleAssistantState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleAssistantStateCopyWith<$Res> {
  factory $ScheduleAssistantStateCopyWith(ScheduleAssistantState value,
          $Res Function(ScheduleAssistantState) then) =
      _$ScheduleAssistantStateCopyWithImpl<$Res, ScheduleAssistantState>;
}

/// @nodoc
class _$ScheduleAssistantStateCopyWithImpl<$Res,
        $Val extends ScheduleAssistantState>
    implements $ScheduleAssistantStateCopyWith<$Res> {
  _$ScheduleAssistantStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ScheduleAssistantState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScheduleAssistantState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ScheduleAssistantState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ScheduleAssistantState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<EventDetails> events,
      DateTime rangeStart,
      DateTime rangeEnd,
      DateTime? selectedStart,
      DateTime? selectedEnd});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? rangeStart = null,
    Object? rangeEnd = null,
    Object? selectedStart = freezed,
    Object? selectedEnd = freezed,
  }) {
    return _then(_$LoadedImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDetails>,
      rangeStart: null == rangeStart
          ? _value.rangeStart
          : rangeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rangeEnd: null == rangeEnd
          ? _value.rangeEnd
          : rangeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedStart: freezed == selectedStart
          ? _value.selectedStart
          : selectedStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedEnd: freezed == selectedEnd
          ? _value.selectedEnd
          : selectedEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<EventDetails> events,
      required this.rangeStart,
      required this.rangeEnd,
      this.selectedStart,
      this.selectedEnd})
      : _events = events;

  final List<EventDetails> _events;
  @override
  List<EventDetails> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final DateTime rangeStart;
  @override
  final DateTime rangeEnd;
  @override
  final DateTime? selectedStart;
  @override
  final DateTime? selectedEnd;

  @override
  String toString() {
    return 'ScheduleAssistantState.loaded(events: $events, rangeStart: $rangeStart, rangeEnd: $rangeEnd, selectedStart: $selectedStart, selectedEnd: $selectedEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.rangeStart, rangeStart) ||
                other.rangeStart == rangeStart) &&
            (identical(other.rangeEnd, rangeEnd) ||
                other.rangeEnd == rangeEnd) &&
            (identical(other.selectedStart, selectedStart) ||
                other.selectedStart == selectedStart) &&
            (identical(other.selectedEnd, selectedEnd) ||
                other.selectedEnd == selectedEnd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      rangeStart,
      rangeEnd,
      selectedStart,
      selectedEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(events, rangeStart, rangeEnd, selectedStart, selectedEnd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        events, rangeStart, rangeEnd, selectedStart, selectedEnd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(events, rangeStart, rangeEnd, selectedStart, selectedEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ScheduleAssistantState {
  const factory _Loaded(
      {required final List<EventDetails> events,
      required final DateTime rangeStart,
      required final DateTime rangeEnd,
      final DateTime? selectedStart,
      final DateTime? selectedEnd}) = _$LoadedImpl;

  List<EventDetails> get events;
  DateTime get rangeStart;
  DateTime get rangeEnd;
  DateTime? get selectedStart;
  DateTime? get selectedEnd;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ScheduleAssistantState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventDetails> events, DateTime rangeStart,
            DateTime rangeEnd, DateTime? selectedStart, DateTime? selectedEnd)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ScheduleAssistantState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
