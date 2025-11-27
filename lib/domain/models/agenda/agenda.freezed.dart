// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agenda.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Agenda _$AgendaFromJson(Map<String, dynamic> json) {
  return _Agenda.fromJson(json);
}

/// @nodoc
mixin _$Agenda {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  List<String> get workingDays => throw _privateConstructorUsedError;
  String? get workingHoursStart => throw _privateConstructorUsedError;
  String? get workingHoursEnd => throw _privateConstructorUsedError;
  bool get public => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaCopyWith<Agenda> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaCopyWith<$Res> {
  factory $AgendaCopyWith(Agenda value, $Res Function(Agenda) then) =
      _$AgendaCopyWithImpl<$Res, Agenda>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String userId,
      String artistId,
      List<String> workingDays,
      String? workingHoursStart,
      String? workingHoursEnd,
      bool public,
      bool open,
      DateTime? deletedAt});
}

/// @nodoc
class _$AgendaCopyWithImpl<$Res, $Val extends Agenda>
    implements $AgendaCopyWith<$Res> {
  _$AgendaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? artistId = null,
    Object? workingDays = null,
    Object? workingHoursStart = freezed,
    Object? workingHoursEnd = freezed,
    Object? public = null,
    Object? open = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      workingDays: null == workingDays
          ? _value.workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workingHoursStart: freezed == workingHoursStart
          ? _value.workingHoursStart
          : workingHoursStart // ignore: cast_nullable_to_non_nullable
              as String?,
      workingHoursEnd: freezed == workingHoursEnd
          ? _value.workingHoursEnd
          : workingHoursEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgendaImplCopyWith<$Res> implements $AgendaCopyWith<$Res> {
  factory _$$AgendaImplCopyWith(
          _$AgendaImpl value, $Res Function(_$AgendaImpl) then) =
      __$$AgendaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String userId,
      String artistId,
      List<String> workingDays,
      String? workingHoursStart,
      String? workingHoursEnd,
      bool public,
      bool open,
      DateTime? deletedAt});
}

/// @nodoc
class __$$AgendaImplCopyWithImpl<$Res>
    extends _$AgendaCopyWithImpl<$Res, _$AgendaImpl>
    implements _$$AgendaImplCopyWith<$Res> {
  __$$AgendaImplCopyWithImpl(
      _$AgendaImpl _value, $Res Function(_$AgendaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? artistId = null,
    Object? workingDays = null,
    Object? workingHoursStart = freezed,
    Object? workingHoursEnd = freezed,
    Object? public = null,
    Object? open = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$AgendaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      workingDays: null == workingDays
          ? _value._workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workingHoursStart: freezed == workingHoursStart
          ? _value.workingHoursStart
          : workingHoursStart // ignore: cast_nullable_to_non_nullable
              as String?,
      workingHoursEnd: freezed == workingHoursEnd
          ? _value.workingHoursEnd
          : workingHoursEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaImpl implements _Agenda {
  const _$AgendaImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.userId,
      required this.artistId,
      required final List<String> workingDays,
      this.workingHoursStart,
      this.workingHoursEnd,
      required this.public,
      required this.open,
      this.deletedAt})
      : _workingDays = workingDays;

  factory _$AgendaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String userId;
  @override
  final String artistId;
  final List<String> _workingDays;
  @override
  List<String> get workingDays {
    if (_workingDays is EqualUnmodifiableListView) return _workingDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workingDays);
  }

  @override
  final String? workingHoursStart;
  @override
  final String? workingHoursEnd;
  @override
  final bool public;
  @override
  final bool open;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Agenda(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, artistId: $artistId, workingDays: $workingDays, workingHoursStart: $workingHoursStart, workingHoursEnd: $workingHoursEnd, public: $public, open: $open, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            const DeepCollectionEquality()
                .equals(other._workingDays, _workingDays) &&
            (identical(other.workingHoursStart, workingHoursStart) ||
                other.workingHoursStart == workingHoursStart) &&
            (identical(other.workingHoursEnd, workingHoursEnd) ||
                other.workingHoursEnd == workingHoursEnd) &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      userId,
      artistId,
      const DeepCollectionEquality().hash(_workingDays),
      workingHoursStart,
      workingHoursEnd,
      public,
      open,
      deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaImplCopyWith<_$AgendaImpl> get copyWith =>
      __$$AgendaImplCopyWithImpl<_$AgendaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaImplToJson(
      this,
    );
  }
}

abstract class _Agenda implements Agenda {
  const factory _Agenda(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String userId,
      required final String artistId,
      required final List<String> workingDays,
      final String? workingHoursStart,
      final String? workingHoursEnd,
      required final bool public,
      required final bool open,
      final DateTime? deletedAt}) = _$AgendaImpl;

  factory _Agenda.fromJson(Map<String, dynamic> json) = _$AgendaImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get userId;
  @override
  String get artistId;
  @override
  List<String> get workingDays;
  @override
  String? get workingHoursStart;
  @override
  String? get workingHoursEnd;
  @override
  bool get public;
  @override
  bool get open;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$AgendaImplCopyWith<_$AgendaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
