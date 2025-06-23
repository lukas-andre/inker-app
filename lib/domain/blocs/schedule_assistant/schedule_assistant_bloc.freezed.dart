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
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateRangeChanged value) dateRangeChanged,
    required TResult Function(_TimeSlotSelected value) timeSlotSelected,
    required TResult Function(_EventCreated value) eventCreated,
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
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
  $Res call({String artistId});
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
    Object? artistId = null,
  }) {
    return _then(_$StartedImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.artistId);

  @override
  final String artistId;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.started(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return started(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return started?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(artistId);
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
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
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
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
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ScheduleAssistantEvent {
  const factory _Started(final String artistId) = _$StartedImpl;

  String get artistId;
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
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return dateRangeChanged(start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return dateRangeChanged?.call(start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
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
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
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
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
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
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return timeSlotSelected(start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return timeSlotSelected?.call(start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
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
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
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
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
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
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return eventCreated(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return eventCreated?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
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
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
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
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
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
abstract class _$$ScheduleDataRequestedImplCopyWith<$Res> {
  factory _$$ScheduleDataRequestedImplCopyWith(
          _$ScheduleDataRequestedImpl value,
          $Res Function(_$ScheduleDataRequestedImpl) then) =
      __$$ScheduleDataRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId, DateTime fromDate, DateTime toDate});
}

/// @nodoc
class __$$ScheduleDataRequestedImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res,
        _$ScheduleDataRequestedImpl>
    implements _$$ScheduleDataRequestedImplCopyWith<$Res> {
  __$$ScheduleDataRequestedImplCopyWithImpl(_$ScheduleDataRequestedImpl _value,
      $Res Function(_$ScheduleDataRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$ScheduleDataRequestedImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ScheduleDataRequestedImpl implements _ScheduleDataRequested {
  const _$ScheduleDataRequestedImpl(
      {required this.artistId, required this.fromDate, required this.toDate});

  @override
  final String artistId;
  @override
  final DateTime fromDate;
  @override
  final DateTime toDate;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.scheduleDataRequested(artistId: $artistId, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDataRequestedImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDataRequestedImplCopyWith<_$ScheduleDataRequestedImpl>
      get copyWith => __$$ScheduleDataRequestedImplCopyWithImpl<
          _$ScheduleDataRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return scheduleDataRequested(artistId, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return scheduleDataRequested?.call(artistId, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
    required TResult orElse(),
  }) {
    if (scheduleDataRequested != null) {
      return scheduleDataRequested(artistId, fromDate, toDate);
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
  }) {
    return scheduleDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
  }) {
    return scheduleDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
    required TResult orElse(),
  }) {
    if (scheduleDataRequested != null) {
      return scheduleDataRequested(this);
    }
    return orElse();
  }
}

abstract class _ScheduleDataRequested implements ScheduleAssistantEvent {
  const factory _ScheduleDataRequested(
      {required final String artistId,
      required final DateTime fromDate,
      required final DateTime toDate}) = _$ScheduleDataRequestedImpl;

  String get artistId;
  DateTime get fromDate;
  DateTime get toDate;
  @JsonKey(ignore: true)
  _$$ScheduleDataRequestedImplCopyWith<_$ScheduleDataRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuotationSelectedImplCopyWith<$Res> {
  factory _$$QuotationSelectedImplCopyWith(_$QuotationSelectedImpl value,
          $Res Function(_$QuotationSelectedImpl) then) =
      __$$QuotationSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class __$$QuotationSelectedImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res, _$QuotationSelectedImpl>
    implements _$$QuotationSelectedImplCopyWith<$Res> {
  __$$QuotationSelectedImplCopyWithImpl(_$QuotationSelectedImpl _value,
      $Res Function(_$QuotationSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
  }) {
    return _then(_$QuotationSelectedImpl(
      null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuotationSelectedImpl implements _QuotationSelected {
  const _$QuotationSelectedImpl(this.quotationId);

  @override
  final String quotationId;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.quotationSelected(quotationId: $quotationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationSelectedImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationSelectedImplCopyWith<_$QuotationSelectedImpl> get copyWith =>
      __$$QuotationSelectedImplCopyWithImpl<_$QuotationSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return quotationSelected(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return quotationSelected?.call(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
    required TResult orElse(),
  }) {
    if (quotationSelected != null) {
      return quotationSelected(quotationId);
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
  }) {
    return quotationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
  }) {
    return quotationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
    required TResult orElse(),
  }) {
    if (quotationSelected != null) {
      return quotationSelected(this);
    }
    return orElse();
  }
}

abstract class _QuotationSelected implements ScheduleAssistantEvent {
  const factory _QuotationSelected(final String quotationId) =
      _$QuotationSelectedImpl;

  String get quotationId;
  @JsonKey(ignore: true)
  _$$QuotationSelectedImplCopyWith<_$QuotationSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeSlotSuggestionSelectedImplCopyWith<$Res> {
  factory _$$TimeSlotSuggestionSelectedImplCopyWith(
          _$TimeSlotSuggestionSelectedImpl value,
          $Res Function(_$TimeSlotSuggestionSelectedImpl) then) =
      __$$TimeSlotSuggestionSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SuggestedSlot slot});

  $SuggestedSlotCopyWith<$Res> get slot;
}

/// @nodoc
class __$$TimeSlotSuggestionSelectedImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res,
        _$TimeSlotSuggestionSelectedImpl>
    implements _$$TimeSlotSuggestionSelectedImplCopyWith<$Res> {
  __$$TimeSlotSuggestionSelectedImplCopyWithImpl(
      _$TimeSlotSuggestionSelectedImpl _value,
      $Res Function(_$TimeSlotSuggestionSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
  }) {
    return _then(_$TimeSlotSuggestionSelectedImpl(
      null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as SuggestedSlot,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SuggestedSlotCopyWith<$Res> get slot {
    return $SuggestedSlotCopyWith<$Res>(_value.slot, (value) {
      return _then(_value.copyWith(slot: value));
    });
  }
}

/// @nodoc

class _$TimeSlotSuggestionSelectedImpl implements _TimeSlotSuggestionSelected {
  const _$TimeSlotSuggestionSelectedImpl(this.slot);

  @override
  final SuggestedSlot slot;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.timeSlotSuggestionSelected(slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotSuggestionSelectedImpl &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotSuggestionSelectedImplCopyWith<_$TimeSlotSuggestionSelectedImpl>
      get copyWith => __$$TimeSlotSuggestionSelectedImplCopyWithImpl<
          _$TimeSlotSuggestionSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return timeSlotSuggestionSelected(slot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return timeSlotSuggestionSelected?.call(slot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
    required TResult orElse(),
  }) {
    if (timeSlotSuggestionSelected != null) {
      return timeSlotSuggestionSelected(slot);
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
  }) {
    return timeSlotSuggestionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
  }) {
    return timeSlotSuggestionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
    required TResult orElse(),
  }) {
    if (timeSlotSuggestionSelected != null) {
      return timeSlotSuggestionSelected(this);
    }
    return orElse();
  }
}

abstract class _TimeSlotSuggestionSelected implements ScheduleAssistantEvent {
  const factory _TimeSlotSuggestionSelected(final SuggestedSlot slot) =
      _$TimeSlotSuggestionSelectedImpl;

  SuggestedSlot get slot;
  @JsonKey(ignore: true)
  _$$TimeSlotSuggestionSelectedImplCopyWith<_$TimeSlotSuggestionSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AvailabilityDensityToggledImplCopyWith<$Res> {
  factory _$$AvailabilityDensityToggledImplCopyWith(
          _$AvailabilityDensityToggledImpl value,
          $Res Function(_$AvailabilityDensityToggledImpl) then) =
      __$$AvailabilityDensityToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool show});
}

/// @nodoc
class __$$AvailabilityDensityToggledImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res,
        _$AvailabilityDensityToggledImpl>
    implements _$$AvailabilityDensityToggledImplCopyWith<$Res> {
  __$$AvailabilityDensityToggledImplCopyWithImpl(
      _$AvailabilityDensityToggledImpl _value,
      $Res Function(_$AvailabilityDensityToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
  }) {
    return _then(_$AvailabilityDensityToggledImpl(
      null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AvailabilityDensityToggledImpl implements _AvailabilityDensityToggled {
  const _$AvailabilityDensityToggledImpl(this.show);

  @override
  final bool show;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.availabilityDensityToggled(show: $show)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityDensityToggledImpl &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, show);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityDensityToggledImplCopyWith<_$AvailabilityDensityToggledImpl>
      get copyWith => __$$AvailabilityDensityToggledImplCopyWithImpl<
          _$AvailabilityDensityToggledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return availabilityDensityToggled(show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return availabilityDensityToggled?.call(show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
    required TResult orElse(),
  }) {
    if (availabilityDensityToggled != null) {
      return availabilityDensityToggled(show);
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
  }) {
    return availabilityDensityToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
  }) {
    return availabilityDensityToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
    required TResult orElse(),
  }) {
    if (availabilityDensityToggled != null) {
      return availabilityDensityToggled(this);
    }
    return orElse();
  }
}

abstract class _AvailabilityDensityToggled implements ScheduleAssistantEvent {
  const factory _AvailabilityDensityToggled(final bool show) =
      _$AvailabilityDensityToggledImpl;

  bool get show;
  @JsonKey(ignore: true)
  _$$AvailabilityDensityToggledImplCopyWith<_$AvailabilityDensityToggledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuotationActionTriggeredImplCopyWith<$Res> {
  factory _$$QuotationActionTriggeredImplCopyWith(
          _$QuotationActionTriggeredImpl value,
          $Res Function(_$QuotationActionTriggeredImpl) then) =
      __$$QuotationActionTriggeredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String quotationId, QuotationAction action});
}

/// @nodoc
class __$$QuotationActionTriggeredImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res,
        _$QuotationActionTriggeredImpl>
    implements _$$QuotationActionTriggeredImplCopyWith<$Res> {
  __$$QuotationActionTriggeredImplCopyWithImpl(
      _$QuotationActionTriggeredImpl _value,
      $Res Function(_$QuotationActionTriggeredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
    Object? action = null,
  }) {
    return _then(_$QuotationActionTriggeredImpl(
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as QuotationAction,
    ));
  }
}

/// @nodoc

class _$QuotationActionTriggeredImpl implements _QuotationActionTriggered {
  const _$QuotationActionTriggeredImpl(
      {required this.quotationId, required this.action});

  @override
  final String quotationId;
  @override
  final QuotationAction action;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.quotationActionTriggered(quotationId: $quotationId, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationActionTriggeredImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotationId, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationActionTriggeredImplCopyWith<_$QuotationActionTriggeredImpl>
      get copyWith => __$$QuotationActionTriggeredImplCopyWithImpl<
          _$QuotationActionTriggeredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return quotationActionTriggered(quotationId, action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return quotationActionTriggered?.call(quotationId, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
    required TResult orElse(),
  }) {
    if (quotationActionTriggered != null) {
      return quotationActionTriggered(quotationId, action);
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
  }) {
    return quotationActionTriggered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
  }) {
    return quotationActionTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
    required TResult orElse(),
  }) {
    if (quotationActionTriggered != null) {
      return quotationActionTriggered(this);
    }
    return orElse();
  }
}

abstract class _QuotationActionTriggered implements ScheduleAssistantEvent {
  const factory _QuotationActionTriggered(
      {required final String quotationId,
      required final QuotationAction action}) = _$QuotationActionTriggeredImpl;

  String get quotationId;
  QuotationAction get action;
  @JsonKey(ignore: true)
  _$$QuotationActionTriggeredImplCopyWith<_$QuotationActionTriggeredImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateEventFromQuotationImplCopyWith<$Res> {
  factory _$$CreateEventFromQuotationImplCopyWith(
          _$CreateEventFromQuotationImpl value,
          $Res Function(_$CreateEventFromQuotationImpl) then) =
      __$$CreateEventFromQuotationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String quotationId, DateTime startTime, DateTime endTime});
}

/// @nodoc
class __$$CreateEventFromQuotationImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res,
        _$CreateEventFromQuotationImpl>
    implements _$$CreateEventFromQuotationImplCopyWith<$Res> {
  __$$CreateEventFromQuotationImplCopyWithImpl(
      _$CreateEventFromQuotationImpl _value,
      $Res Function(_$CreateEventFromQuotationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$CreateEventFromQuotationImpl(
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CreateEventFromQuotationImpl implements _CreateEventFromQuotation {
  const _$CreateEventFromQuotationImpl(
      {required this.quotationId,
      required this.startTime,
      required this.endTime});

  @override
  final String quotationId;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.createEventFromQuotation(quotationId: $quotationId, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEventFromQuotationImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotationId, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEventFromQuotationImplCopyWith<_$CreateEventFromQuotationImpl>
      get copyWith => __$$CreateEventFromQuotationImplCopyWithImpl<
          _$CreateEventFromQuotationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return createEventFromQuotation(quotationId, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return createEventFromQuotation?.call(quotationId, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
    required TResult orElse(),
  }) {
    if (createEventFromQuotation != null) {
      return createEventFromQuotation(quotationId, startTime, endTime);
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
  }) {
    return createEventFromQuotation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
  }) {
    return createEventFromQuotation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
    required TResult orElse(),
  }) {
    if (createEventFromQuotation != null) {
      return createEventFromQuotation(this);
    }
    return orElse();
  }
}

abstract class _CreateEventFromQuotation implements ScheduleAssistantEvent {
  const factory _CreateEventFromQuotation(
      {required final String quotationId,
      required final DateTime startTime,
      required final DateTime endTime}) = _$CreateEventFromQuotationImpl;

  String get quotationId;
  DateTime get startTime;
  DateTime get endTime;
  @JsonKey(ignore: true)
  _$$CreateEventFromQuotationImplCopyWith<_$CreateEventFromQuotationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DurationChangedImplCopyWith<$Res> {
  factory _$$DurationChangedImplCopyWith(_$DurationChangedImpl value,
          $Res Function(_$DurationChangedImpl) then) =
      __$$DurationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$DurationChangedImplCopyWithImpl<$Res>
    extends _$ScheduleAssistantEventCopyWithImpl<$Res, _$DurationChangedImpl>
    implements _$$DurationChangedImplCopyWith<$Res> {
  __$$DurationChangedImplCopyWithImpl(
      _$DurationChangedImpl _value, $Res Function(_$DurationChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$DurationChangedImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DurationChangedImpl implements _DurationChanged {
  const _$DurationChangedImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'ScheduleAssistantEvent.durationChanged(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationChangedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationChangedImplCopyWith<_$DurationChangedImpl> get copyWith =>
      __$$DurationChangedImplCopyWithImpl<_$DurationChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) started,
    required TResult Function(DateTime start, DateTime end) dateRangeChanged,
    required TResult Function(DateTime start, DateTime end) timeSlotSelected,
    required TResult Function(EventDetails event) eventCreated,
    required TResult Function(
            String artistId, DateTime fromDate, DateTime toDate)
        scheduleDataRequested,
    required TResult Function(String quotationId) quotationSelected,
    required TResult Function(SuggestedSlot slot) timeSlotSuggestionSelected,
    required TResult Function(bool show) availabilityDensityToggled,
    required TResult Function(String quotationId, QuotationAction action)
        quotationActionTriggered,
    required TResult Function(
            String quotationId, DateTime startTime, DateTime endTime)
        createEventFromQuotation,
    required TResult Function(int duration) durationChanged,
  }) {
    return durationChanged(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? started,
    TResult? Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult? Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult? Function(EventDetails event)? eventCreated,
    TResult? Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult? Function(String quotationId)? quotationSelected,
    TResult? Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult? Function(bool show)? availabilityDensityToggled,
    TResult? Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult? Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult? Function(int duration)? durationChanged,
  }) {
    return durationChanged?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? started,
    TResult Function(DateTime start, DateTime end)? dateRangeChanged,
    TResult Function(DateTime start, DateTime end)? timeSlotSelected,
    TResult Function(EventDetails event)? eventCreated,
    TResult Function(String artistId, DateTime fromDate, DateTime toDate)?
        scheduleDataRequested,
    TResult Function(String quotationId)? quotationSelected,
    TResult Function(SuggestedSlot slot)? timeSlotSuggestionSelected,
    TResult Function(bool show)? availabilityDensityToggled,
    TResult Function(String quotationId, QuotationAction action)?
        quotationActionTriggered,
    TResult Function(String quotationId, DateTime startTime, DateTime endTime)?
        createEventFromQuotation,
    TResult Function(int duration)? durationChanged,
    required TResult orElse(),
  }) {
    if (durationChanged != null) {
      return durationChanged(duration);
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
    required TResult Function(_ScheduleDataRequested value)
        scheduleDataRequested,
    required TResult Function(_QuotationSelected value) quotationSelected,
    required TResult Function(_TimeSlotSuggestionSelected value)
        timeSlotSuggestionSelected,
    required TResult Function(_AvailabilityDensityToggled value)
        availabilityDensityToggled,
    required TResult Function(_QuotationActionTriggered value)
        quotationActionTriggered,
    required TResult Function(_CreateEventFromQuotation value)
        createEventFromQuotation,
    required TResult Function(_DurationChanged value) durationChanged,
  }) {
    return durationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
    TResult? Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult? Function(_EventCreated value)? eventCreated,
    TResult? Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult? Function(_QuotationSelected value)? quotationSelected,
    TResult? Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult? Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult? Function(_QuotationActionTriggered value)?
        quotationActionTriggered,
    TResult? Function(_CreateEventFromQuotation value)?
        createEventFromQuotation,
    TResult? Function(_DurationChanged value)? durationChanged,
  }) {
    return durationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    TResult Function(_TimeSlotSelected value)? timeSlotSelected,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ScheduleDataRequested value)? scheduleDataRequested,
    TResult Function(_QuotationSelected value)? quotationSelected,
    TResult Function(_TimeSlotSuggestionSelected value)?
        timeSlotSuggestionSelected,
    TResult Function(_AvailabilityDensityToggled value)?
        availabilityDensityToggled,
    TResult Function(_QuotationActionTriggered value)? quotationActionTriggered,
    TResult Function(_CreateEventFromQuotation value)? createEventFromQuotation,
    TResult Function(_DurationChanged value)? durationChanged,
    required TResult orElse(),
  }) {
    if (durationChanged != null) {
      return durationChanged(this);
    }
    return orElse();
  }
}

abstract class _DurationChanged implements ScheduleAssistantEvent {
  const factory _DurationChanged(final int duration) = _$DurationChangedImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$DurationChangedImplCopyWith<_$DurationChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleAssistantState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)?
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
    required TResult Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)
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
    TResult? Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)?
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
    TResult Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)?
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
    required TResult Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)
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
    TResult? Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)?
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
    TResult Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)?
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
      {List<ScheduleEvent> events,
      List<ScheduleQuotation> quotations,
      Map<String, List<AvailabilitySlot>> availability,
      List<SuggestedSlot> suggestedSlots,
      WorkingHours workingHours,
      ScheduleSummary summary,
      DateTime rangeStart,
      DateTime rangeEnd,
      ScheduleQuotation? selectedQuotation,
      DateTime? selectedTimeSlot,
      bool showAvailabilityDensity,
      bool isCreatingEvent,
      int selectedDuration});

  $WorkingHoursCopyWith<$Res> get workingHours;
  $ScheduleSummaryCopyWith<$Res> get summary;
  $ScheduleQuotationCopyWith<$Res>? get selectedQuotation;
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
    Object? quotations = null,
    Object? availability = null,
    Object? suggestedSlots = null,
    Object? workingHours = null,
    Object? summary = null,
    Object? rangeStart = null,
    Object? rangeEnd = null,
    Object? selectedQuotation = freezed,
    Object? selectedTimeSlot = freezed,
    Object? showAvailabilityDensity = null,
    Object? isCreatingEvent = null,
    Object? selectedDuration = null,
  }) {
    return _then(_$LoadedImpl(
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
              as Map<String, List<AvailabilitySlot>>,
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
      rangeStart: null == rangeStart
          ? _value.rangeStart
          : rangeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rangeEnd: null == rangeEnd
          ? _value.rangeEnd
          : rangeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedQuotation: freezed == selectedQuotation
          ? _value.selectedQuotation
          : selectedQuotation // ignore: cast_nullable_to_non_nullable
              as ScheduleQuotation?,
      selectedTimeSlot: freezed == selectedTimeSlot
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      showAvailabilityDensity: null == showAvailabilityDensity
          ? _value.showAvailabilityDensity
          : showAvailabilityDensity // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreatingEvent: null == isCreatingEvent
          ? _value.isCreatingEvent
          : isCreatingEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDuration: null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkingHoursCopyWith<$Res> get workingHours {
    return $WorkingHoursCopyWith<$Res>(_value.workingHours, (value) {
      return _then(_value.copyWith(workingHours: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleSummaryCopyWith<$Res> get summary {
    return $ScheduleSummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleQuotationCopyWith<$Res>? get selectedQuotation {
    if (_value.selectedQuotation == null) {
      return null;
    }

    return $ScheduleQuotationCopyWith<$Res>(_value.selectedQuotation!, (value) {
      return _then(_value.copyWith(selectedQuotation: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<ScheduleEvent> events,
      required final List<ScheduleQuotation> quotations,
      required final Map<String, List<AvailabilitySlot>> availability,
      required final List<SuggestedSlot> suggestedSlots,
      required this.workingHours,
      required this.summary,
      required this.rangeStart,
      required this.rangeEnd,
      this.selectedQuotation,
      this.selectedTimeSlot,
      this.showAvailabilityDensity = false,
      this.isCreatingEvent = false,
      this.selectedDuration = 60})
      : _events = events,
        _quotations = quotations,
        _availability = availability,
        _suggestedSlots = suggestedSlots;

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

  final Map<String, List<AvailabilitySlot>> _availability;
  @override
  Map<String, List<AvailabilitySlot>> get availability {
    if (_availability is EqualUnmodifiableMapView) return _availability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_availability);
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
  final DateTime rangeStart;
  @override
  final DateTime rangeEnd;
  @override
  final ScheduleQuotation? selectedQuotation;
  @override
  final DateTime? selectedTimeSlot;
  @override
  @JsonKey()
  final bool showAvailabilityDensity;
  @override
  @JsonKey()
  final bool isCreatingEvent;
  @override
  @JsonKey()
  final int selectedDuration;

  @override
  String toString() {
    return 'ScheduleAssistantState.loaded(events: $events, quotations: $quotations, availability: $availability, suggestedSlots: $suggestedSlots, workingHours: $workingHours, summary: $summary, rangeStart: $rangeStart, rangeEnd: $rangeEnd, selectedQuotation: $selectedQuotation, selectedTimeSlot: $selectedTimeSlot, showAvailabilityDensity: $showAvailabilityDensity, isCreatingEvent: $isCreatingEvent, selectedDuration: $selectedDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._quotations, _quotations) &&
            const DeepCollectionEquality()
                .equals(other._availability, _availability) &&
            const DeepCollectionEquality()
                .equals(other._suggestedSlots, _suggestedSlots) &&
            (identical(other.workingHours, workingHours) ||
                other.workingHours == workingHours) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.rangeStart, rangeStart) ||
                other.rangeStart == rangeStart) &&
            (identical(other.rangeEnd, rangeEnd) ||
                other.rangeEnd == rangeEnd) &&
            (identical(other.selectedQuotation, selectedQuotation) ||
                other.selectedQuotation == selectedQuotation) &&
            (identical(other.selectedTimeSlot, selectedTimeSlot) ||
                other.selectedTimeSlot == selectedTimeSlot) &&
            (identical(
                    other.showAvailabilityDensity, showAvailabilityDensity) ||
                other.showAvailabilityDensity == showAvailabilityDensity) &&
            (identical(other.isCreatingEvent, isCreatingEvent) ||
                other.isCreatingEvent == isCreatingEvent) &&
            (identical(other.selectedDuration, selectedDuration) ||
                other.selectedDuration == selectedDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_quotations),
      const DeepCollectionEquality().hash(_availability),
      const DeepCollectionEquality().hash(_suggestedSlots),
      workingHours,
      summary,
      rangeStart,
      rangeEnd,
      selectedQuotation,
      selectedTimeSlot,
      showAvailabilityDensity,
      isCreatingEvent,
      selectedDuration);

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
    required TResult Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
        events,
        quotations,
        availability,
        suggestedSlots,
        workingHours,
        summary,
        rangeStart,
        rangeEnd,
        selectedQuotation,
        selectedTimeSlot,
        showAvailabilityDensity,
        isCreatingEvent,
        selectedDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        events,
        quotations,
        availability,
        suggestedSlots,
        workingHours,
        summary,
        rangeStart,
        rangeEnd,
        selectedQuotation,
        selectedTimeSlot,
        showAvailabilityDensity,
        isCreatingEvent,
        selectedDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          events,
          quotations,
          availability,
          suggestedSlots,
          workingHours,
          summary,
          rangeStart,
          rangeEnd,
          selectedQuotation,
          selectedTimeSlot,
          showAvailabilityDensity,
          isCreatingEvent,
          selectedDuration);
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
      {required final List<ScheduleEvent> events,
      required final List<ScheduleQuotation> quotations,
      required final Map<String, List<AvailabilitySlot>> availability,
      required final List<SuggestedSlot> suggestedSlots,
      required final WorkingHours workingHours,
      required final ScheduleSummary summary,
      required final DateTime rangeStart,
      required final DateTime rangeEnd,
      final ScheduleQuotation? selectedQuotation,
      final DateTime? selectedTimeSlot,
      final bool showAvailabilityDensity,
      final bool isCreatingEvent,
      final int selectedDuration}) = _$LoadedImpl;

  List<ScheduleEvent> get events;
  List<ScheduleQuotation> get quotations;
  Map<String, List<AvailabilitySlot>> get availability;
  List<SuggestedSlot> get suggestedSlots;
  WorkingHours get workingHours;
  ScheduleSummary get summary;
  DateTime get rangeStart;
  DateTime get rangeEnd;
  ScheduleQuotation? get selectedQuotation;
  DateTime? get selectedTimeSlot;
  bool get showAvailabilityDensity;
  bool get isCreatingEvent;
  int get selectedDuration;
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
    required TResult Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)
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
    TResult? Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)?
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
    TResult Function(
            List<ScheduleEvent> events,
            List<ScheduleQuotation> quotations,
            Map<String, List<AvailabilitySlot>> availability,
            List<SuggestedSlot> suggestedSlots,
            WorkingHours workingHours,
            ScheduleSummary summary,
            DateTime rangeStart,
            DateTime rangeEnd,
            ScheduleQuotation? selectedQuotation,
            DateTime? selectedTimeSlot,
            bool showAvailabilityDensity,
            bool isCreatingEvent,
            int selectedDuration)?
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
