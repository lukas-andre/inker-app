// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_agenda_event_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistAgendaEventDetailEvent {
  int get eventId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int eventId) started,
    required TResult Function(int agendaId, int eventId, String notes)
        updateNotes,
    required TResult Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)
        rescheduleEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int eventId)? started,
    TResult? Function(int agendaId, int eventId, String notes)? updateNotes,
    TResult? Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int eventId)? started,
    TResult Function(int agendaId, int eventId, String notes)? updateNotes,
    TResult Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistAgendaEventDetailEventCopyWith<ArtistAgendaEventDetailEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory $ArtistAgendaEventDetailEventCopyWith(
          ArtistAgendaEventDetailEvent value,
          $Res Function(ArtistAgendaEventDetailEvent) then) =
      _$ArtistAgendaEventDetailEventCopyWithImpl<$Res,
          ArtistAgendaEventDetailEvent>;
  @useResult
  $Res call({int eventId});
}

/// @nodoc
class _$ArtistAgendaEventDetailEventCopyWithImpl<$Res,
        $Val extends ArtistAgendaEventDetailEvent>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  _$ArtistAgendaEventDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int eventId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$StartedImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.eventId);

  @override
  final int eventId;

  @override
  String toString() {
    return 'ArtistAgendaEventDetailEvent.started(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int eventId) started,
    required TResult Function(int agendaId, int eventId, String notes)
        updateNotes,
    required TResult Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)
        rescheduleEvent,
  }) {
    return started(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int eventId)? started,
    TResult? Function(int agendaId, int eventId, String notes)? updateNotes,
    TResult? Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
  }) {
    return started?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int eventId)? started,
    TResult Function(int agendaId, int eventId, String notes)? updateNotes,
    TResult Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ArtistAgendaEventDetailEvent {
  const factory _Started(final int eventId) = _$StartedImpl;

  @override
  int get eventId;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNotesImplCopyWith<$Res>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory _$$UpdateNotesImplCopyWith(
          _$UpdateNotesImpl value, $Res Function(_$UpdateNotesImpl) then) =
      __$$UpdateNotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int agendaId, int eventId, String notes});
}

/// @nodoc
class __$$UpdateNotesImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailEventCopyWithImpl<$Res, _$UpdateNotesImpl>
    implements _$$UpdateNotesImplCopyWith<$Res> {
  __$$UpdateNotesImplCopyWithImpl(
      _$UpdateNotesImpl _value, $Res Function(_$UpdateNotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? eventId = null,
    Object? notes = null,
  }) {
    return _then(_$UpdateNotesImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNotesImpl implements _UpdateNotes {
  const _$UpdateNotesImpl(
      {required this.agendaId, required this.eventId, required this.notes});

  @override
  final int agendaId;
  @override
  final int eventId;
  @override
  final String notes;

  @override
  String toString() {
    return 'ArtistAgendaEventDetailEvent.updateNotes(agendaId: $agendaId, eventId: $eventId, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNotesImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId, eventId, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNotesImplCopyWith<_$UpdateNotesImpl> get copyWith =>
      __$$UpdateNotesImplCopyWithImpl<_$UpdateNotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int eventId) started,
    required TResult Function(int agendaId, int eventId, String notes)
        updateNotes,
    required TResult Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)
        rescheduleEvent,
  }) {
    return updateNotes(agendaId, eventId, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int eventId)? started,
    TResult? Function(int agendaId, int eventId, String notes)? updateNotes,
    TResult? Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
  }) {
    return updateNotes?.call(agendaId, eventId, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int eventId)? started,
    TResult Function(int agendaId, int eventId, String notes)? updateNotes,
    TResult Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    required TResult orElse(),
  }) {
    if (updateNotes != null) {
      return updateNotes(agendaId, eventId, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
  }) {
    return updateNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
  }) {
    return updateNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    required TResult orElse(),
  }) {
    if (updateNotes != null) {
      return updateNotes(this);
    }
    return orElse();
  }
}

abstract class _UpdateNotes implements ArtistAgendaEventDetailEvent {
  const factory _UpdateNotes(
      {required final int agendaId,
      required final int eventId,
      required final String notes}) = _$UpdateNotesImpl;

  int get agendaId;
  @override
  int get eventId;
  String get notes;
  @override
  @JsonKey(ignore: true)
  _$$UpdateNotesImplCopyWith<_$UpdateNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RescheduleEventImplCopyWith<$Res>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory _$$RescheduleEventImplCopyWith(_$RescheduleEventImpl value,
          $Res Function(_$RescheduleEventImpl) then) =
      __$$RescheduleEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int agendaId,
      int eventId,
      DateTime newStartDate,
      DateTime newEndDate,
      String? reason});
}

/// @nodoc
class __$$RescheduleEventImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailEventCopyWithImpl<$Res,
        _$RescheduleEventImpl> implements _$$RescheduleEventImplCopyWith<$Res> {
  __$$RescheduleEventImplCopyWithImpl(
      _$RescheduleEventImpl _value, $Res Function(_$RescheduleEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? eventId = null,
    Object? newStartDate = null,
    Object? newEndDate = null,
    Object? reason = freezed,
  }) {
    return _then(_$RescheduleEventImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      newStartDate: null == newStartDate
          ? _value.newStartDate
          : newStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      newEndDate: null == newEndDate
          ? _value.newEndDate
          : newEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RescheduleEventImpl implements _RescheduleEvent {
  const _$RescheduleEventImpl(
      {required this.agendaId,
      required this.eventId,
      required this.newStartDate,
      required this.newEndDate,
      this.reason});

  @override
  final int agendaId;
  @override
  final int eventId;
  @override
  final DateTime newStartDate;
  @override
  final DateTime newEndDate;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ArtistAgendaEventDetailEvent.rescheduleEvent(agendaId: $agendaId, eventId: $eventId, newStartDate: $newStartDate, newEndDate: $newEndDate, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RescheduleEventImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.newStartDate, newStartDate) ||
                other.newStartDate == newStartDate) &&
            (identical(other.newEndDate, newEndDate) ||
                other.newEndDate == newEndDate) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, agendaId, eventId, newStartDate, newEndDate, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RescheduleEventImplCopyWith<_$RescheduleEventImpl> get copyWith =>
      __$$RescheduleEventImplCopyWithImpl<_$RescheduleEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int eventId) started,
    required TResult Function(int agendaId, int eventId, String notes)
        updateNotes,
    required TResult Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)
        rescheduleEvent,
  }) {
    return rescheduleEvent(agendaId, eventId, newStartDate, newEndDate, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int eventId)? started,
    TResult? Function(int agendaId, int eventId, String notes)? updateNotes,
    TResult? Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
  }) {
    return rescheduleEvent?.call(
        agendaId, eventId, newStartDate, newEndDate, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int eventId)? started,
    TResult Function(int agendaId, int eventId, String notes)? updateNotes,
    TResult Function(int agendaId, int eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    required TResult orElse(),
  }) {
    if (rescheduleEvent != null) {
      return rescheduleEvent(
          agendaId, eventId, newStartDate, newEndDate, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
  }) {
    return rescheduleEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
  }) {
    return rescheduleEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    required TResult orElse(),
  }) {
    if (rescheduleEvent != null) {
      return rescheduleEvent(this);
    }
    return orElse();
  }
}

abstract class _RescheduleEvent implements ArtistAgendaEventDetailEvent {
  const factory _RescheduleEvent(
      {required final int agendaId,
      required final int eventId,
      required final DateTime newStartDate,
      required final DateTime newEndDate,
      final String? reason}) = _$RescheduleEventImpl;

  int get agendaId;
  @override
  int get eventId;
  DateTime get newStartDate;
  DateTime get newEndDate;
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$RescheduleEventImplCopyWith<_$RescheduleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistAgendaEventDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AgendaEventDetailResponse eventDetail) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AgendaEventDetailResponse eventDetail)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AgendaEventDetailResponse eventDetail)? loaded,
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
abstract class $ArtistAgendaEventDetailStateCopyWith<$Res> {
  factory $ArtistAgendaEventDetailStateCopyWith(
          ArtistAgendaEventDetailState value,
          $Res Function(ArtistAgendaEventDetailState) then) =
      _$ArtistAgendaEventDetailStateCopyWithImpl<$Res,
          ArtistAgendaEventDetailState>;
}

/// @nodoc
class _$ArtistAgendaEventDetailStateCopyWithImpl<$Res,
        $Val extends ArtistAgendaEventDetailState>
    implements $ArtistAgendaEventDetailStateCopyWith<$Res> {
  _$ArtistAgendaEventDetailStateCopyWithImpl(this._value, this._then);

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
    extends _$ArtistAgendaEventDetailStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ArtistAgendaEventDetailState.initial()';
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
    required TResult Function(AgendaEventDetailResponse eventDetail) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AgendaEventDetailResponse eventDetail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AgendaEventDetailResponse eventDetail)? loaded,
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

abstract class _Initial implements ArtistAgendaEventDetailState {
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
    extends _$ArtistAgendaEventDetailStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ArtistAgendaEventDetailState.loading()';
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
    required TResult Function(AgendaEventDetailResponse eventDetail) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AgendaEventDetailResponse eventDetail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AgendaEventDetailResponse eventDetail)? loaded,
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

abstract class _Loading implements ArtistAgendaEventDetailState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AgendaEventDetailResponse eventDetail});

  $AgendaEventDetailResponseCopyWith<$Res> get eventDetail;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventDetail = null,
  }) {
    return _then(_$LoadedImpl(
      null == eventDetail
          ? _value.eventDetail
          : eventDetail // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetailResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaEventDetailResponseCopyWith<$Res> get eventDetail {
    return $AgendaEventDetailResponseCopyWith<$Res>(_value.eventDetail,
        (value) {
      return _then(_value.copyWith(eventDetail: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.eventDetail);

  @override
  final AgendaEventDetailResponse eventDetail;

  @override
  String toString() {
    return 'ArtistAgendaEventDetailState.loaded(eventDetail: $eventDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.eventDetail, eventDetail) ||
                other.eventDetail == eventDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventDetail);

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
    required TResult Function(AgendaEventDetailResponse eventDetail) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(eventDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AgendaEventDetailResponse eventDetail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(eventDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AgendaEventDetailResponse eventDetail)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(eventDetail);
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

abstract class _Loaded implements ArtistAgendaEventDetailState {
  const factory _Loaded(final AgendaEventDetailResponse eventDetail) =
      _$LoadedImpl;

  AgendaEventDetailResponse get eventDetail;
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
    extends _$ArtistAgendaEventDetailStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ArtistAgendaEventDetailState.error(message: $message)';
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
    required TResult Function(AgendaEventDetailResponse eventDetail) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AgendaEventDetailResponse eventDetail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AgendaEventDetailResponse eventDetail)? loaded,
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

abstract class _Error implements ArtistAgendaEventDetailState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
