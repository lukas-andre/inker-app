// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_agenda_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistAgendaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AgendaEventDetails eventDetails) addEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(AgendaEventDetails eventDetails) updateEvent,
    required TResult Function() loadEvents,
    required TResult Function(List<AgendaEventDetails> events)
        loadEventsSuccess,
    required TResult Function(String message) loadEventsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AgendaEventDetails eventDetails)? addEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult? Function()? loadEvents,
    TResult? Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult? Function(String message)? loadEventsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AgendaEventDetails eventDetails)? addEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult Function()? loadEvents,
    TResult Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult Function(String message)? loadEventsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadEventsSuccess value) loadEventsSuccess,
    required TResult Function(_LoadEventsError value) loadEventsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult? Function(_LoadEventsError value)? loadEventsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult Function(_LoadEventsError value)? loadEventsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistAgendaEventCopyWith<$Res> {
  factory $ArtistAgendaEventCopyWith(
          ArtistAgendaEvent value, $Res Function(ArtistAgendaEvent) then) =
      _$ArtistAgendaEventCopyWithImpl<$Res, ArtistAgendaEvent>;
}

/// @nodoc
class _$ArtistAgendaEventCopyWithImpl<$Res, $Val extends ArtistAgendaEvent>
    implements $ArtistAgendaEventCopyWith<$Res> {
  _$ArtistAgendaEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ArtistAgendaEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AgendaEventDetails eventDetails) addEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(AgendaEventDetails eventDetails) updateEvent,
    required TResult Function() loadEvents,
    required TResult Function(List<AgendaEventDetails> events)
        loadEventsSuccess,
    required TResult Function(String message) loadEventsError,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AgendaEventDetails eventDetails)? addEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult? Function()? loadEvents,
    TResult? Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult? Function(String message)? loadEventsError,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AgendaEventDetails eventDetails)? addEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult Function()? loadEvents,
    TResult Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult Function(String message)? loadEventsError,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadEventsSuccess value) loadEventsSuccess,
    required TResult Function(_LoadEventsError value) loadEventsError,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult? Function(_LoadEventsError value)? loadEventsError,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult Function(_LoadEventsError value)? loadEventsError,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ArtistAgendaEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddEventImplCopyWith<$Res> {
  factory _$$AddEventImplCopyWith(
          _$AddEventImpl value, $Res Function(_$AddEventImpl) then) =
      __$$AddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AgendaEventDetails eventDetails});
}

/// @nodoc
class __$$AddEventImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventCopyWithImpl<$Res, _$AddEventImpl>
    implements _$$AddEventImplCopyWith<$Res> {
  __$$AddEventImplCopyWithImpl(
      _$AddEventImpl _value, $Res Function(_$AddEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventDetails = freezed,
  }) {
    return _then(_$AddEventImpl(
      freezed == eventDetails
          ? _value.eventDetails
          : eventDetails // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetails,
    ));
  }
}

/// @nodoc

class _$AddEventImpl with DiagnosticableTreeMixin implements _AddEvent {
  const _$AddEventImpl(this.eventDetails);

  @override
  final AgendaEventDetails eventDetails;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaEvent.addEvent(eventDetails: $eventDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistAgendaEvent.addEvent'))
      ..add(DiagnosticsProperty('eventDetails', eventDetails));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventImpl &&
            const DeepCollectionEquality()
                .equals(other.eventDetails, eventDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(eventDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventImplCopyWith<_$AddEventImpl> get copyWith =>
      __$$AddEventImplCopyWithImpl<_$AddEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AgendaEventDetails eventDetails) addEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(AgendaEventDetails eventDetails) updateEvent,
    required TResult Function() loadEvents,
    required TResult Function(List<AgendaEventDetails> events)
        loadEventsSuccess,
    required TResult Function(String message) loadEventsError,
  }) {
    return addEvent(eventDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AgendaEventDetails eventDetails)? addEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult? Function()? loadEvents,
    TResult? Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult? Function(String message)? loadEventsError,
  }) {
    return addEvent?.call(eventDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AgendaEventDetails eventDetails)? addEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult Function()? loadEvents,
    TResult Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult Function(String message)? loadEventsError,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(eventDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadEventsSuccess value) loadEventsSuccess,
    required TResult Function(_LoadEventsError value) loadEventsError,
  }) {
    return addEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult? Function(_LoadEventsError value)? loadEventsError,
  }) {
    return addEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult Function(_LoadEventsError value)? loadEventsError,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(this);
    }
    return orElse();
  }
}

abstract class _AddEvent implements ArtistAgendaEvent {
  const factory _AddEvent(final AgendaEventDetails eventDetails) =
      _$AddEventImpl;

  AgendaEventDetails get eventDetails;
  @JsonKey(ignore: true)
  _$$AddEventImplCopyWith<_$AddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEventImplCopyWith<$Res> {
  factory _$$DeleteEventImplCopyWith(
          _$DeleteEventImpl value, $Res Function(_$DeleteEventImpl) then) =
      __$$DeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$DeleteEventImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventCopyWithImpl<$Res, _$DeleteEventImpl>
    implements _$$DeleteEventImplCopyWith<$Res> {
  __$$DeleteEventImplCopyWithImpl(
      _$DeleteEventImpl _value, $Res Function(_$DeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$DeleteEventImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteEventImpl with DiagnosticableTreeMixin implements _DeleteEvent {
  const _$DeleteEventImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaEvent.deleteEvent(eventId: $eventId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistAgendaEvent.deleteEvent'))
      ..add(DiagnosticsProperty('eventId', eventId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      __$$DeleteEventImplCopyWithImpl<_$DeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AgendaEventDetails eventDetails) addEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(AgendaEventDetails eventDetails) updateEvent,
    required TResult Function() loadEvents,
    required TResult Function(List<AgendaEventDetails> events)
        loadEventsSuccess,
    required TResult Function(String message) loadEventsError,
  }) {
    return deleteEvent(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AgendaEventDetails eventDetails)? addEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult? Function()? loadEvents,
    TResult? Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult? Function(String message)? loadEventsError,
  }) {
    return deleteEvent?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AgendaEventDetails eventDetails)? addEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult Function()? loadEvents,
    TResult Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult Function(String message)? loadEventsError,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadEventsSuccess value) loadEventsSuccess,
    required TResult Function(_LoadEventsError value) loadEventsError,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult? Function(_LoadEventsError value)? loadEventsError,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult Function(_LoadEventsError value)? loadEventsError,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteEvent implements ArtistAgendaEvent {
  const factory _DeleteEvent(final String eventId) = _$DeleteEventImpl;

  String get eventId;
  @JsonKey(ignore: true)
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEventImplCopyWith<$Res> {
  factory _$$UpdateEventImplCopyWith(
          _$UpdateEventImpl value, $Res Function(_$UpdateEventImpl) then) =
      __$$UpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AgendaEventDetails eventDetails});
}

/// @nodoc
class __$$UpdateEventImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventCopyWithImpl<$Res, _$UpdateEventImpl>
    implements _$$UpdateEventImplCopyWith<$Res> {
  __$$UpdateEventImplCopyWithImpl(
      _$UpdateEventImpl _value, $Res Function(_$UpdateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventDetails = freezed,
  }) {
    return _then(_$UpdateEventImpl(
      freezed == eventDetails
          ? _value.eventDetails
          : eventDetails // ignore: cast_nullable_to_non_nullable
              as AgendaEventDetails,
    ));
  }
}

/// @nodoc

class _$UpdateEventImpl with DiagnosticableTreeMixin implements _UpdateEvent {
  const _$UpdateEventImpl(this.eventDetails);

  @override
  final AgendaEventDetails eventDetails;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaEvent.updateEvent(eventDetails: $eventDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistAgendaEvent.updateEvent'))
      ..add(DiagnosticsProperty('eventDetails', eventDetails));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEventImpl &&
            const DeepCollectionEquality()
                .equals(other.eventDetails, eventDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(eventDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      __$$UpdateEventImplCopyWithImpl<_$UpdateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AgendaEventDetails eventDetails) addEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(AgendaEventDetails eventDetails) updateEvent,
    required TResult Function() loadEvents,
    required TResult Function(List<AgendaEventDetails> events)
        loadEventsSuccess,
    required TResult Function(String message) loadEventsError,
  }) {
    return updateEvent(eventDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AgendaEventDetails eventDetails)? addEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult? Function()? loadEvents,
    TResult? Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult? Function(String message)? loadEventsError,
  }) {
    return updateEvent?.call(eventDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AgendaEventDetails eventDetails)? addEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult Function()? loadEvents,
    TResult Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult Function(String message)? loadEventsError,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(eventDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadEventsSuccess value) loadEventsSuccess,
    required TResult Function(_LoadEventsError value) loadEventsError,
  }) {
    return updateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult? Function(_LoadEventsError value)? loadEventsError,
  }) {
    return updateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult Function(_LoadEventsError value)? loadEventsError,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent implements ArtistAgendaEvent {
  const factory _UpdateEvent(final AgendaEventDetails eventDetails) =
      _$UpdateEventImpl;

  AgendaEventDetails get eventDetails;
  @JsonKey(ignore: true)
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadEventsImplCopyWith<$Res> {
  factory _$$LoadEventsImplCopyWith(
          _$LoadEventsImpl value, $Res Function(_$LoadEventsImpl) then) =
      __$$LoadEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadEventsImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventCopyWithImpl<$Res, _$LoadEventsImpl>
    implements _$$LoadEventsImplCopyWith<$Res> {
  __$$LoadEventsImplCopyWithImpl(
      _$LoadEventsImpl _value, $Res Function(_$LoadEventsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadEventsImpl with DiagnosticableTreeMixin implements _LoadEvents {
  const _$LoadEventsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaEvent.loadEvents()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ArtistAgendaEvent.loadEvents'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AgendaEventDetails eventDetails) addEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(AgendaEventDetails eventDetails) updateEvent,
    required TResult Function() loadEvents,
    required TResult Function(List<AgendaEventDetails> events)
        loadEventsSuccess,
    required TResult Function(String message) loadEventsError,
  }) {
    return loadEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AgendaEventDetails eventDetails)? addEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult? Function()? loadEvents,
    TResult? Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult? Function(String message)? loadEventsError,
  }) {
    return loadEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AgendaEventDetails eventDetails)? addEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult Function()? loadEvents,
    TResult Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult Function(String message)? loadEventsError,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadEventsSuccess value) loadEventsSuccess,
    required TResult Function(_LoadEventsError value) loadEventsError,
  }) {
    return loadEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult? Function(_LoadEventsError value)? loadEventsError,
  }) {
    return loadEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult Function(_LoadEventsError value)? loadEventsError,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents(this);
    }
    return orElse();
  }
}

abstract class _LoadEvents implements ArtistAgendaEvent {
  const factory _LoadEvents() = _$LoadEventsImpl;
}

/// @nodoc
abstract class _$$LoadEventsSuccessImplCopyWith<$Res> {
  factory _$$LoadEventsSuccessImplCopyWith(_$LoadEventsSuccessImpl value,
          $Res Function(_$LoadEventsSuccessImpl) then) =
      __$$LoadEventsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AgendaEventDetails> events});
}

/// @nodoc
class __$$LoadEventsSuccessImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventCopyWithImpl<$Res, _$LoadEventsSuccessImpl>
    implements _$$LoadEventsSuccessImplCopyWith<$Res> {
  __$$LoadEventsSuccessImplCopyWithImpl(_$LoadEventsSuccessImpl _value,
      $Res Function(_$LoadEventsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$LoadEventsSuccessImpl(
      null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<AgendaEventDetails>,
    ));
  }
}

/// @nodoc

class _$LoadEventsSuccessImpl
    with DiagnosticableTreeMixin
    implements _LoadEventsSuccess {
  const _$LoadEventsSuccessImpl(final List<AgendaEventDetails> events)
      : _events = events;

  final List<AgendaEventDetails> _events;
  @override
  List<AgendaEventDetails> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaEvent.loadEventsSuccess(events: $events)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistAgendaEvent.loadEventsSuccess'))
      ..add(DiagnosticsProperty('events', events));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEventsSuccessImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEventsSuccessImplCopyWith<_$LoadEventsSuccessImpl> get copyWith =>
      __$$LoadEventsSuccessImplCopyWithImpl<_$LoadEventsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AgendaEventDetails eventDetails) addEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(AgendaEventDetails eventDetails) updateEvent,
    required TResult Function() loadEvents,
    required TResult Function(List<AgendaEventDetails> events)
        loadEventsSuccess,
    required TResult Function(String message) loadEventsError,
  }) {
    return loadEventsSuccess(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AgendaEventDetails eventDetails)? addEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult? Function()? loadEvents,
    TResult? Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult? Function(String message)? loadEventsError,
  }) {
    return loadEventsSuccess?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AgendaEventDetails eventDetails)? addEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult Function()? loadEvents,
    TResult Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult Function(String message)? loadEventsError,
    required TResult orElse(),
  }) {
    if (loadEventsSuccess != null) {
      return loadEventsSuccess(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadEventsSuccess value) loadEventsSuccess,
    required TResult Function(_LoadEventsError value) loadEventsError,
  }) {
    return loadEventsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult? Function(_LoadEventsError value)? loadEventsError,
  }) {
    return loadEventsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult Function(_LoadEventsError value)? loadEventsError,
    required TResult orElse(),
  }) {
    if (loadEventsSuccess != null) {
      return loadEventsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadEventsSuccess implements ArtistAgendaEvent {
  const factory _LoadEventsSuccess(final List<AgendaEventDetails> events) =
      _$LoadEventsSuccessImpl;

  List<AgendaEventDetails> get events;
  @JsonKey(ignore: true)
  _$$LoadEventsSuccessImplCopyWith<_$LoadEventsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadEventsErrorImplCopyWith<$Res> {
  factory _$$LoadEventsErrorImplCopyWith(_$LoadEventsErrorImpl value,
          $Res Function(_$LoadEventsErrorImpl) then) =
      __$$LoadEventsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadEventsErrorImplCopyWithImpl<$Res>
    extends _$ArtistAgendaEventCopyWithImpl<$Res, _$LoadEventsErrorImpl>
    implements _$$LoadEventsErrorImplCopyWith<$Res> {
  __$$LoadEventsErrorImplCopyWithImpl(
      _$LoadEventsErrorImpl _value, $Res Function(_$LoadEventsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadEventsErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadEventsErrorImpl
    with DiagnosticableTreeMixin
    implements _LoadEventsError {
  const _$LoadEventsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaEvent.loadEventsError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistAgendaEvent.loadEventsError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEventsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEventsErrorImplCopyWith<_$LoadEventsErrorImpl> get copyWith =>
      __$$LoadEventsErrorImplCopyWithImpl<_$LoadEventsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AgendaEventDetails eventDetails) addEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(AgendaEventDetails eventDetails) updateEvent,
    required TResult Function() loadEvents,
    required TResult Function(List<AgendaEventDetails> events)
        loadEventsSuccess,
    required TResult Function(String message) loadEventsError,
  }) {
    return loadEventsError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AgendaEventDetails eventDetails)? addEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult? Function()? loadEvents,
    TResult? Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult? Function(String message)? loadEventsError,
  }) {
    return loadEventsError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AgendaEventDetails eventDetails)? addEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(AgendaEventDetails eventDetails)? updateEvent,
    TResult Function()? loadEvents,
    TResult Function(List<AgendaEventDetails> events)? loadEventsSuccess,
    TResult Function(String message)? loadEventsError,
    required TResult orElse(),
  }) {
    if (loadEventsError != null) {
      return loadEventsError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadEventsSuccess value) loadEventsSuccess,
    required TResult Function(_LoadEventsError value) loadEventsError,
  }) {
    return loadEventsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult? Function(_LoadEventsError value)? loadEventsError,
  }) {
    return loadEventsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadEventsSuccess value)? loadEventsSuccess,
    TResult Function(_LoadEventsError value)? loadEventsError,
    required TResult orElse(),
  }) {
    if (loadEventsError != null) {
      return loadEventsError(this);
    }
    return orElse();
  }
}

abstract class _LoadEventsError implements ArtistAgendaEvent {
  const factory _LoadEventsError(final String message) = _$LoadEventsErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadEventsErrorImplCopyWith<_$LoadEventsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistAgendaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AgendaEventDetails> events) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AgendaEventDetails> events)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AgendaEventDetails> events)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistAgendaStateInitial value) initial,
    required TResult Function(ArtistAgendaStateLoading value) loading,
    required TResult Function(ArtistAgendaStateLoaded value) loaded,
    required TResult Function(ArtistAgendaStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistAgendaStateInitial value)? initial,
    TResult? Function(ArtistAgendaStateLoading value)? loading,
    TResult? Function(ArtistAgendaStateLoaded value)? loaded,
    TResult? Function(ArtistAgendaStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistAgendaStateInitial value)? initial,
    TResult Function(ArtistAgendaStateLoading value)? loading,
    TResult Function(ArtistAgendaStateLoaded value)? loaded,
    TResult Function(ArtistAgendaStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistAgendaStateCopyWith<$Res> {
  factory $ArtistAgendaStateCopyWith(
          ArtistAgendaState value, $Res Function(ArtistAgendaState) then) =
      _$ArtistAgendaStateCopyWithImpl<$Res, ArtistAgendaState>;
}

/// @nodoc
class _$ArtistAgendaStateCopyWithImpl<$Res, $Val extends ArtistAgendaState>
    implements $ArtistAgendaStateCopyWith<$Res> {
  _$ArtistAgendaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ArtistAgendaStateInitialImplCopyWith<$Res> {
  factory _$$ArtistAgendaStateInitialImplCopyWith(
          _$ArtistAgendaStateInitialImpl value,
          $Res Function(_$ArtistAgendaStateInitialImpl) then) =
      __$$ArtistAgendaStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArtistAgendaStateInitialImplCopyWithImpl<$Res>
    extends _$ArtistAgendaStateCopyWithImpl<$Res,
        _$ArtistAgendaStateInitialImpl>
    implements _$$ArtistAgendaStateInitialImplCopyWith<$Res> {
  __$$ArtistAgendaStateInitialImplCopyWithImpl(
      _$ArtistAgendaStateInitialImpl _value,
      $Res Function(_$ArtistAgendaStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArtistAgendaStateInitialImpl
    with DiagnosticableTreeMixin
    implements ArtistAgendaStateInitial {
  const _$ArtistAgendaStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ArtistAgendaState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAgendaStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AgendaEventDetails> events) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AgendaEventDetails> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AgendaEventDetails> events)? loaded,
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
    required TResult Function(ArtistAgendaStateInitial value) initial,
    required TResult Function(ArtistAgendaStateLoading value) loading,
    required TResult Function(ArtistAgendaStateLoaded value) loaded,
    required TResult Function(ArtistAgendaStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistAgendaStateInitial value)? initial,
    TResult? Function(ArtistAgendaStateLoading value)? loading,
    TResult? Function(ArtistAgendaStateLoaded value)? loaded,
    TResult? Function(ArtistAgendaStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistAgendaStateInitial value)? initial,
    TResult Function(ArtistAgendaStateLoading value)? loading,
    TResult Function(ArtistAgendaStateLoaded value)? loaded,
    TResult Function(ArtistAgendaStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ArtistAgendaStateInitial implements ArtistAgendaState {
  const factory ArtistAgendaStateInitial() = _$ArtistAgendaStateInitialImpl;
}

/// @nodoc
abstract class _$$ArtistAgendaStateLoadingImplCopyWith<$Res> {
  factory _$$ArtistAgendaStateLoadingImplCopyWith(
          _$ArtistAgendaStateLoadingImpl value,
          $Res Function(_$ArtistAgendaStateLoadingImpl) then) =
      __$$ArtistAgendaStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArtistAgendaStateLoadingImplCopyWithImpl<$Res>
    extends _$ArtistAgendaStateCopyWithImpl<$Res,
        _$ArtistAgendaStateLoadingImpl>
    implements _$$ArtistAgendaStateLoadingImplCopyWith<$Res> {
  __$$ArtistAgendaStateLoadingImplCopyWithImpl(
      _$ArtistAgendaStateLoadingImpl _value,
      $Res Function(_$ArtistAgendaStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArtistAgendaStateLoadingImpl
    with DiagnosticableTreeMixin
    implements ArtistAgendaStateLoading {
  const _$ArtistAgendaStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ArtistAgendaState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAgendaStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AgendaEventDetails> events) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AgendaEventDetails> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AgendaEventDetails> events)? loaded,
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
    required TResult Function(ArtistAgendaStateInitial value) initial,
    required TResult Function(ArtistAgendaStateLoading value) loading,
    required TResult Function(ArtistAgendaStateLoaded value) loaded,
    required TResult Function(ArtistAgendaStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistAgendaStateInitial value)? initial,
    TResult? Function(ArtistAgendaStateLoading value)? loading,
    TResult? Function(ArtistAgendaStateLoaded value)? loaded,
    TResult? Function(ArtistAgendaStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistAgendaStateInitial value)? initial,
    TResult Function(ArtistAgendaStateLoading value)? loading,
    TResult Function(ArtistAgendaStateLoaded value)? loaded,
    TResult Function(ArtistAgendaStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ArtistAgendaStateLoading implements ArtistAgendaState {
  const factory ArtistAgendaStateLoading() = _$ArtistAgendaStateLoadingImpl;
}

/// @nodoc
abstract class _$$ArtistAgendaStateLoadedImplCopyWith<$Res> {
  factory _$$ArtistAgendaStateLoadedImplCopyWith(
          _$ArtistAgendaStateLoadedImpl value,
          $Res Function(_$ArtistAgendaStateLoadedImpl) then) =
      __$$ArtistAgendaStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AgendaEventDetails> events});
}

/// @nodoc
class __$$ArtistAgendaStateLoadedImplCopyWithImpl<$Res>
    extends _$ArtistAgendaStateCopyWithImpl<$Res, _$ArtistAgendaStateLoadedImpl>
    implements _$$ArtistAgendaStateLoadedImplCopyWith<$Res> {
  __$$ArtistAgendaStateLoadedImplCopyWithImpl(
      _$ArtistAgendaStateLoadedImpl _value,
      $Res Function(_$ArtistAgendaStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$ArtistAgendaStateLoadedImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<AgendaEventDetails>,
    ));
  }
}

/// @nodoc

class _$ArtistAgendaStateLoadedImpl
    with DiagnosticableTreeMixin
    implements ArtistAgendaStateLoaded {
  const _$ArtistAgendaStateLoadedImpl(
      {required final List<AgendaEventDetails> events})
      : _events = events;

  final List<AgendaEventDetails> _events;
  @override
  List<AgendaEventDetails> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaState.loaded(events: $events)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistAgendaState.loaded'))
      ..add(DiagnosticsProperty('events', events));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAgendaStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistAgendaStateLoadedImplCopyWith<_$ArtistAgendaStateLoadedImpl>
      get copyWith => __$$ArtistAgendaStateLoadedImplCopyWithImpl<
          _$ArtistAgendaStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AgendaEventDetails> events) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AgendaEventDetails> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AgendaEventDetails> events)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistAgendaStateInitial value) initial,
    required TResult Function(ArtistAgendaStateLoading value) loading,
    required TResult Function(ArtistAgendaStateLoaded value) loaded,
    required TResult Function(ArtistAgendaStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistAgendaStateInitial value)? initial,
    TResult? Function(ArtistAgendaStateLoading value)? loading,
    TResult? Function(ArtistAgendaStateLoaded value)? loaded,
    TResult? Function(ArtistAgendaStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistAgendaStateInitial value)? initial,
    TResult Function(ArtistAgendaStateLoading value)? loading,
    TResult Function(ArtistAgendaStateLoaded value)? loaded,
    TResult Function(ArtistAgendaStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ArtistAgendaStateLoaded implements ArtistAgendaState {
  const factory ArtistAgendaStateLoaded(
          {required final List<AgendaEventDetails> events}) =
      _$ArtistAgendaStateLoadedImpl;

  List<AgendaEventDetails> get events;
  @JsonKey(ignore: true)
  _$$ArtistAgendaStateLoadedImplCopyWith<_$ArtistAgendaStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistAgendaStateErrorImplCopyWith<$Res> {
  factory _$$ArtistAgendaStateErrorImplCopyWith(
          _$ArtistAgendaStateErrorImpl value,
          $Res Function(_$ArtistAgendaStateErrorImpl) then) =
      __$$ArtistAgendaStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ArtistAgendaStateErrorImplCopyWithImpl<$Res>
    extends _$ArtistAgendaStateCopyWithImpl<$Res, _$ArtistAgendaStateErrorImpl>
    implements _$$ArtistAgendaStateErrorImplCopyWith<$Res> {
  __$$ArtistAgendaStateErrorImplCopyWithImpl(
      _$ArtistAgendaStateErrorImpl _value,
      $Res Function(_$ArtistAgendaStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ArtistAgendaStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArtistAgendaStateErrorImpl
    with DiagnosticableTreeMixin
    implements ArtistAgendaStateError {
  const _$ArtistAgendaStateErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAgendaState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistAgendaState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAgendaStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistAgendaStateErrorImplCopyWith<_$ArtistAgendaStateErrorImpl>
      get copyWith => __$$ArtistAgendaStateErrorImplCopyWithImpl<
          _$ArtistAgendaStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AgendaEventDetails> events) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AgendaEventDetails> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AgendaEventDetails> events)? loaded,
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
    required TResult Function(ArtistAgendaStateInitial value) initial,
    required TResult Function(ArtistAgendaStateLoading value) loading,
    required TResult Function(ArtistAgendaStateLoaded value) loaded,
    required TResult Function(ArtistAgendaStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistAgendaStateInitial value)? initial,
    TResult? Function(ArtistAgendaStateLoading value)? loading,
    TResult? Function(ArtistAgendaStateLoaded value)? loaded,
    TResult? Function(ArtistAgendaStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistAgendaStateInitial value)? initial,
    TResult Function(ArtistAgendaStateLoading value)? loading,
    TResult Function(ArtistAgendaStateLoaded value)? loaded,
    TResult Function(ArtistAgendaStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ArtistAgendaStateError implements ArtistAgendaState {
  const factory ArtistAgendaStateError({required final String message}) =
      _$ArtistAgendaStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ArtistAgendaStateErrorImplCopyWith<_$ArtistAgendaStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
