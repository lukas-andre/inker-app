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
  String get eventId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
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
  $Res call({String eventId});
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
              as String,
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
  $Res call({String eventId});
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
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.eventId);

  @override
  final String eventId;

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
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) {
    return started(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) {
    return started?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
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
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ArtistAgendaEventDetailEvent {
  const factory _Started(final String eventId) = _$StartedImpl;

  @override
  String get eventId;
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
  $Res call({String agendaId, String eventId, String notes});
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
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
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
  final String agendaId;
  @override
  final String eventId;
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
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) {
    return updateNotes(agendaId, eventId, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) {
    return updateNotes?.call(agendaId, eventId, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
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
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) {
    return updateNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) {
    return updateNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
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
      {required final String agendaId,
      required final String eventId,
      required final String notes}) = _$UpdateNotesImpl;

  String get agendaId;
  @override
  String get eventId;
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
      {String agendaId,
      String eventId,
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
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
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
  final String agendaId;
  @override
  final String eventId;
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
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) {
    return rescheduleEvent(agendaId, eventId, newStartDate, newEndDate, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) {
    return rescheduleEvent?.call(
        agendaId, eventId, newStartDate, newEndDate, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
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
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) {
    return rescheduleEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) {
    return rescheduleEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
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
      {required final String agendaId,
      required final String eventId,
      required final DateTime newStartDate,
      required final DateTime newEndDate,
      final String? reason}) = _$RescheduleEventImpl;

  String get agendaId;
  @override
  String get eventId;
  DateTime get newStartDate;
  DateTime get newEndDate;
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$RescheduleEventImplCopyWith<_$RescheduleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelEventImplCopyWith<$Res>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory _$$CancelEventImplCopyWith(
          _$CancelEventImpl value, $Res Function(_$CancelEventImpl) then) =
      __$$CancelEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String agendaId, String eventId, String reason});
}

/// @nodoc
class __$$CancelEventImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailEventCopyWithImpl<$Res, _$CancelEventImpl>
    implements _$$CancelEventImplCopyWith<$Res> {
  __$$CancelEventImplCopyWithImpl(
      _$CancelEventImpl _value, $Res Function(_$CancelEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? eventId = null,
    Object? reason = null,
  }) {
    return _then(_$CancelEventImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelEventImpl implements _CancelEvent {
  const _$CancelEventImpl(
      {required this.agendaId, required this.eventId, required this.reason});

  @override
  final String agendaId;
  @override
  final String eventId;
  @override
  final String reason;

  @override
  String toString() {
    return 'ArtistAgendaEventDetailEvent.cancelEvent(agendaId: $agendaId, eventId: $eventId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelEventImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId, eventId, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelEventImplCopyWith<_$CancelEventImpl> get copyWith =>
      __$$CancelEventImplCopyWithImpl<_$CancelEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) {
    return cancelEvent(agendaId, eventId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) {
    return cancelEvent?.call(agendaId, eventId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
    required TResult orElse(),
  }) {
    if (cancelEvent != null) {
      return cancelEvent(agendaId, eventId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) {
    return cancelEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) {
    return cancelEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
    required TResult orElse(),
  }) {
    if (cancelEvent != null) {
      return cancelEvent(this);
    }
    return orElse();
  }
}

abstract class _CancelEvent implements ArtistAgendaEventDetailEvent {
  const factory _CancelEvent(
      {required final String agendaId,
      required final String eventId,
      required final String reason}) = _$CancelEventImpl;

  String get agendaId;
  @override
  String get eventId;
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$CancelEventImplCopyWith<_$CancelEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmEventImplCopyWith<$Res>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory _$$ConfirmEventImplCopyWith(
          _$ConfirmEventImpl value, $Res Function(_$ConfirmEventImpl) then) =
      __$$ConfirmEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String agendaId, String eventId});
}

/// @nodoc
class __$$ConfirmEventImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailEventCopyWithImpl<$Res, _$ConfirmEventImpl>
    implements _$$ConfirmEventImplCopyWith<$Res> {
  __$$ConfirmEventImplCopyWithImpl(
      _$ConfirmEventImpl _value, $Res Function(_$ConfirmEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? eventId = null,
  }) {
    return _then(_$ConfirmEventImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmEventImpl implements _ConfirmEvent {
  const _$ConfirmEventImpl({required this.agendaId, required this.eventId});

  @override
  final String agendaId;
  @override
  final String eventId;

  @override
  String toString() {
    return 'ArtistAgendaEventDetailEvent.confirmEvent(agendaId: $agendaId, eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEventImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEventImplCopyWith<_$ConfirmEventImpl> get copyWith =>
      __$$ConfirmEventImplCopyWithImpl<_$ConfirmEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) {
    return confirmEvent(agendaId, eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) {
    return confirmEvent?.call(agendaId, eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
    required TResult orElse(),
  }) {
    if (confirmEvent != null) {
      return confirmEvent(agendaId, eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) {
    return confirmEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) {
    return confirmEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
    required TResult orElse(),
  }) {
    if (confirmEvent != null) {
      return confirmEvent(this);
    }
    return orElse();
  }
}

abstract class _ConfirmEvent implements ArtistAgendaEventDetailEvent {
  const factory _ConfirmEvent(
      {required final String agendaId,
      required final String eventId}) = _$ConfirmEventImpl;

  String get agendaId;
  @override
  String get eventId;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmEventImplCopyWith<_$ConfirmEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectEventImplCopyWith<$Res>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory _$$RejectEventImplCopyWith(
          _$RejectEventImpl value, $Res Function(_$RejectEventImpl) then) =
      __$$RejectEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String agendaId, String eventId, String? reason});
}

/// @nodoc
class __$$RejectEventImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailEventCopyWithImpl<$Res, _$RejectEventImpl>
    implements _$$RejectEventImplCopyWith<$Res> {
  __$$RejectEventImplCopyWithImpl(
      _$RejectEventImpl _value, $Res Function(_$RejectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? eventId = null,
    Object? reason = freezed,
  }) {
    return _then(_$RejectEventImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RejectEventImpl implements _RejectEvent {
  const _$RejectEventImpl(
      {required this.agendaId, required this.eventId, this.reason});

  @override
  final String agendaId;
  @override
  final String eventId;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ArtistAgendaEventDetailEvent.rejectEvent(agendaId: $agendaId, eventId: $eventId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectEventImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId, eventId, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectEventImplCopyWith<_$RejectEventImpl> get copyWith =>
      __$$RejectEventImplCopyWithImpl<_$RejectEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) {
    return rejectEvent(agendaId, eventId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) {
    return rejectEvent?.call(agendaId, eventId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
    required TResult orElse(),
  }) {
    if (rejectEvent != null) {
      return rejectEvent(agendaId, eventId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) {
    return rejectEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) {
    return rejectEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
    required TResult orElse(),
  }) {
    if (rejectEvent != null) {
      return rejectEvent(this);
    }
    return orElse();
  }
}

abstract class _RejectEvent implements ArtistAgendaEventDetailEvent {
  const factory _RejectEvent(
      {required final String agendaId,
      required final String eventId,
      final String? reason}) = _$RejectEventImpl;

  String get agendaId;
  @override
  String get eventId;
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$RejectEventImplCopyWith<_$RejectEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkEventAsDoneImplCopyWith<$Res>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory _$$MarkEventAsDoneImplCopyWith(_$MarkEventAsDoneImpl value,
          $Res Function(_$MarkEventAsDoneImpl) then) =
      __$$MarkEventAsDoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String agendaId, String eventId, List<String>? workEvidenceFiles});
}

/// @nodoc
class __$$MarkEventAsDoneImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailEventCopyWithImpl<$Res,
        _$MarkEventAsDoneImpl> implements _$$MarkEventAsDoneImplCopyWith<$Res> {
  __$$MarkEventAsDoneImplCopyWithImpl(
      _$MarkEventAsDoneImpl _value, $Res Function(_$MarkEventAsDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? eventId = null,
    Object? workEvidenceFiles = freezed,
  }) {
    return _then(_$MarkEventAsDoneImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      workEvidenceFiles: freezed == workEvidenceFiles
          ? _value._workEvidenceFiles
          : workEvidenceFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$MarkEventAsDoneImpl implements _MarkEventAsDone {
  const _$MarkEventAsDoneImpl(
      {required this.agendaId,
      required this.eventId,
      final List<String>? workEvidenceFiles})
      : _workEvidenceFiles = workEvidenceFiles;

  @override
  final String agendaId;
  @override
  final String eventId;
  final List<String>? _workEvidenceFiles;
  @override
  List<String>? get workEvidenceFiles {
    final value = _workEvidenceFiles;
    if (value == null) return null;
    if (_workEvidenceFiles is EqualUnmodifiableListView)
      return _workEvidenceFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArtistAgendaEventDetailEvent.markEventAsDone(agendaId: $agendaId, eventId: $eventId, workEvidenceFiles: $workEvidenceFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkEventAsDoneImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality()
                .equals(other._workEvidenceFiles, _workEvidenceFiles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId, eventId,
      const DeepCollectionEquality().hash(_workEvidenceFiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkEventAsDoneImplCopyWith<_$MarkEventAsDoneImpl> get copyWith =>
      __$$MarkEventAsDoneImplCopyWithImpl<_$MarkEventAsDoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) {
    return markEventAsDone(agendaId, eventId, workEvidenceFiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) {
    return markEventAsDone?.call(agendaId, eventId, workEvidenceFiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
    required TResult orElse(),
  }) {
    if (markEventAsDone != null) {
      return markEventAsDone(agendaId, eventId, workEvidenceFiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) {
    return markEventAsDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) {
    return markEventAsDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
    required TResult orElse(),
  }) {
    if (markEventAsDone != null) {
      return markEventAsDone(this);
    }
    return orElse();
  }
}

abstract class _MarkEventAsDone implements ArtistAgendaEventDetailEvent {
  const factory _MarkEventAsDone(
      {required final String agendaId,
      required final String eventId,
      final List<String>? workEvidenceFiles}) = _$MarkEventAsDoneImpl;

  String get agendaId;
  @override
  String get eventId;
  List<String>? get workEvidenceFiles;
  @override
  @JsonKey(ignore: true)
  _$$MarkEventAsDoneImplCopyWith<_$MarkEventAsDoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddWorkEvidenceImplCopyWith<$Res>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory _$$AddWorkEvidenceImplCopyWith(_$AddWorkEvidenceImpl value,
          $Res Function(_$AddWorkEvidenceImpl) then) =
      __$$AddWorkEvidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String agendaId, String eventId, List<String> imageFiles});
}

/// @nodoc
class __$$AddWorkEvidenceImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailEventCopyWithImpl<$Res,
        _$AddWorkEvidenceImpl> implements _$$AddWorkEvidenceImplCopyWith<$Res> {
  __$$AddWorkEvidenceImplCopyWithImpl(
      _$AddWorkEvidenceImpl _value, $Res Function(_$AddWorkEvidenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? eventId = null,
    Object? imageFiles = null,
  }) {
    return _then(_$AddWorkEvidenceImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      imageFiles: null == imageFiles
          ? _value._imageFiles
          : imageFiles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AddWorkEvidenceImpl implements _AddWorkEvidence {
  const _$AddWorkEvidenceImpl(
      {required this.agendaId,
      required this.eventId,
      required final List<String> imageFiles})
      : _imageFiles = imageFiles;

  @override
  final String agendaId;
  @override
  final String eventId;
  final List<String> _imageFiles;
  @override
  List<String> get imageFiles {
    if (_imageFiles is EqualUnmodifiableListView) return _imageFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageFiles);
  }

  @override
  String toString() {
    return 'ArtistAgendaEventDetailEvent.addWorkEvidence(agendaId: $agendaId, eventId: $eventId, imageFiles: $imageFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWorkEvidenceImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality()
                .equals(other._imageFiles, _imageFiles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId, eventId,
      const DeepCollectionEquality().hash(_imageFiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWorkEvidenceImplCopyWith<_$AddWorkEvidenceImpl> get copyWith =>
      __$$AddWorkEvidenceImplCopyWithImpl<_$AddWorkEvidenceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) {
    return addWorkEvidence(agendaId, eventId, imageFiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) {
    return addWorkEvidence?.call(agendaId, eventId, imageFiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
    required TResult orElse(),
  }) {
    if (addWorkEvidence != null) {
      return addWorkEvidence(agendaId, eventId, imageFiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) {
    return addWorkEvidence(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) {
    return addWorkEvidence?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
    required TResult orElse(),
  }) {
    if (addWorkEvidence != null) {
      return addWorkEvidence(this);
    }
    return orElse();
  }
}

abstract class _AddWorkEvidence implements ArtistAgendaEventDetailEvent {
  const factory _AddWorkEvidence(
      {required final String agendaId,
      required final String eventId,
      required final List<String> imageFiles}) = _$AddWorkEvidenceImpl;

  String get agendaId;
  @override
  String get eventId;
  List<String> get imageFiles;
  @override
  @JsonKey(ignore: true)
  _$$AddWorkEvidenceImplCopyWith<_$AddWorkEvidenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewEventImplCopyWith<$Res>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory _$$ReviewEventImplCopyWith(
          _$ReviewEventImpl value, $Res Function(_$ReviewEventImpl) then) =
      __$$ReviewEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String agendaId,
      String eventId,
      int rating,
      String comment,
      bool isAnonymous});
}

/// @nodoc
class __$$ReviewEventImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailEventCopyWithImpl<$Res, _$ReviewEventImpl>
    implements _$$ReviewEventImplCopyWith<$Res> {
  __$$ReviewEventImplCopyWithImpl(
      _$ReviewEventImpl _value, $Res Function(_$ReviewEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? eventId = null,
    Object? rating = null,
    Object? comment = null,
    Object? isAnonymous = null,
  }) {
    return _then(_$ReviewEventImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReviewEventImpl implements _ReviewEvent {
  const _$ReviewEventImpl(
      {required this.agendaId,
      required this.eventId,
      required this.rating,
      required this.comment,
      required this.isAnonymous});

  @override
  final String agendaId;
  @override
  final String eventId;
  @override
  final int rating;
  @override
  final String comment;
  @override
  final bool isAnonymous;

  @override
  String toString() {
    return 'ArtistAgendaEventDetailEvent.reviewEvent(agendaId: $agendaId, eventId: $eventId, rating: $rating, comment: $comment, isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewEventImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, agendaId, eventId, rating, comment, isAnonymous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewEventImplCopyWith<_$ReviewEventImpl> get copyWith =>
      __$$ReviewEventImplCopyWithImpl<_$ReviewEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) {
    return reviewEvent(agendaId, eventId, rating, comment, isAnonymous);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) {
    return reviewEvent?.call(agendaId, eventId, rating, comment, isAnonymous);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
    required TResult orElse(),
  }) {
    if (reviewEvent != null) {
      return reviewEvent(agendaId, eventId, rating, comment, isAnonymous);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) {
    return reviewEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) {
    return reviewEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
    required TResult orElse(),
  }) {
    if (reviewEvent != null) {
      return reviewEvent(this);
    }
    return orElse();
  }
}

abstract class _ReviewEvent implements ArtistAgendaEventDetailEvent {
  const factory _ReviewEvent(
      {required final String agendaId,
      required final String eventId,
      required final int rating,
      required final String comment,
      required final bool isAnonymous}) = _$ReviewEventImpl;

  String get agendaId;
  @override
  String get eventId;
  int get rating;
  String get comment;
  bool get isAnonymous;
  @override
  @JsonKey(ignore: true)
  _$$ReviewEventImplCopyWith<_$ReviewEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeEventStatusImplCopyWith<$Res>
    implements $ArtistAgendaEventDetailEventCopyWith<$Res> {
  factory _$$ChangeEventStatusImplCopyWith(_$ChangeEventStatusImpl value,
          $Res Function(_$ChangeEventStatusImpl) then) =
      __$$ChangeEventStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String agendaId, String eventId, String status, String? reason});
}

/// @nodoc
class __$$ChangeEventStatusImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventDetailEventCopyWithImpl<$Res,
        _$ChangeEventStatusImpl>
    implements _$$ChangeEventStatusImplCopyWith<$Res> {
  __$$ChangeEventStatusImplCopyWithImpl(_$ChangeEventStatusImpl _value,
      $Res Function(_$ChangeEventStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? eventId = null,
    Object? status = null,
    Object? reason = freezed,
  }) {
    return _then(_$ChangeEventStatusImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeEventStatusImpl implements _ChangeEventStatus {
  const _$ChangeEventStatusImpl(
      {required this.agendaId,
      required this.eventId,
      required this.status,
      this.reason});

  @override
  final String agendaId;
  @override
  final String eventId;
  @override
  final String status;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ArtistAgendaEventDetailEvent.changeEventStatus(agendaId: $agendaId, eventId: $eventId, status: $status, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEventStatusImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, agendaId, eventId, status, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEventStatusImplCopyWith<_$ChangeEventStatusImpl> get copyWith =>
      __$$ChangeEventStatusImplCopyWithImpl<_$ChangeEventStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) started,
    required TResult Function(String agendaId, String eventId, String notes)
        updateNotes,
    required TResult Function(String agendaId, String eventId,
            DateTime newStartDate, DateTime newEndDate, String? reason)
        rescheduleEvent,
    required TResult Function(String agendaId, String eventId, String reason)
        cancelEvent,
    required TResult Function(String agendaId, String eventId) confirmEvent,
    required TResult Function(String agendaId, String eventId, String? reason)
        rejectEvent,
    required TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)
        markEventAsDone,
    required TResult Function(
            String agendaId, String eventId, List<String> imageFiles)
        addWorkEvidence,
    required TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)
        reviewEvent,
    required TResult Function(
            String agendaId, String eventId, String status, String? reason)
        changeEventStatus,
  }) {
    return changeEventStatus(agendaId, eventId, status, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? started,
    TResult? Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult? Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult? Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult? Function(String agendaId, String eventId)? confirmEvent,
    TResult? Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult? Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult? Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult? Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult? Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
  }) {
    return changeEventStatus?.call(agendaId, eventId, status, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? started,
    TResult Function(String agendaId, String eventId, String notes)?
        updateNotes,
    TResult Function(String agendaId, String eventId, DateTime newStartDate,
            DateTime newEndDate, String? reason)?
        rescheduleEvent,
    TResult Function(String agendaId, String eventId, String reason)?
        cancelEvent,
    TResult Function(String agendaId, String eventId)? confirmEvent,
    TResult Function(String agendaId, String eventId, String? reason)?
        rejectEvent,
    TResult Function(
            String agendaId, String eventId, List<String>? workEvidenceFiles)?
        markEventAsDone,
    TResult Function(String agendaId, String eventId, List<String> imageFiles)?
        addWorkEvidence,
    TResult Function(String agendaId, String eventId, int rating,
            String comment, bool isAnonymous)?
        reviewEvent,
    TResult Function(
            String agendaId, String eventId, String status, String? reason)?
        changeEventStatus,
    required TResult orElse(),
  }) {
    if (changeEventStatus != null) {
      return changeEventStatus(agendaId, eventId, status, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateNotes value) updateNotes,
    required TResult Function(_RescheduleEvent value) rescheduleEvent,
    required TResult Function(_CancelEvent value) cancelEvent,
    required TResult Function(_ConfirmEvent value) confirmEvent,
    required TResult Function(_RejectEvent value) rejectEvent,
    required TResult Function(_MarkEventAsDone value) markEventAsDone,
    required TResult Function(_AddWorkEvidence value) addWorkEvidence,
    required TResult Function(_ReviewEvent value) reviewEvent,
    required TResult Function(_ChangeEventStatus value) changeEventStatus,
  }) {
    return changeEventStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateNotes value)? updateNotes,
    TResult? Function(_RescheduleEvent value)? rescheduleEvent,
    TResult? Function(_CancelEvent value)? cancelEvent,
    TResult? Function(_ConfirmEvent value)? confirmEvent,
    TResult? Function(_RejectEvent value)? rejectEvent,
    TResult? Function(_MarkEventAsDone value)? markEventAsDone,
    TResult? Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult? Function(_ReviewEvent value)? reviewEvent,
    TResult? Function(_ChangeEventStatus value)? changeEventStatus,
  }) {
    return changeEventStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateNotes value)? updateNotes,
    TResult Function(_RescheduleEvent value)? rescheduleEvent,
    TResult Function(_CancelEvent value)? cancelEvent,
    TResult Function(_ConfirmEvent value)? confirmEvent,
    TResult Function(_RejectEvent value)? rejectEvent,
    TResult Function(_MarkEventAsDone value)? markEventAsDone,
    TResult Function(_AddWorkEvidence value)? addWorkEvidence,
    TResult Function(_ReviewEvent value)? reviewEvent,
    TResult Function(_ChangeEventStatus value)? changeEventStatus,
    required TResult orElse(),
  }) {
    if (changeEventStatus != null) {
      return changeEventStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeEventStatus implements ArtistAgendaEventDetailEvent {
  const factory _ChangeEventStatus(
      {required final String agendaId,
      required final String eventId,
      required final String status,
      final String? reason}) = _$ChangeEventStatusImpl;

  String get agendaId;
  @override
  String get eventId;
  String get status;
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$ChangeEventStatusImplCopyWith<_$ChangeEventStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistAgendaEventDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(EventDetailResponse eventDetail) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EventDetailResponse eventDetail)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EventDetailResponse eventDetail)? loaded,
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
    required TResult Function(EventDetailResponse eventDetail) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EventDetailResponse eventDetail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EventDetailResponse eventDetail)? loaded,
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
    required TResult Function(EventDetailResponse eventDetail) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EventDetailResponse eventDetail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EventDetailResponse eventDetail)? loaded,
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
  $Res call({EventDetailResponse eventDetail});

  $EventDetailResponseCopyWith<$Res> get eventDetail;
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
              as EventDetailResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventDetailResponseCopyWith<$Res> get eventDetail {
    return $EventDetailResponseCopyWith<$Res>(_value.eventDetail, (value) {
      return _then(_value.copyWith(eventDetail: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.eventDetail);

  @override
  final EventDetailResponse eventDetail;

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
    required TResult Function(EventDetailResponse eventDetail) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(eventDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EventDetailResponse eventDetail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(eventDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EventDetailResponse eventDetail)? loaded,
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
  const factory _Loaded(final EventDetailResponse eventDetail) = _$LoadedImpl;

  EventDetailResponse get eventDetail;
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
    required TResult Function(EventDetailResponse eventDetail) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EventDetailResponse eventDetail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EventDetailResponse eventDetail)? loaded,
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
