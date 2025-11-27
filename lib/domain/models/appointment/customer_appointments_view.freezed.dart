// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_appointments_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerAppointmentsView _$CustomerAppointmentsViewFromJson(
    Map<String, dynamic> json) {
  return _CustomerAppointmentsView.fromJson(json);
}

/// @nodoc
mixin _$CustomerAppointmentsView {
  String? get heroAppointmentId => throw _privateConstructorUsedError;
  GroupedAppointments get appointments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerAppointmentsViewCopyWith<CustomerAppointmentsView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAppointmentsViewCopyWith<$Res> {
  factory $CustomerAppointmentsViewCopyWith(CustomerAppointmentsView value,
          $Res Function(CustomerAppointmentsView) then) =
      _$CustomerAppointmentsViewCopyWithImpl<$Res, CustomerAppointmentsView>;
  @useResult
  $Res call({String? heroAppointmentId, GroupedAppointments appointments});

  $GroupedAppointmentsCopyWith<$Res> get appointments;
}

/// @nodoc
class _$CustomerAppointmentsViewCopyWithImpl<$Res,
        $Val extends CustomerAppointmentsView>
    implements $CustomerAppointmentsViewCopyWith<$Res> {
  _$CustomerAppointmentsViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heroAppointmentId = freezed,
    Object? appointments = null,
  }) {
    return _then(_value.copyWith(
      heroAppointmentId: freezed == heroAppointmentId
          ? _value.heroAppointmentId
          : heroAppointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointments: null == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as GroupedAppointments,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupedAppointmentsCopyWith<$Res> get appointments {
    return $GroupedAppointmentsCopyWith<$Res>(_value.appointments, (value) {
      return _then(_value.copyWith(appointments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerAppointmentsViewImplCopyWith<$Res>
    implements $CustomerAppointmentsViewCopyWith<$Res> {
  factory _$$CustomerAppointmentsViewImplCopyWith(
          _$CustomerAppointmentsViewImpl value,
          $Res Function(_$CustomerAppointmentsViewImpl) then) =
      __$$CustomerAppointmentsViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? heroAppointmentId, GroupedAppointments appointments});

  @override
  $GroupedAppointmentsCopyWith<$Res> get appointments;
}

/// @nodoc
class __$$CustomerAppointmentsViewImplCopyWithImpl<$Res>
    extends _$CustomerAppointmentsViewCopyWithImpl<$Res,
        _$CustomerAppointmentsViewImpl>
    implements _$$CustomerAppointmentsViewImplCopyWith<$Res> {
  __$$CustomerAppointmentsViewImplCopyWithImpl(
      _$CustomerAppointmentsViewImpl _value,
      $Res Function(_$CustomerAppointmentsViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heroAppointmentId = freezed,
    Object? appointments = null,
  }) {
    return _then(_$CustomerAppointmentsViewImpl(
      heroAppointmentId: freezed == heroAppointmentId
          ? _value.heroAppointmentId
          : heroAppointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointments: null == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as GroupedAppointments,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CustomerAppointmentsViewImpl extends _CustomerAppointmentsView {
  const _$CustomerAppointmentsViewImpl(
      {this.heroAppointmentId, required this.appointments})
      : super._();

  factory _$CustomerAppointmentsViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerAppointmentsViewImplFromJson(json);

  @override
  final String? heroAppointmentId;
  @override
  final GroupedAppointments appointments;

  @override
  String toString() {
    return 'CustomerAppointmentsView(heroAppointmentId: $heroAppointmentId, appointments: $appointments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAppointmentsViewImpl &&
            (identical(other.heroAppointmentId, heroAppointmentId) ||
                other.heroAppointmentId == heroAppointmentId) &&
            (identical(other.appointments, appointments) ||
                other.appointments == appointments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, heroAppointmentId, appointments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerAppointmentsViewImplCopyWith<_$CustomerAppointmentsViewImpl>
      get copyWith => __$$CustomerAppointmentsViewImplCopyWithImpl<
          _$CustomerAppointmentsViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerAppointmentsViewImplToJson(
      this,
    );
  }
}

abstract class _CustomerAppointmentsView extends CustomerAppointmentsView {
  const factory _CustomerAppointmentsView(
          {final String? heroAppointmentId,
          required final GroupedAppointments appointments}) =
      _$CustomerAppointmentsViewImpl;
  const _CustomerAppointmentsView._() : super._();

  factory _CustomerAppointmentsView.fromJson(Map<String, dynamic> json) =
      _$CustomerAppointmentsViewImpl.fromJson;

  @override
  String? get heroAppointmentId;
  @override
  GroupedAppointments get appointments;
  @override
  @JsonKey(ignore: true)
  _$$CustomerAppointmentsViewImplCopyWith<_$CustomerAppointmentsViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GroupedAppointments _$GroupedAppointmentsFromJson(Map<String, dynamic> json) {
  return _GroupedAppointments.fromJson(json);
}

/// @nodoc
mixin _$GroupedAppointments {
  List<CustomerAppointmentDto> get requiringAction =>
      throw _privateConstructorUsedError;
  List<CustomerAppointmentDto> get today => throw _privateConstructorUsedError;
  List<CustomerAppointmentDto> get thisWeek =>
      throw _privateConstructorUsedError;
  List<CustomerAppointmentDto> get upcoming =>
      throw _privateConstructorUsedError;
  List<CustomerAppointmentDto> get history =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupedAppointmentsCopyWith<GroupedAppointments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupedAppointmentsCopyWith<$Res> {
  factory $GroupedAppointmentsCopyWith(
          GroupedAppointments value, $Res Function(GroupedAppointments) then) =
      _$GroupedAppointmentsCopyWithImpl<$Res, GroupedAppointments>;
  @useResult
  $Res call(
      {List<CustomerAppointmentDto> requiringAction,
      List<CustomerAppointmentDto> today,
      List<CustomerAppointmentDto> thisWeek,
      List<CustomerAppointmentDto> upcoming,
      List<CustomerAppointmentDto> history});
}

/// @nodoc
class _$GroupedAppointmentsCopyWithImpl<$Res, $Val extends GroupedAppointments>
    implements $GroupedAppointmentsCopyWith<$Res> {
  _$GroupedAppointmentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiringAction = null,
    Object? today = null,
    Object? thisWeek = null,
    Object? upcoming = null,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      requiringAction: null == requiringAction
          ? _value.requiringAction
          : requiringAction // ignore: cast_nullable_to_non_nullable
              as List<CustomerAppointmentDto>,
      today: null == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as List<CustomerAppointmentDto>,
      thisWeek: null == thisWeek
          ? _value.thisWeek
          : thisWeek // ignore: cast_nullable_to_non_nullable
              as List<CustomerAppointmentDto>,
      upcoming: null == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as List<CustomerAppointmentDto>,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<CustomerAppointmentDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupedAppointmentsImplCopyWith<$Res>
    implements $GroupedAppointmentsCopyWith<$Res> {
  factory _$$GroupedAppointmentsImplCopyWith(_$GroupedAppointmentsImpl value,
          $Res Function(_$GroupedAppointmentsImpl) then) =
      __$$GroupedAppointmentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CustomerAppointmentDto> requiringAction,
      List<CustomerAppointmentDto> today,
      List<CustomerAppointmentDto> thisWeek,
      List<CustomerAppointmentDto> upcoming,
      List<CustomerAppointmentDto> history});
}

/// @nodoc
class __$$GroupedAppointmentsImplCopyWithImpl<$Res>
    extends _$GroupedAppointmentsCopyWithImpl<$Res, _$GroupedAppointmentsImpl>
    implements _$$GroupedAppointmentsImplCopyWith<$Res> {
  __$$GroupedAppointmentsImplCopyWithImpl(_$GroupedAppointmentsImpl _value,
      $Res Function(_$GroupedAppointmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiringAction = null,
    Object? today = null,
    Object? thisWeek = null,
    Object? upcoming = null,
    Object? history = null,
  }) {
    return _then(_$GroupedAppointmentsImpl(
      requiringAction: null == requiringAction
          ? _value._requiringAction
          : requiringAction // ignore: cast_nullable_to_non_nullable
              as List<CustomerAppointmentDto>,
      today: null == today
          ? _value._today
          : today // ignore: cast_nullable_to_non_nullable
              as List<CustomerAppointmentDto>,
      thisWeek: null == thisWeek
          ? _value._thisWeek
          : thisWeek // ignore: cast_nullable_to_non_nullable
              as List<CustomerAppointmentDto>,
      upcoming: null == upcoming
          ? _value._upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as List<CustomerAppointmentDto>,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<CustomerAppointmentDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupedAppointmentsImpl implements _GroupedAppointments {
  const _$GroupedAppointmentsImpl(
      {final List<CustomerAppointmentDto> requiringAction = const [],
      final List<CustomerAppointmentDto> today = const [],
      final List<CustomerAppointmentDto> thisWeek = const [],
      final List<CustomerAppointmentDto> upcoming = const [],
      final List<CustomerAppointmentDto> history = const []})
      : _requiringAction = requiringAction,
        _today = today,
        _thisWeek = thisWeek,
        _upcoming = upcoming,
        _history = history;

  factory _$GroupedAppointmentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupedAppointmentsImplFromJson(json);

  final List<CustomerAppointmentDto> _requiringAction;
  @override
  @JsonKey()
  List<CustomerAppointmentDto> get requiringAction {
    if (_requiringAction is EqualUnmodifiableListView) return _requiringAction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiringAction);
  }

  final List<CustomerAppointmentDto> _today;
  @override
  @JsonKey()
  List<CustomerAppointmentDto> get today {
    if (_today is EqualUnmodifiableListView) return _today;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_today);
  }

  final List<CustomerAppointmentDto> _thisWeek;
  @override
  @JsonKey()
  List<CustomerAppointmentDto> get thisWeek {
    if (_thisWeek is EqualUnmodifiableListView) return _thisWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thisWeek);
  }

  final List<CustomerAppointmentDto> _upcoming;
  @override
  @JsonKey()
  List<CustomerAppointmentDto> get upcoming {
    if (_upcoming is EqualUnmodifiableListView) return _upcoming;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcoming);
  }

  final List<CustomerAppointmentDto> _history;
  @override
  @JsonKey()
  List<CustomerAppointmentDto> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'GroupedAppointments(requiringAction: $requiringAction, today: $today, thisWeek: $thisWeek, upcoming: $upcoming, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupedAppointmentsImpl &&
            const DeepCollectionEquality()
                .equals(other._requiringAction, _requiringAction) &&
            const DeepCollectionEquality().equals(other._today, _today) &&
            const DeepCollectionEquality().equals(other._thisWeek, _thisWeek) &&
            const DeepCollectionEquality().equals(other._upcoming, _upcoming) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_requiringAction),
      const DeepCollectionEquality().hash(_today),
      const DeepCollectionEquality().hash(_thisWeek),
      const DeepCollectionEquality().hash(_upcoming),
      const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupedAppointmentsImplCopyWith<_$GroupedAppointmentsImpl> get copyWith =>
      __$$GroupedAppointmentsImplCopyWithImpl<_$GroupedAppointmentsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupedAppointmentsImplToJson(
      this,
    );
  }
}

abstract class _GroupedAppointments implements GroupedAppointments {
  const factory _GroupedAppointments(
      {final List<CustomerAppointmentDto> requiringAction,
      final List<CustomerAppointmentDto> today,
      final List<CustomerAppointmentDto> thisWeek,
      final List<CustomerAppointmentDto> upcoming,
      final List<CustomerAppointmentDto> history}) = _$GroupedAppointmentsImpl;

  factory _GroupedAppointments.fromJson(Map<String, dynamic> json) =
      _$GroupedAppointmentsImpl.fromJson;

  @override
  List<CustomerAppointmentDto> get requiringAction;
  @override
  List<CustomerAppointmentDto> get today;
  @override
  List<CustomerAppointmentDto> get thisWeek;
  @override
  List<CustomerAppointmentDto> get upcoming;
  @override
  List<CustomerAppointmentDto> get history;
  @override
  @JsonKey(ignore: true)
  _$$GroupedAppointmentsImplCopyWith<_$GroupedAppointmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
