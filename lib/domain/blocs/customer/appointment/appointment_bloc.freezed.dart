// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventCopyWith<$Res> {
  factory $AppointmentEventCopyWith(
          AppointmentEvent value, $Res Function(AppointmentEvent) then) =
      _$AppointmentEventCopyWithImpl<$Res, AppointmentEvent>;
}

/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res, $Val extends AppointmentEvent>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._value, this._then);

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
    extends _$AppointmentEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AppointmentEvent.started()';
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
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
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
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppointmentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadAppointmentsImplCopyWith<$Res> {
  factory _$$LoadAppointmentsImplCopyWith(_$LoadAppointmentsImpl value,
          $Res Function(_$LoadAppointmentsImpl) then) =
      __$$LoadAppointmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAppointmentsImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$LoadAppointmentsImpl>
    implements _$$LoadAppointmentsImplCopyWith<$Res> {
  __$$LoadAppointmentsImplCopyWithImpl(_$LoadAppointmentsImpl _value,
      $Res Function(_$LoadAppointmentsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadAppointmentsImpl implements _LoadAppointments {
  const _$LoadAppointmentsImpl();

  @override
  String toString() {
    return 'AppointmentEvent.loadAppointments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAppointmentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) {
    return loadAppointments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) {
    return loadAppointments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
    required TResult orElse(),
  }) {
    if (loadAppointments != null) {
      return loadAppointments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) {
    return loadAppointments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) {
    return loadAppointments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) {
    if (loadAppointments != null) {
      return loadAppointments(this);
    }
    return orElse();
  }
}

abstract class _LoadAppointments implements AppointmentEvent {
  const factory _LoadAppointments() = _$LoadAppointmentsImpl;
}

/// @nodoc
abstract class _$$GetAppointmentByIdImplCopyWith<$Res> {
  factory _$$GetAppointmentByIdImplCopyWith(_$GetAppointmentByIdImpl value,
          $Res Function(_$GetAppointmentByIdImpl) then) =
      __$$GetAppointmentByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetAppointmentByIdImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$GetAppointmentByIdImpl>
    implements _$$GetAppointmentByIdImplCopyWith<$Res> {
  __$$GetAppointmentByIdImplCopyWithImpl(_$GetAppointmentByIdImpl _value,
      $Res Function(_$GetAppointmentByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetAppointmentByIdImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAppointmentByIdImpl implements _GetAppointmentById {
  const _$GetAppointmentByIdImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AppointmentEvent.getAppointmentById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAppointmentByIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAppointmentByIdImplCopyWith<_$GetAppointmentByIdImpl> get copyWith =>
      __$$GetAppointmentByIdImplCopyWithImpl<_$GetAppointmentByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) {
    return getAppointmentById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) {
    return getAppointmentById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
    required TResult orElse(),
  }) {
    if (getAppointmentById != null) {
      return getAppointmentById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) {
    return getAppointmentById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) {
    return getAppointmentById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) {
    if (getAppointmentById != null) {
      return getAppointmentById(this);
    }
    return orElse();
  }
}

abstract class _GetAppointmentById implements AppointmentEvent {
  const factory _GetAppointmentById(final String id) = _$GetAppointmentByIdImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetAppointmentByIdImplCopyWith<_$GetAppointmentByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAsReadImplCopyWith<$Res> {
  factory _$$MarkAsReadImplCopyWith(
          _$MarkAsReadImpl value, $Res Function(_$MarkAsReadImpl) then) =
      __$$MarkAsReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String appointmentId});
}

/// @nodoc
class __$$MarkAsReadImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$MarkAsReadImpl>
    implements _$$MarkAsReadImplCopyWith<$Res> {
  __$$MarkAsReadImplCopyWithImpl(
      _$MarkAsReadImpl _value, $Res Function(_$MarkAsReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
  }) {
    return _then(_$MarkAsReadImpl(
      null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkAsReadImpl implements _MarkAsRead {
  const _$MarkAsReadImpl(this.appointmentId);

  @override
  final String appointmentId;

  @override
  String toString() {
    return 'AppointmentEvent.markAsRead(appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsReadImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      __$$MarkAsReadImplCopyWithImpl<_$MarkAsReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) {
    return markAsRead(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) {
    return markAsRead?.call(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(appointmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAsRead implements AppointmentEvent {
  const factory _MarkAsRead(final String appointmentId) = _$MarkAsReadImpl;

  String get appointmentId;
  @JsonKey(ignore: true)
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshAppointmentDetailImplCopyWith<$Res> {
  factory _$$RefreshAppointmentDetailImplCopyWith(
          _$RefreshAppointmentDetailImpl value,
          $Res Function(_$RefreshAppointmentDetailImpl) then) =
      __$$RefreshAppointmentDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RefreshAppointmentDetailImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$RefreshAppointmentDetailImpl>
    implements _$$RefreshAppointmentDetailImplCopyWith<$Res> {
  __$$RefreshAppointmentDetailImplCopyWithImpl(
      _$RefreshAppointmentDetailImpl _value,
      $Res Function(_$RefreshAppointmentDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RefreshAppointmentDetailImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RefreshAppointmentDetailImpl implements _RefreshAppointmentDetail {
  const _$RefreshAppointmentDetailImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AppointmentEvent.refreshAppointmentDetail(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshAppointmentDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshAppointmentDetailImplCopyWith<_$RefreshAppointmentDetailImpl>
      get copyWith => __$$RefreshAppointmentDetailImplCopyWithImpl<
          _$RefreshAppointmentDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) {
    return refreshAppointmentDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) {
    return refreshAppointmentDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
    required TResult orElse(),
  }) {
    if (refreshAppointmentDetail != null) {
      return refreshAppointmentDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) {
    return refreshAppointmentDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) {
    return refreshAppointmentDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) {
    if (refreshAppointmentDetail != null) {
      return refreshAppointmentDetail(this);
    }
    return orElse();
  }
}

abstract class _RefreshAppointmentDetail implements AppointmentEvent {
  const factory _RefreshAppointmentDetail(final String id) =
      _$RefreshAppointmentDetailImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$RefreshAppointmentDetailImplCopyWith<_$RefreshAppointmentDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmAppointmentImplCopyWith<$Res> {
  factory _$$ConfirmAppointmentImplCopyWith(_$ConfirmAppointmentImpl value,
          $Res Function(_$ConfirmAppointmentImpl) then) =
      __$$ConfirmAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String appointmentId, String agendaId});
}

/// @nodoc
class __$$ConfirmAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$ConfirmAppointmentImpl>
    implements _$$ConfirmAppointmentImplCopyWith<$Res> {
  __$$ConfirmAppointmentImplCopyWithImpl(_$ConfirmAppointmentImpl _value,
      $Res Function(_$ConfirmAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
    Object? agendaId = null,
  }) {
    return _then(_$ConfirmAppointmentImpl(
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmAppointmentImpl implements _ConfirmAppointment {
  const _$ConfirmAppointmentImpl(
      {required this.appointmentId, required this.agendaId});

  @override
  final String appointmentId;
  @override
  final String agendaId;

  @override
  String toString() {
    return 'AppointmentEvent.confirmAppointment(appointmentId: $appointmentId, agendaId: $agendaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmAppointmentImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentId, agendaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmAppointmentImplCopyWith<_$ConfirmAppointmentImpl> get copyWith =>
      __$$ConfirmAppointmentImplCopyWithImpl<_$ConfirmAppointmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) {
    return confirmAppointment(appointmentId, agendaId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) {
    return confirmAppointment?.call(appointmentId, agendaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
    required TResult orElse(),
  }) {
    if (confirmAppointment != null) {
      return confirmAppointment(appointmentId, agendaId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) {
    return confirmAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) {
    return confirmAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) {
    if (confirmAppointment != null) {
      return confirmAppointment(this);
    }
    return orElse();
  }
}

abstract class _ConfirmAppointment implements AppointmentEvent {
  const factory _ConfirmAppointment(
      {required final String appointmentId,
      required final String agendaId}) = _$ConfirmAppointmentImpl;

  String get appointmentId;
  String get agendaId;
  @JsonKey(ignore: true)
  _$$ConfirmAppointmentImplCopyWith<_$ConfirmAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelAppointmentImplCopyWith<$Res> {
  factory _$$CancelAppointmentImplCopyWith(_$CancelAppointmentImpl value,
          $Res Function(_$CancelAppointmentImpl) then) =
      __$$CancelAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String appointmentId, String reason});
}

/// @nodoc
class __$$CancelAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$CancelAppointmentImpl>
    implements _$$CancelAppointmentImplCopyWith<$Res> {
  __$$CancelAppointmentImplCopyWithImpl(_$CancelAppointmentImpl _value,
      $Res Function(_$CancelAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
    Object? reason = null,
  }) {
    return _then(_$CancelAppointmentImpl(
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelAppointmentImpl implements _CancelAppointment {
  const _$CancelAppointmentImpl(
      {required this.appointmentId, required this.reason});

  @override
  final String appointmentId;
  @override
  final String reason;

  @override
  String toString() {
    return 'AppointmentEvent.cancelAppointment(appointmentId: $appointmentId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelAppointmentImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentId, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelAppointmentImplCopyWith<_$CancelAppointmentImpl> get copyWith =>
      __$$CancelAppointmentImplCopyWithImpl<_$CancelAppointmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) {
    return cancelAppointment(appointmentId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) {
    return cancelAppointment?.call(appointmentId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
    required TResult orElse(),
  }) {
    if (cancelAppointment != null) {
      return cancelAppointment(appointmentId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) {
    return cancelAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) {
    return cancelAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) {
    if (cancelAppointment != null) {
      return cancelAppointment(this);
    }
    return orElse();
  }
}

abstract class _CancelAppointment implements AppointmentEvent {
  const factory _CancelAppointment(
      {required final String appointmentId,
      required final String reason}) = _$CancelAppointmentImpl;

  String get appointmentId;
  String get reason;
  @JsonKey(ignore: true)
  _$$CancelAppointmentImplCopyWith<_$CancelAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectAppointmentImplCopyWith<$Res> {
  factory _$$RejectAppointmentImplCopyWith(_$RejectAppointmentImpl value,
          $Res Function(_$RejectAppointmentImpl) then) =
      __$$RejectAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String appointmentId, String agendaId, String? reason});
}

/// @nodoc
class __$$RejectAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$RejectAppointmentImpl>
    implements _$$RejectAppointmentImplCopyWith<$Res> {
  __$$RejectAppointmentImplCopyWithImpl(_$RejectAppointmentImpl _value,
      $Res Function(_$RejectAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
    Object? agendaId = null,
    Object? reason = freezed,
  }) {
    return _then(_$RejectAppointmentImpl(
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RejectAppointmentImpl implements _RejectAppointment {
  const _$RejectAppointmentImpl(
      {required this.appointmentId, required this.agendaId, this.reason});

  @override
  final String appointmentId;
  @override
  final String agendaId;
  @override
  final String? reason;

  @override
  String toString() {
    return 'AppointmentEvent.rejectAppointment(appointmentId: $appointmentId, agendaId: $agendaId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectAppointmentImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentId, agendaId, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectAppointmentImplCopyWith<_$RejectAppointmentImpl> get copyWith =>
      __$$RejectAppointmentImplCopyWithImpl<_$RejectAppointmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) {
    return rejectAppointment(appointmentId, agendaId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) {
    return rejectAppointment?.call(appointmentId, agendaId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
    required TResult orElse(),
  }) {
    if (rejectAppointment != null) {
      return rejectAppointment(appointmentId, agendaId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) {
    return rejectAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) {
    return rejectAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) {
    if (rejectAppointment != null) {
      return rejectAppointment(this);
    }
    return orElse();
  }
}

abstract class _RejectAppointment implements AppointmentEvent {
  const factory _RejectAppointment(
      {required final String appointmentId,
      required final String agendaId,
      final String? reason}) = _$RejectAppointmentImpl;

  String get appointmentId;
  String get agendaId;
  String? get reason;
  @JsonKey(ignore: true)
  _$$RejectAppointmentImplCopyWith<_$RejectAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewAppointmentImplCopyWith<$Res> {
  factory _$$ReviewAppointmentImplCopyWith(_$ReviewAppointmentImpl value,
          $Res Function(_$ReviewAppointmentImpl) then) =
      __$$ReviewAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String appointmentId,
      String agendaId,
      int rating,
      String comment,
      bool isAnonymous});
}

/// @nodoc
class __$$ReviewAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$ReviewAppointmentImpl>
    implements _$$ReviewAppointmentImplCopyWith<$Res> {
  __$$ReviewAppointmentImplCopyWithImpl(_$ReviewAppointmentImpl _value,
      $Res Function(_$ReviewAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
    Object? agendaId = null,
    Object? rating = null,
    Object? comment = null,
    Object? isAnonymous = null,
  }) {
    return _then(_$ReviewAppointmentImpl(
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
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

class _$ReviewAppointmentImpl implements _ReviewAppointment {
  const _$ReviewAppointmentImpl(
      {required this.appointmentId,
      required this.agendaId,
      required this.rating,
      required this.comment,
      this.isAnonymous = false});

  @override
  final String appointmentId;
  @override
  final String agendaId;
  @override
  final int rating;
  @override
  final String comment;
  @override
  @JsonKey()
  final bool isAnonymous;

  @override
  String toString() {
    return 'AppointmentEvent.reviewAppointment(appointmentId: $appointmentId, agendaId: $agendaId, rating: $rating, comment: $comment, isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewAppointmentImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, appointmentId, agendaId, rating, comment, isAnonymous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewAppointmentImplCopyWith<_$ReviewAppointmentImpl> get copyWith =>
      __$$ReviewAppointmentImplCopyWithImpl<_$ReviewAppointmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) {
    return reviewAppointment(
        appointmentId, agendaId, rating, comment, isAnonymous);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) {
    return reviewAppointment?.call(
        appointmentId, agendaId, rating, comment, isAnonymous);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
    required TResult orElse(),
  }) {
    if (reviewAppointment != null) {
      return reviewAppointment(
          appointmentId, agendaId, rating, comment, isAnonymous);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) {
    return reviewAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) {
    return reviewAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) {
    if (reviewAppointment != null) {
      return reviewAppointment(this);
    }
    return orElse();
  }
}

abstract class _ReviewAppointment implements AppointmentEvent {
  const factory _ReviewAppointment(
      {required final String appointmentId,
      required final String agendaId,
      required final int rating,
      required final String comment,
      final bool isAnonymous}) = _$ReviewAppointmentImpl;

  String get appointmentId;
  String get agendaId;
  int get rating;
  String get comment;
  bool get isAnonymous;
  @JsonKey(ignore: true)
  _$$ReviewAppointmentImplCopyWith<_$ReviewAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppealAppointmentImplCopyWith<$Res> {
  factory _$$AppealAppointmentImplCopyWith(_$AppealAppointmentImpl value,
          $Res Function(_$AppealAppointmentImpl) then) =
      __$$AppealAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String appointmentId, String agendaId, String reason});
}

/// @nodoc
class __$$AppealAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$AppealAppointmentImpl>
    implements _$$AppealAppointmentImplCopyWith<$Res> {
  __$$AppealAppointmentImplCopyWithImpl(_$AppealAppointmentImpl _value,
      $Res Function(_$AppealAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
    Object? agendaId = null,
    Object? reason = null,
  }) {
    return _then(_$AppealAppointmentImpl(
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      agendaId: null == agendaId
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppealAppointmentImpl implements _AppealAppointment {
  const _$AppealAppointmentImpl(
      {required this.appointmentId,
      required this.agendaId,
      required this.reason});

  @override
  final String appointmentId;
  @override
  final String agendaId;
  @override
  final String reason;

  @override
  String toString() {
    return 'AppointmentEvent.appealAppointment(appointmentId: $appointmentId, agendaId: $agendaId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppealAppointmentImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.agendaId, agendaId) ||
                other.agendaId == agendaId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentId, agendaId, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppealAppointmentImplCopyWith<_$AppealAppointmentImpl> get copyWith =>
      __$$AppealAppointmentImplCopyWithImpl<_$AppealAppointmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAppointments,
    required TResult Function(String id) getAppointmentById,
    required TResult Function(String appointmentId) markAsRead,
    required TResult Function(String id) refreshAppointmentDetail,
    required TResult Function(String appointmentId, String agendaId)
        confirmAppointment,
    required TResult Function(String appointmentId, String reason)
        cancelAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String? reason)
        rejectAppointment,
    required TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)
        reviewAppointment,
    required TResult Function(
            String appointmentId, String agendaId, String reason)
        appealAppointment,
  }) {
    return appealAppointment(appointmentId, agendaId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAppointments,
    TResult? Function(String id)? getAppointmentById,
    TResult? Function(String appointmentId)? markAsRead,
    TResult? Function(String id)? refreshAppointmentDetail,
    TResult? Function(String appointmentId, String agendaId)?
        confirmAppointment,
    TResult? Function(String appointmentId, String reason)? cancelAppointment,
    TResult? Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult? Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult? Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
  }) {
    return appealAppointment?.call(appointmentId, agendaId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAppointments,
    TResult Function(String id)? getAppointmentById,
    TResult Function(String appointmentId)? markAsRead,
    TResult Function(String id)? refreshAppointmentDetail,
    TResult Function(String appointmentId, String agendaId)? confirmAppointment,
    TResult Function(String appointmentId, String reason)? cancelAppointment,
    TResult Function(String appointmentId, String agendaId, String? reason)?
        rejectAppointment,
    TResult Function(String appointmentId, String agendaId, int rating,
            String comment, bool isAnonymous)?
        reviewAppointment,
    TResult Function(String appointmentId, String agendaId, String reason)?
        appealAppointment,
    required TResult orElse(),
  }) {
    if (appealAppointment != null) {
      return appealAppointment(appointmentId, agendaId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAppointments value) loadAppointments,
    required TResult Function(_GetAppointmentById value) getAppointmentById,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_RefreshAppointmentDetail value)
        refreshAppointmentDetail,
    required TResult Function(_ConfirmAppointment value) confirmAppointment,
    required TResult Function(_CancelAppointment value) cancelAppointment,
    required TResult Function(_RejectAppointment value) rejectAppointment,
    required TResult Function(_ReviewAppointment value) reviewAppointment,
    required TResult Function(_AppealAppointment value) appealAppointment,
  }) {
    return appealAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAppointments value)? loadAppointments,
    TResult? Function(_GetAppointmentById value)? getAppointmentById,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_RefreshAppointmentDetail value)?
        refreshAppointmentDetail,
    TResult? Function(_ConfirmAppointment value)? confirmAppointment,
    TResult? Function(_CancelAppointment value)? cancelAppointment,
    TResult? Function(_RejectAppointment value)? rejectAppointment,
    TResult? Function(_ReviewAppointment value)? reviewAppointment,
    TResult? Function(_AppealAppointment value)? appealAppointment,
  }) {
    return appealAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAppointments value)? loadAppointments,
    TResult Function(_GetAppointmentById value)? getAppointmentById,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_RefreshAppointmentDetail value)? refreshAppointmentDetail,
    TResult Function(_ConfirmAppointment value)? confirmAppointment,
    TResult Function(_CancelAppointment value)? cancelAppointment,
    TResult Function(_RejectAppointment value)? rejectAppointment,
    TResult Function(_ReviewAppointment value)? reviewAppointment,
    TResult Function(_AppealAppointment value)? appealAppointment,
    required TResult orElse(),
  }) {
    if (appealAppointment != null) {
      return appealAppointment(this);
    }
    return orElse();
  }
}

abstract class _AppealAppointment implements AppointmentEvent {
  const factory _AppealAppointment(
      {required final String appointmentId,
      required final String agendaId,
      required final String reason}) = _$AppealAppointmentImpl;

  String get appointmentId;
  String get agendaId;
  String get reason;
  @JsonKey(ignore: true)
  _$$AppealAppointmentImplCopyWith<_$AppealAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppointmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(String message) actionFailed,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function(String message)? actionFailed,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(String message)? actionFailed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_ActionFailed value)? actionFailed,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res, AppointmentState>;
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res, $Val extends AppointmentState>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

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
    extends _$AppointmentStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AppointmentState.initial()';
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
    required TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(String message) actionFailed,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function(String message)? actionFailed,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(String message)? actionFailed,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
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
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_ActionFailed value)? actionFailed,
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
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppointmentState {
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
    extends _$AppointmentStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AppointmentState.loading()';
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
    required TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(String message) actionFailed,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function(String message)? actionFailed,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(String message)? actionFailed,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
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
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_ActionFailed value)? actionFailed,
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
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AppointmentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CustomerAppointmentsView appointmentsView,
      AppointmentDetailDto? selectedAppointment});

  $CustomerAppointmentsViewCopyWith<$Res> get appointmentsView;
  $AppointmentDetailDtoCopyWith<$Res>? get selectedAppointment;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentsView = null,
    Object? selectedAppointment = freezed,
  }) {
    return _then(_$LoadedImpl(
      appointmentsView: null == appointmentsView
          ? _value.appointmentsView
          : appointmentsView // ignore: cast_nullable_to_non_nullable
              as CustomerAppointmentsView,
      selectedAppointment: freezed == selectedAppointment
          ? _value.selectedAppointment
          : selectedAppointment // ignore: cast_nullable_to_non_nullable
              as AppointmentDetailDto?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerAppointmentsViewCopyWith<$Res> get appointmentsView {
    return $CustomerAppointmentsViewCopyWith<$Res>(_value.appointmentsView,
        (value) {
      return _then(_value.copyWith(appointmentsView: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentDetailDtoCopyWith<$Res>? get selectedAppointment {
    if (_value.selectedAppointment == null) {
      return null;
    }

    return $AppointmentDetailDtoCopyWith<$Res>(_value.selectedAppointment!,
        (value) {
      return _then(_value.copyWith(selectedAppointment: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.appointmentsView, this.selectedAppointment});

  @override
  final CustomerAppointmentsView appointmentsView;
  @override
  final AppointmentDetailDto? selectedAppointment;

  @override
  String toString() {
    return 'AppointmentState.loaded(appointmentsView: $appointmentsView, selectedAppointment: $selectedAppointment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.appointmentsView, appointmentsView) ||
                other.appointmentsView == appointmentsView) &&
            (identical(other.selectedAppointment, selectedAppointment) ||
                other.selectedAppointment == selectedAppointment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appointmentsView, selectedAppointment);

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
    required TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(String message) actionFailed,
    required TResult Function(String message) error,
  }) {
    return loaded(appointmentsView, selectedAppointment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function(String message)? actionFailed,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(appointmentsView, selectedAppointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(String message)? actionFailed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(appointmentsView, selectedAppointment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
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
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_ActionFailed value)? actionFailed,
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
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AppointmentState {
  const factory _Loaded(
      {required final CustomerAppointmentsView appointmentsView,
      final AppointmentDetailDto? selectedAppointment}) = _$LoadedImpl;

  CustomerAppointmentsView get appointmentsView;
  AppointmentDetailDto? get selectedAppointment;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionInProgressImplCopyWith<$Res> {
  factory _$$ActionInProgressImplCopyWith(_$ActionInProgressImpl value,
          $Res Function(_$ActionInProgressImpl) then) =
      __$$ActionInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionInProgressImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$ActionInProgressImpl>
    implements _$$ActionInProgressImplCopyWith<$Res> {
  __$$ActionInProgressImplCopyWithImpl(_$ActionInProgressImpl _value,
      $Res Function(_$ActionInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionInProgressImpl implements _ActionInProgress {
  const _$ActionInProgressImpl();

  @override
  String toString() {
    return 'AppointmentState.actionInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(String message) actionFailed,
    required TResult Function(String message) error,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function(String message)? actionFailed,
    TResult? Function(String message)? error,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(String message)? actionFailed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
    required TResult Function(_Error value) error,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_ActionFailed value)? actionFailed,
    TResult? Function(_Error value)? error,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements AppointmentState {
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$ActionSuccessImplCopyWith<$Res> {
  factory _$$ActionSuccessImplCopyWith(
          _$ActionSuccessImpl value, $Res Function(_$ActionSuccessImpl) then) =
      __$$ActionSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionSuccessImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$ActionSuccessImpl>
    implements _$$ActionSuccessImplCopyWith<$Res> {
  __$$ActionSuccessImplCopyWithImpl(
      _$ActionSuccessImpl _value, $Res Function(_$ActionSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionSuccessImpl implements _ActionSuccess {
  const _$ActionSuccessImpl();

  @override
  String toString() {
    return 'AppointmentState.actionSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(String message) actionFailed,
    required TResult Function(String message) error,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function(String message)? actionFailed,
    TResult? Function(String message)? error,
  }) {
    return actionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(String message)? actionFailed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
    required TResult Function(_Error value) error,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_ActionFailed value)? actionFailed,
    TResult? Function(_Error value)? error,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements AppointmentState {
  const factory _ActionSuccess() = _$ActionSuccessImpl;
}

/// @nodoc
abstract class _$$ActionFailedImplCopyWith<$Res> {
  factory _$$ActionFailedImplCopyWith(
          _$ActionFailedImpl value, $Res Function(_$ActionFailedImpl) then) =
      __$$ActionFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ActionFailedImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$ActionFailedImpl>
    implements _$$ActionFailedImplCopyWith<$Res> {
  __$$ActionFailedImplCopyWithImpl(
      _$ActionFailedImpl _value, $Res Function(_$ActionFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ActionFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActionFailedImpl implements _ActionFailed {
  const _$ActionFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppointmentState.actionFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionFailedImplCopyWith<_$ActionFailedImpl> get copyWith =>
      __$$ActionFailedImplCopyWithImpl<_$ActionFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(String message) actionFailed,
    required TResult Function(String message) error,
  }) {
    return actionFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function(String message)? actionFailed,
    TResult? Function(String message)? error,
  }) {
    return actionFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(String message)? actionFailed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (actionFailed != null) {
      return actionFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
    required TResult Function(_Error value) error,
  }) {
    return actionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_ActionFailed value)? actionFailed,
    TResult? Function(_Error value)? error,
  }) {
    return actionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (actionFailed != null) {
      return actionFailed(this);
    }
    return orElse();
  }
}

abstract class _ActionFailed implements AppointmentState {
  const factory _ActionFailed(final String message) = _$ActionFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ActionFailedImplCopyWith<_$ActionFailedImpl> get copyWith =>
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
    extends _$AppointmentStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'AppointmentState.error(message: $message)';
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
    required TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(String message) actionFailed,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function()? actionSuccess,
    TResult? Function(String message)? actionFailed,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CustomerAppointmentsView appointmentsView,
            AppointmentDetailDto? selectedAppointment)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(String message)? actionFailed,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
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
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_ActionFailed value)? actionFailed,
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
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AppointmentState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
