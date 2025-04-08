// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_agenda_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistAgendaSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistAgendaSettingsEventCopyWith<$Res> {
  factory $ArtistAgendaSettingsEventCopyWith(ArtistAgendaSettingsEvent value,
          $Res Function(ArtistAgendaSettingsEvent) then) =
      _$ArtistAgendaSettingsEventCopyWithImpl<$Res, ArtistAgendaSettingsEvent>;
}

/// @nodoc
class _$ArtistAgendaSettingsEventCopyWithImpl<$Res,
        $Val extends ArtistAgendaSettingsEvent>
    implements $ArtistAgendaSettingsEventCopyWith<$Res> {
  _$ArtistAgendaSettingsEventCopyWithImpl(this._value, this._then);

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
    extends _$ArtistAgendaSettingsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ArtistAgendaSettingsEvent.started()';
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
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult Function(String message)? error,
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
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ArtistAgendaSettingsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadSettingsImplCopyWith<$Res> {
  factory _$$LoadSettingsImplCopyWith(
          _$LoadSettingsImpl value, $Res Function(_$LoadSettingsImpl) then) =
      __$$LoadSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String agendaId});
}

/// @nodoc
class __$$LoadSettingsImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsEventCopyWithImpl<$Res, _$LoadSettingsImpl>
    implements _$$LoadSettingsImplCopyWith<$Res> {
  __$$LoadSettingsImplCopyWithImpl(
      _$LoadSettingsImpl _value, $Res Function(_$LoadSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
  }) {
    return _then(_$LoadSettingsImpl(
      null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSettingsImpl implements _LoadSettings {
  const _$LoadSettingsImpl(this.agendaId);

  @override
  final String agendaId;

  @override
  String toString() {
    return 'ArtistAgendaSettingsEvent.loadSettings(agendaId: $agendaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSettingsImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSettingsImplCopyWith<_$LoadSettingsImpl> get copyWith =>
      __$$LoadSettingsImplCopyWithImpl<_$LoadSettingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return loadSettings(agendaId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return loadSettings?.call(agendaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadSettings != null) {
      return loadSettings(agendaId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loadSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loadSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadSettings != null) {
      return loadSettings(this);
    }
    return orElse();
  }
}

abstract class _LoadSettings implements ArtistAgendaSettingsEvent {
  const factory _LoadSettings(final String agendaId) = _$LoadSettingsImpl;

  String get agendaId;
  @JsonKey(ignore: true)
  _$$LoadSettingsImplCopyWith<_$LoadSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUnavailableTimesImplCopyWith<$Res> {
  factory _$$LoadUnavailableTimesImplCopyWith(_$LoadUnavailableTimesImpl value,
          $Res Function(_$LoadUnavailableTimesImpl) then) =
      __$$LoadUnavailableTimesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String agendaId});
}

/// @nodoc
class __$$LoadUnavailableTimesImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsEventCopyWithImpl<$Res,
        _$LoadUnavailableTimesImpl>
    implements _$$LoadUnavailableTimesImplCopyWith<$Res> {
  __$$LoadUnavailableTimesImplCopyWithImpl(_$LoadUnavailableTimesImpl _value,
      $Res Function(_$LoadUnavailableTimesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
  }) {
    return _then(_$LoadUnavailableTimesImpl(
      null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadUnavailableTimesImpl implements _LoadUnavailableTimes {
  const _$LoadUnavailableTimesImpl(this.agendaId);

  @override
  final String agendaId;

  @override
  String toString() {
    return 'ArtistAgendaSettingsEvent.loadUnavailableTimes(agendaId: $agendaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUnavailableTimesImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUnavailableTimesImplCopyWith<_$LoadUnavailableTimesImpl>
      get copyWith =>
          __$$LoadUnavailableTimesImplCopyWithImpl<_$LoadUnavailableTimesImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return loadUnavailableTimes(agendaId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return loadUnavailableTimes?.call(agendaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadUnavailableTimes != null) {
      return loadUnavailableTimes(agendaId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loadUnavailableTimes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loadUnavailableTimes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadUnavailableTimes != null) {
      return loadUnavailableTimes(this);
    }
    return orElse();
  }
}

abstract class _LoadUnavailableTimes implements ArtistAgendaSettingsEvent {
  const factory _LoadUnavailableTimes(final String agendaId) =
      _$LoadUnavailableTimesImpl;

  String get agendaId;
  @JsonKey(ignore: true)
  _$$LoadUnavailableTimesImplCopyWith<_$LoadUnavailableTimesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateWorkingHoursImplCopyWith<$Res> {
  factory _$$UpdateWorkingHoursImplCopyWith(_$UpdateWorkingHoursImpl value,
          $Res Function(_$UpdateWorkingHoursImpl) then) =
      __$$UpdateWorkingHoursImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String agendaId,
      String workingHoursStart,
      String workingHoursEnd,
      List<String> workingDays});
}

/// @nodoc
class __$$UpdateWorkingHoursImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsEventCopyWithImpl<$Res,
        _$UpdateWorkingHoursImpl>
    implements _$$UpdateWorkingHoursImplCopyWith<$Res> {
  __$$UpdateWorkingHoursImplCopyWithImpl(_$UpdateWorkingHoursImpl _value,
      $Res Function(_$UpdateWorkingHoursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? workingHoursStart = null,
    Object? workingHoursEnd = null,
    Object? workingDays = null,
  }) {
    return _then(_$UpdateWorkingHoursImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc

class _$UpdateWorkingHoursImpl implements _UpdateWorkingHours {
  const _$UpdateWorkingHoursImpl(
      {required this.agendaId,
      required this.workingHoursStart,
      required this.workingHoursEnd,
      required final List<String> workingDays})
      : _workingDays = workingDays;

  @override
  final String agendaId;
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
  String toString() {
    return 'ArtistAgendaSettingsEvent.updateWorkingHours(agendaId: $agendaId, workingHoursStart: $workingHoursStart, workingHoursEnd: $workingHoursEnd, workingDays: $workingDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWorkingHoursImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.workingHoursStart, workingHoursStart) ||
                other.workingHoursStart == workingHoursStart) &&
            (identical(other.workingHoursEnd, workingHoursEnd) ||
                other.workingHoursEnd == workingHoursEnd) &&
            const DeepCollectionEquality()
                .equals(other._workingDays, _workingDays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId, workingHoursStart,
      workingHoursEnd, const DeepCollectionEquality().hash(_workingDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWorkingHoursImplCopyWith<_$UpdateWorkingHoursImpl> get copyWith =>
      __$$UpdateWorkingHoursImplCopyWithImpl<_$UpdateWorkingHoursImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return updateWorkingHours(
        agendaId, workingHoursStart, workingHoursEnd, workingDays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return updateWorkingHours?.call(
        agendaId, workingHoursStart, workingHoursEnd, workingDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updateWorkingHours != null) {
      return updateWorkingHours(
          agendaId, workingHoursStart, workingHoursEnd, workingDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return updateWorkingHours(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return updateWorkingHours?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updateWorkingHours != null) {
      return updateWorkingHours(this);
    }
    return orElse();
  }
}

abstract class _UpdateWorkingHours implements ArtistAgendaSettingsEvent {
  const factory _UpdateWorkingHours(
      {required final String agendaId,
      required final String workingHoursStart,
      required final String workingHoursEnd,
      required final List<String> workingDays}) = _$UpdateWorkingHoursImpl;

  String get agendaId;
  String get workingHoursStart;
  String get workingHoursEnd;
  List<String> get workingDays;
  @JsonKey(ignore: true)
  _$$UpdateWorkingHoursImplCopyWith<_$UpdateWorkingHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAgendaSettingsImplCopyWith<$Res> {
  factory _$$UpdateAgendaSettingsImplCopyWith(_$UpdateAgendaSettingsImpl value,
          $Res Function(_$UpdateAgendaSettingsImpl) then) =
      __$$UpdateAgendaSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String agendaId, bool isPublic, bool isOpen});
}

/// @nodoc
class __$$UpdateAgendaSettingsImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsEventCopyWithImpl<$Res,
        _$UpdateAgendaSettingsImpl>
    implements _$$UpdateAgendaSettingsImplCopyWith<$Res> {
  __$$UpdateAgendaSettingsImplCopyWithImpl(_$UpdateAgendaSettingsImpl _value,
      $Res Function(_$UpdateAgendaSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? isPublic = null,
    Object? isOpen = null,
  }) {
    return _then(_$UpdateAgendaSettingsImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$UpdateAgendaSettingsImpl implements _UpdateAgendaSettings {
  const _$UpdateAgendaSettingsImpl(
      {required this.agendaId, required this.isPublic, required this.isOpen});

  @override
  final String agendaId;
  @override
  final bool isPublic;
  @override
  final bool isOpen;

  @override
  String toString() {
    return 'ArtistAgendaSettingsEvent.updateAgendaSettings(agendaId: $agendaId, isPublic: $isPublic, isOpen: $isOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAgendaSettingsImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId, isPublic, isOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAgendaSettingsImplCopyWith<_$UpdateAgendaSettingsImpl>
      get copyWith =>
          __$$UpdateAgendaSettingsImplCopyWithImpl<_$UpdateAgendaSettingsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return updateAgendaSettings(agendaId, isPublic, isOpen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return updateAgendaSettings?.call(agendaId, isPublic, isOpen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updateAgendaSettings != null) {
      return updateAgendaSettings(agendaId, isPublic, isOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return updateAgendaSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return updateAgendaSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updateAgendaSettings != null) {
      return updateAgendaSettings(this);
    }
    return orElse();
  }
}

abstract class _UpdateAgendaSettings implements ArtistAgendaSettingsEvent {
  const factory _UpdateAgendaSettings(
      {required final String agendaId,
      required final bool isPublic,
      required final bool isOpen}) = _$UpdateAgendaSettingsImpl;

  String get agendaId;
  bool get isPublic;
  bool get isOpen;
  @JsonKey(ignore: true)
  _$$UpdateAgendaSettingsImplCopyWith<_$UpdateAgendaSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddUnavailableTimeImplCopyWith<$Res> {
  factory _$$AddUnavailableTimeImplCopyWith(_$AddUnavailableTimeImpl value,
          $Res Function(_$AddUnavailableTimeImpl) then) =
      __$$AddUnavailableTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String agendaId, DateTime startDate, DateTime endDate, String? reason});
}

/// @nodoc
class __$$AddUnavailableTimeImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsEventCopyWithImpl<$Res,
        _$AddUnavailableTimeImpl>
    implements _$$AddUnavailableTimeImplCopyWith<$Res> {
  __$$AddUnavailableTimeImplCopyWithImpl(_$AddUnavailableTimeImpl _value,
      $Res Function(_$AddUnavailableTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? reason = freezed,
  }) {
    return _then(_$AddUnavailableTimeImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
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

class _$AddUnavailableTimeImpl implements _AddUnavailableTime {
  const _$AddUnavailableTimeImpl(
      {required this.agendaId,
      required this.startDate,
      required this.endDate,
      this.reason});

  @override
  final String agendaId;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ArtistAgendaSettingsEvent.addUnavailableTime(agendaId: $agendaId, startDate: $startDate, endDate: $endDate, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUnavailableTimeImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, agendaId, startDate, endDate, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUnavailableTimeImplCopyWith<_$AddUnavailableTimeImpl> get copyWith =>
      __$$AddUnavailableTimeImplCopyWithImpl<_$AddUnavailableTimeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return addUnavailableTime(agendaId, startDate, endDate, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return addUnavailableTime?.call(agendaId, startDate, endDate, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (addUnavailableTime != null) {
      return addUnavailableTime(agendaId, startDate, endDate, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return addUnavailableTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return addUnavailableTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addUnavailableTime != null) {
      return addUnavailableTime(this);
    }
    return orElse();
  }
}

abstract class _AddUnavailableTime implements ArtistAgendaSettingsEvent {
  const factory _AddUnavailableTime(
      {required final String agendaId,
      required final DateTime startDate,
      required final DateTime endDate,
      final String? reason}) = _$AddUnavailableTimeImpl;

  String get agendaId;
  DateTime get startDate;
  DateTime get endDate;
  String? get reason;
  @JsonKey(ignore: true)
  _$$AddUnavailableTimeImplCopyWith<_$AddUnavailableTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUnavailableTimeImplCopyWith<$Res> {
  factory _$$DeleteUnavailableTimeImplCopyWith(
          _$DeleteUnavailableTimeImpl value,
          $Res Function(_$DeleteUnavailableTimeImpl) then) =
      __$$DeleteUnavailableTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String agendaId, String unavailableTimeId});
}

/// @nodoc
class __$$DeleteUnavailableTimeImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsEventCopyWithImpl<$Res,
        _$DeleteUnavailableTimeImpl>
    implements _$$DeleteUnavailableTimeImplCopyWith<$Res> {
  __$$DeleteUnavailableTimeImplCopyWithImpl(_$DeleteUnavailableTimeImpl _value,
      $Res Function(_$DeleteUnavailableTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agendaId = null,
    Object? unavailableTimeId = null,
  }) {
    return _then(_$DeleteUnavailableTimeImpl(
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
      unavailableTimeId: null == unavailableTimeId
          ? _value.unavailableTimeId
          : unavailableTimeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteUnavailableTimeImpl implements _DeleteUnavailableTime {
  const _$DeleteUnavailableTimeImpl(
      {required this.agendaId, required this.unavailableTimeId});

  @override
  final String agendaId;
  @override
  final String unavailableTimeId;

  @override
  String toString() {
    return 'ArtistAgendaSettingsEvent.deleteUnavailableTime(agendaId: $agendaId, unavailableTimeId: $unavailableTimeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUnavailableTimeImpl &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.unavailableTimeId, unavailableTimeId) ||
                other.unavailableTimeId == unavailableTimeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agendaId, unavailableTimeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUnavailableTimeImplCopyWith<_$DeleteUnavailableTimeImpl>
      get copyWith => __$$DeleteUnavailableTimeImplCopyWithImpl<
          _$DeleteUnavailableTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return deleteUnavailableTime(agendaId, unavailableTimeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return deleteUnavailableTime?.call(agendaId, unavailableTimeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (deleteUnavailableTime != null) {
      return deleteUnavailableTime(agendaId, unavailableTimeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return deleteUnavailableTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return deleteUnavailableTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (deleteUnavailableTime != null) {
      return deleteUnavailableTime(this);
    }
    return orElse();
  }
}

abstract class _DeleteUnavailableTime implements ArtistAgendaSettingsEvent {
  const factory _DeleteUnavailableTime(
      {required final String agendaId,
      required final String unavailableTimeId}) = _$DeleteUnavailableTimeImpl;

  String get agendaId;
  String get unavailableTimeId;
  @JsonKey(ignore: true)
  _$$DeleteUnavailableTimeImplCopyWith<_$DeleteUnavailableTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsLoadedImplCopyWith<$Res> {
  factory _$$SettingsLoadedImplCopyWith(_$SettingsLoadedImpl value,
          $Res Function(_$SettingsLoadedImpl) then) =
      __$$SettingsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AgendaSettings settings});

  $AgendaSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SettingsLoadedImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsEventCopyWithImpl<$Res, _$SettingsLoadedImpl>
    implements _$$SettingsLoadedImplCopyWith<$Res> {
  __$$SettingsLoadedImplCopyWithImpl(
      _$SettingsLoadedImpl _value, $Res Function(_$SettingsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$SettingsLoadedImpl(
      null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as AgendaSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaSettingsCopyWith<$Res> get settings {
    return $AgendaSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc

class _$SettingsLoadedImpl implements _SettingsLoaded {
  const _$SettingsLoadedImpl(this.settings);

  @override
  final AgendaSettings settings;

  @override
  String toString() {
    return 'ArtistAgendaSettingsEvent.settingsLoaded(settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLoadedImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsLoadedImplCopyWith<_$SettingsLoadedImpl> get copyWith =>
      __$$SettingsLoadedImplCopyWithImpl<_$SettingsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return settingsLoaded(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return settingsLoaded?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (settingsLoaded != null) {
      return settingsLoaded(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return settingsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return settingsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (settingsLoaded != null) {
      return settingsLoaded(this);
    }
    return orElse();
  }
}

abstract class _SettingsLoaded implements ArtistAgendaSettingsEvent {
  const factory _SettingsLoaded(final AgendaSettings settings) =
      _$SettingsLoadedImpl;

  AgendaSettings get settings;
  @JsonKey(ignore: true)
  _$$SettingsLoadedImplCopyWith<_$SettingsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnavailableTimesLoadedImplCopyWith<$Res> {
  factory _$$UnavailableTimesLoadedImplCopyWith(
          _$UnavailableTimesLoadedImpl value,
          $Res Function(_$UnavailableTimesLoadedImpl) then) =
      __$$UnavailableTimesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UnavailableTimeBlock> unavailableTimes});
}

/// @nodoc
class __$$UnavailableTimesLoadedImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsEventCopyWithImpl<$Res,
        _$UnavailableTimesLoadedImpl>
    implements _$$UnavailableTimesLoadedImplCopyWith<$Res> {
  __$$UnavailableTimesLoadedImplCopyWithImpl(
      _$UnavailableTimesLoadedImpl _value,
      $Res Function(_$UnavailableTimesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unavailableTimes = null,
  }) {
    return _then(_$UnavailableTimesLoadedImpl(
      null == unavailableTimes
          ? _value._unavailableTimes
          : unavailableTimes // ignore: cast_nullable_to_non_nullable
              as List<UnavailableTimeBlock>,
    ));
  }
}

/// @nodoc

class _$UnavailableTimesLoadedImpl implements _UnavailableTimesLoaded {
  const _$UnavailableTimesLoadedImpl(
      final List<UnavailableTimeBlock> unavailableTimes)
      : _unavailableTimes = unavailableTimes;

  final List<UnavailableTimeBlock> _unavailableTimes;
  @override
  List<UnavailableTimeBlock> get unavailableTimes {
    if (_unavailableTimes is EqualUnmodifiableListView)
      return _unavailableTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unavailableTimes);
  }

  @override
  String toString() {
    return 'ArtistAgendaSettingsEvent.unavailableTimesLoaded(unavailableTimes: $unavailableTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnavailableTimesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._unavailableTimes, _unavailableTimes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_unavailableTimes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnavailableTimesLoadedImplCopyWith<_$UnavailableTimesLoadedImpl>
      get copyWith => __$$UnavailableTimesLoadedImplCopyWithImpl<
          _$UnavailableTimesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return unavailableTimesLoaded(unavailableTimes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return unavailableTimesLoaded?.call(unavailableTimes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unavailableTimesLoaded != null) {
      return unavailableTimesLoaded(unavailableTimes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return unavailableTimesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return unavailableTimesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unavailableTimesLoaded != null) {
      return unavailableTimesLoaded(this);
    }
    return orElse();
  }
}

abstract class _UnavailableTimesLoaded implements ArtistAgendaSettingsEvent {
  const factory _UnavailableTimesLoaded(
          final List<UnavailableTimeBlock> unavailableTimes) =
      _$UnavailableTimesLoadedImpl;

  List<UnavailableTimeBlock> get unavailableTimes;
  @JsonKey(ignore: true)
  _$$UnavailableTimesLoadedImplCopyWith<_$UnavailableTimesLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$ArtistAgendaSettingsEventCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ArtistAgendaSettingsEvent.error(message: $message)';
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
    required TResult Function() started,
    required TResult Function(String agendaId) loadSettings,
    required TResult Function(String agendaId) loadUnavailableTimes,
    required TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)
        updateWorkingHours,
    required TResult Function(String agendaId, bool isPublic, bool isOpen)
        updateAgendaSettings,
    required TResult Function(String agendaId, DateTime startDate,
            DateTime endDate, String? reason)
        addUnavailableTime,
    required TResult Function(String agendaId, String unavailableTimeId)
        deleteUnavailableTime,
    required TResult Function(AgendaSettings settings) settingsLoaded,
    required TResult Function(List<UnavailableTimeBlock> unavailableTimes)
        unavailableTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String agendaId)? loadSettings,
    TResult? Function(String agendaId)? loadUnavailableTimes,
    TResult? Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult? Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult? Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult? Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult? Function(AgendaSettings settings)? settingsLoaded,
    TResult? Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String agendaId)? loadSettings,
    TResult Function(String agendaId)? loadUnavailableTimes,
    TResult Function(String agendaId, String workingHoursStart,
            String workingHoursEnd, List<String> workingDays)?
        updateWorkingHours,
    TResult Function(String agendaId, bool isPublic, bool isOpen)?
        updateAgendaSettings,
    TResult Function(String agendaId, DateTime startDate, DateTime endDate,
            String? reason)?
        addUnavailableTime,
    TResult Function(String agendaId, String unavailableTimeId)?
        deleteUnavailableTime,
    TResult Function(AgendaSettings settings)? settingsLoaded,
    TResult Function(List<UnavailableTimeBlock> unavailableTimes)?
        unavailableTimesLoaded,
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
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSettings value) loadSettings,
    required TResult Function(_LoadUnavailableTimes value) loadUnavailableTimes,
    required TResult Function(_UpdateWorkingHours value) updateWorkingHours,
    required TResult Function(_UpdateAgendaSettings value) updateAgendaSettings,
    required TResult Function(_AddUnavailableTime value) addUnavailableTime,
    required TResult Function(_DeleteUnavailableTime value)
        deleteUnavailableTime,
    required TResult Function(_SettingsLoaded value) settingsLoaded,
    required TResult Function(_UnavailableTimesLoaded value)
        unavailableTimesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSettings value)? loadSettings,
    TResult? Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult? Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult? Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult? Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult? Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult? Function(_SettingsLoaded value)? settingsLoaded,
    TResult? Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSettings value)? loadSettings,
    TResult Function(_LoadUnavailableTimes value)? loadUnavailableTimes,
    TResult Function(_UpdateWorkingHours value)? updateWorkingHours,
    TResult Function(_UpdateAgendaSettings value)? updateAgendaSettings,
    TResult Function(_AddUnavailableTime value)? addUnavailableTime,
    TResult Function(_DeleteUnavailableTime value)? deleteUnavailableTime,
    TResult Function(_SettingsLoaded value)? settingsLoaded,
    TResult Function(_UnavailableTimesLoaded value)? unavailableTimesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ArtistAgendaSettingsEvent {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistAgendaSettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistAgendaSettingsStateInitial value) initial,
    required TResult Function(ArtistAgendaSettingsStateLoading value) loading,
    required TResult Function(ArtistAgendaSettingsStateLoaded value) loaded,
    required TResult Function(ArtistAgendaSettingsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistAgendaSettingsStateInitial value)? initial,
    TResult? Function(ArtistAgendaSettingsStateLoading value)? loading,
    TResult? Function(ArtistAgendaSettingsStateLoaded value)? loaded,
    TResult? Function(ArtistAgendaSettingsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistAgendaSettingsStateInitial value)? initial,
    TResult Function(ArtistAgendaSettingsStateLoading value)? loading,
    TResult Function(ArtistAgendaSettingsStateLoaded value)? loaded,
    TResult Function(ArtistAgendaSettingsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistAgendaSettingsStateCopyWith<$Res> {
  factory $ArtistAgendaSettingsStateCopyWith(ArtistAgendaSettingsState value,
          $Res Function(ArtistAgendaSettingsState) then) =
      _$ArtistAgendaSettingsStateCopyWithImpl<$Res, ArtistAgendaSettingsState>;
}

/// @nodoc
class _$ArtistAgendaSettingsStateCopyWithImpl<$Res,
        $Val extends ArtistAgendaSettingsState>
    implements $ArtistAgendaSettingsStateCopyWith<$Res> {
  _$ArtistAgendaSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ArtistAgendaSettingsStateInitialImplCopyWith<$Res> {
  factory _$$ArtistAgendaSettingsStateInitialImplCopyWith(
          _$ArtistAgendaSettingsStateInitialImpl value,
          $Res Function(_$ArtistAgendaSettingsStateInitialImpl) then) =
      __$$ArtistAgendaSettingsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArtistAgendaSettingsStateInitialImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsStateCopyWithImpl<$Res,
        _$ArtistAgendaSettingsStateInitialImpl>
    implements _$$ArtistAgendaSettingsStateInitialImplCopyWith<$Res> {
  __$$ArtistAgendaSettingsStateInitialImplCopyWithImpl(
      _$ArtistAgendaSettingsStateInitialImpl _value,
      $Res Function(_$ArtistAgendaSettingsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArtistAgendaSettingsStateInitialImpl
    implements ArtistAgendaSettingsStateInitial {
  const _$ArtistAgendaSettingsStateInitialImpl();

  @override
  String toString() {
    return 'ArtistAgendaSettingsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAgendaSettingsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)
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
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)?
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
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)?
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
    required TResult Function(ArtistAgendaSettingsStateInitial value) initial,
    required TResult Function(ArtistAgendaSettingsStateLoading value) loading,
    required TResult Function(ArtistAgendaSettingsStateLoaded value) loaded,
    required TResult Function(ArtistAgendaSettingsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistAgendaSettingsStateInitial value)? initial,
    TResult? Function(ArtistAgendaSettingsStateLoading value)? loading,
    TResult? Function(ArtistAgendaSettingsStateLoaded value)? loaded,
    TResult? Function(ArtistAgendaSettingsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistAgendaSettingsStateInitial value)? initial,
    TResult Function(ArtistAgendaSettingsStateLoading value)? loading,
    TResult Function(ArtistAgendaSettingsStateLoaded value)? loaded,
    TResult Function(ArtistAgendaSettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ArtistAgendaSettingsStateInitial
    implements ArtistAgendaSettingsState {
  const factory ArtistAgendaSettingsStateInitial() =
      _$ArtistAgendaSettingsStateInitialImpl;
}

/// @nodoc
abstract class _$$ArtistAgendaSettingsStateLoadingImplCopyWith<$Res> {
  factory _$$ArtistAgendaSettingsStateLoadingImplCopyWith(
          _$ArtistAgendaSettingsStateLoadingImpl value,
          $Res Function(_$ArtistAgendaSettingsStateLoadingImpl) then) =
      __$$ArtistAgendaSettingsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArtistAgendaSettingsStateLoadingImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsStateCopyWithImpl<$Res,
        _$ArtistAgendaSettingsStateLoadingImpl>
    implements _$$ArtistAgendaSettingsStateLoadingImplCopyWith<$Res> {
  __$$ArtistAgendaSettingsStateLoadingImplCopyWithImpl(
      _$ArtistAgendaSettingsStateLoadingImpl _value,
      $Res Function(_$ArtistAgendaSettingsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArtistAgendaSettingsStateLoadingImpl
    implements ArtistAgendaSettingsStateLoading {
  const _$ArtistAgendaSettingsStateLoadingImpl();

  @override
  String toString() {
    return 'ArtistAgendaSettingsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAgendaSettingsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)
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
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)?
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
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)?
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
    required TResult Function(ArtistAgendaSettingsStateInitial value) initial,
    required TResult Function(ArtistAgendaSettingsStateLoading value) loading,
    required TResult Function(ArtistAgendaSettingsStateLoaded value) loaded,
    required TResult Function(ArtistAgendaSettingsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistAgendaSettingsStateInitial value)? initial,
    TResult? Function(ArtistAgendaSettingsStateLoading value)? loading,
    TResult? Function(ArtistAgendaSettingsStateLoaded value)? loaded,
    TResult? Function(ArtistAgendaSettingsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistAgendaSettingsStateInitial value)? initial,
    TResult Function(ArtistAgendaSettingsStateLoading value)? loading,
    TResult Function(ArtistAgendaSettingsStateLoaded value)? loaded,
    TResult Function(ArtistAgendaSettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ArtistAgendaSettingsStateLoading
    implements ArtistAgendaSettingsState {
  const factory ArtistAgendaSettingsStateLoading() =
      _$ArtistAgendaSettingsStateLoadingImpl;
}

/// @nodoc
abstract class _$$ArtistAgendaSettingsStateLoadedImplCopyWith<$Res> {
  factory _$$ArtistAgendaSettingsStateLoadedImplCopyWith(
          _$ArtistAgendaSettingsStateLoadedImpl value,
          $Res Function(_$ArtistAgendaSettingsStateLoadedImpl) then) =
      __$$ArtistAgendaSettingsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AgendaSettings settings,
      List<UnavailableTimeBlock> unavailableTimes,
      bool isSaving,
      bool isLoadingUnavailableTimes});

  $AgendaSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$ArtistAgendaSettingsStateLoadedImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsStateCopyWithImpl<$Res,
        _$ArtistAgendaSettingsStateLoadedImpl>
    implements _$$ArtistAgendaSettingsStateLoadedImplCopyWith<$Res> {
  __$$ArtistAgendaSettingsStateLoadedImplCopyWithImpl(
      _$ArtistAgendaSettingsStateLoadedImpl _value,
      $Res Function(_$ArtistAgendaSettingsStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? unavailableTimes = null,
    Object? isSaving = null,
    Object? isLoadingUnavailableTimes = null,
  }) {
    return _then(_$ArtistAgendaSettingsStateLoadedImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as AgendaSettings,
      unavailableTimes: null == unavailableTimes
          ? _value._unavailableTimes
          : unavailableTimes // ignore: cast_nullable_to_non_nullable
              as List<UnavailableTimeBlock>,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingUnavailableTimes: null == isLoadingUnavailableTimes
          ? _value.isLoadingUnavailableTimes
          : isLoadingUnavailableTimes // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaSettingsCopyWith<$Res> get settings {
    return $AgendaSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc

class _$ArtistAgendaSettingsStateLoadedImpl
    implements ArtistAgendaSettingsStateLoaded {
  const _$ArtistAgendaSettingsStateLoadedImpl(
      {required this.settings,
      required final List<UnavailableTimeBlock> unavailableTimes,
      required this.isSaving,
      required this.isLoadingUnavailableTimes})
      : _unavailableTimes = unavailableTimes;

  @override
  final AgendaSettings settings;
  final List<UnavailableTimeBlock> _unavailableTimes;
  @override
  List<UnavailableTimeBlock> get unavailableTimes {
    if (_unavailableTimes is EqualUnmodifiableListView)
      return _unavailableTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unavailableTimes);
  }

  @override
  final bool isSaving;
  @override
  final bool isLoadingUnavailableTimes;

  @override
  String toString() {
    return 'ArtistAgendaSettingsState.loaded(settings: $settings, unavailableTimes: $unavailableTimes, isSaving: $isSaving, isLoadingUnavailableTimes: $isLoadingUnavailableTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAgendaSettingsStateLoadedImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            const DeepCollectionEquality()
                .equals(other._unavailableTimes, _unavailableTimes) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isLoadingUnavailableTimes,
                    isLoadingUnavailableTimes) ||
                other.isLoadingUnavailableTimes == isLoadingUnavailableTimes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      settings,
      const DeepCollectionEquality().hash(_unavailableTimes),
      isSaving,
      isLoadingUnavailableTimes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistAgendaSettingsStateLoadedImplCopyWith<
          _$ArtistAgendaSettingsStateLoadedImpl>
      get copyWith => __$$ArtistAgendaSettingsStateLoadedImplCopyWithImpl<
          _$ArtistAgendaSettingsStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
        settings, unavailableTimes, isSaving, isLoadingUnavailableTimes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        settings, unavailableTimes, isSaving, isLoadingUnavailableTimes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          settings, unavailableTimes, isSaving, isLoadingUnavailableTimes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistAgendaSettingsStateInitial value) initial,
    required TResult Function(ArtistAgendaSettingsStateLoading value) loading,
    required TResult Function(ArtistAgendaSettingsStateLoaded value) loaded,
    required TResult Function(ArtistAgendaSettingsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistAgendaSettingsStateInitial value)? initial,
    TResult? Function(ArtistAgendaSettingsStateLoading value)? loading,
    TResult? Function(ArtistAgendaSettingsStateLoaded value)? loaded,
    TResult? Function(ArtistAgendaSettingsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistAgendaSettingsStateInitial value)? initial,
    TResult Function(ArtistAgendaSettingsStateLoading value)? loading,
    TResult Function(ArtistAgendaSettingsStateLoaded value)? loaded,
    TResult Function(ArtistAgendaSettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ArtistAgendaSettingsStateLoaded
    implements ArtistAgendaSettingsState {
  const factory ArtistAgendaSettingsStateLoaded(
          {required final AgendaSettings settings,
          required final List<UnavailableTimeBlock> unavailableTimes,
          required final bool isSaving,
          required final bool isLoadingUnavailableTimes}) =
      _$ArtistAgendaSettingsStateLoadedImpl;

  AgendaSettings get settings;
  List<UnavailableTimeBlock> get unavailableTimes;
  bool get isSaving;
  bool get isLoadingUnavailableTimes;
  @JsonKey(ignore: true)
  _$$ArtistAgendaSettingsStateLoadedImplCopyWith<
          _$ArtistAgendaSettingsStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistAgendaSettingsStateErrorImplCopyWith<$Res> {
  factory _$$ArtistAgendaSettingsStateErrorImplCopyWith(
          _$ArtistAgendaSettingsStateErrorImpl value,
          $Res Function(_$ArtistAgendaSettingsStateErrorImpl) then) =
      __$$ArtistAgendaSettingsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ArtistAgendaSettingsStateErrorImplCopyWithImpl<$Res>
    extends _$ArtistAgendaSettingsStateCopyWithImpl<$Res,
        _$ArtistAgendaSettingsStateErrorImpl>
    implements _$$ArtistAgendaSettingsStateErrorImplCopyWith<$Res> {
  __$$ArtistAgendaSettingsStateErrorImplCopyWithImpl(
      _$ArtistAgendaSettingsStateErrorImpl _value,
      $Res Function(_$ArtistAgendaSettingsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ArtistAgendaSettingsStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArtistAgendaSettingsStateErrorImpl
    implements ArtistAgendaSettingsStateError {
  const _$ArtistAgendaSettingsStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ArtistAgendaSettingsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAgendaSettingsStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistAgendaSettingsStateErrorImplCopyWith<
          _$ArtistAgendaSettingsStateErrorImpl>
      get copyWith => __$$ArtistAgendaSettingsStateErrorImplCopyWithImpl<
          _$ArtistAgendaSettingsStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)
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
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)?
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
            AgendaSettings settings,
            List<UnavailableTimeBlock> unavailableTimes,
            bool isSaving,
            bool isLoadingUnavailableTimes)?
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
    required TResult Function(ArtistAgendaSettingsStateInitial value) initial,
    required TResult Function(ArtistAgendaSettingsStateLoading value) loading,
    required TResult Function(ArtistAgendaSettingsStateLoaded value) loaded,
    required TResult Function(ArtistAgendaSettingsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistAgendaSettingsStateInitial value)? initial,
    TResult? Function(ArtistAgendaSettingsStateLoading value)? loading,
    TResult? Function(ArtistAgendaSettingsStateLoaded value)? loaded,
    TResult? Function(ArtistAgendaSettingsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistAgendaSettingsStateInitial value)? initial,
    TResult Function(ArtistAgendaSettingsStateLoading value)? loading,
    TResult Function(ArtistAgendaSettingsStateLoaded value)? loaded,
    TResult Function(ArtistAgendaSettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ArtistAgendaSettingsStateError
    implements ArtistAgendaSettingsState {
  const factory ArtistAgendaSettingsStateError(final String message) =
      _$ArtistAgendaSettingsStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ArtistAgendaSettingsStateErrorImplCopyWith<
          _$ArtistAgendaSettingsStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
