// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_appointment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerAppointmentDto _$CustomerAppointmentDtoFromJson(
    Map<String, dynamic> json) {
  return _CustomerAppointmentDto.fromJson(json);
}

/// @nodoc
mixin _$CustomerAppointmentDto {
  AgendaEvent get event => throw _privateConstructorUsedError;
  Artist get artist => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  AppointmentUrgencyLevel get urgency => throw _privateConstructorUsedError;
  AppointmentContextualInfo get contextualInfo =>
      throw _privateConstructorUsedError;
  List<AppointmentAction> get availableActions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerAppointmentDtoCopyWith<CustomerAppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAppointmentDtoCopyWith<$Res> {
  factory $CustomerAppointmentDtoCopyWith(CustomerAppointmentDto value,
          $Res Function(CustomerAppointmentDto) then) =
      _$CustomerAppointmentDtoCopyWithImpl<$Res, CustomerAppointmentDto>;
  @useResult
  $Res call(
      {AgendaEvent event,
      Artist artist,
      Location location,
      AppointmentUrgencyLevel urgency,
      AppointmentContextualInfo contextualInfo,
      List<AppointmentAction> availableActions});

  $AgendaEventCopyWith<$Res> get event;
  $ArtistCopyWith<$Res> get artist;
  $LocationCopyWith<$Res> get location;
  $AppointmentContextualInfoCopyWith<$Res> get contextualInfo;
}

/// @nodoc
class _$CustomerAppointmentDtoCopyWithImpl<$Res,
        $Val extends CustomerAppointmentDto>
    implements $CustomerAppointmentDtoCopyWith<$Res> {
  _$CustomerAppointmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? artist = null,
    Object? location = null,
    Object? urgency = null,
    Object? contextualInfo = null,
    Object? availableActions = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as AgendaEvent,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      urgency: null == urgency
          ? _value.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as AppointmentUrgencyLevel,
      contextualInfo: null == contextualInfo
          ? _value.contextualInfo
          : contextualInfo // ignore: cast_nullable_to_non_nullable
              as AppointmentContextualInfo,
      availableActions: null == availableActions
          ? _value.availableActions
          : availableActions // ignore: cast_nullable_to_non_nullable
              as List<AppointmentAction>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgendaEventCopyWith<$Res> get event {
    return $AgendaEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res> get artist {
    return $ArtistCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentContextualInfoCopyWith<$Res> get contextualInfo {
    return $AppointmentContextualInfoCopyWith<$Res>(_value.contextualInfo,
        (value) {
      return _then(_value.copyWith(contextualInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerAppointmentDtoImplCopyWith<$Res>
    implements $CustomerAppointmentDtoCopyWith<$Res> {
  factory _$$CustomerAppointmentDtoImplCopyWith(
          _$CustomerAppointmentDtoImpl value,
          $Res Function(_$CustomerAppointmentDtoImpl) then) =
      __$$CustomerAppointmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AgendaEvent event,
      Artist artist,
      Location location,
      AppointmentUrgencyLevel urgency,
      AppointmentContextualInfo contextualInfo,
      List<AppointmentAction> availableActions});

  @override
  $AgendaEventCopyWith<$Res> get event;
  @override
  $ArtistCopyWith<$Res> get artist;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $AppointmentContextualInfoCopyWith<$Res> get contextualInfo;
}

/// @nodoc
class __$$CustomerAppointmentDtoImplCopyWithImpl<$Res>
    extends _$CustomerAppointmentDtoCopyWithImpl<$Res,
        _$CustomerAppointmentDtoImpl>
    implements _$$CustomerAppointmentDtoImplCopyWith<$Res> {
  __$$CustomerAppointmentDtoImplCopyWithImpl(
      _$CustomerAppointmentDtoImpl _value,
      $Res Function(_$CustomerAppointmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? artist = null,
    Object? location = null,
    Object? urgency = null,
    Object? contextualInfo = null,
    Object? availableActions = null,
  }) {
    return _then(_$CustomerAppointmentDtoImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as AgendaEvent,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      urgency: null == urgency
          ? _value.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as AppointmentUrgencyLevel,
      contextualInfo: null == contextualInfo
          ? _value.contextualInfo
          : contextualInfo // ignore: cast_nullable_to_non_nullable
              as AppointmentContextualInfo,
      availableActions: null == availableActions
          ? _value._availableActions
          : availableActions // ignore: cast_nullable_to_non_nullable
              as List<AppointmentAction>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CustomerAppointmentDtoImpl implements _CustomerAppointmentDto {
  const _$CustomerAppointmentDtoImpl(
      {required this.event,
      required this.artist,
      required this.location,
      required this.urgency,
      required this.contextualInfo,
      final List<AppointmentAction> availableActions = const []})
      : _availableActions = availableActions;

  factory _$CustomerAppointmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerAppointmentDtoImplFromJson(json);

  @override
  final AgendaEvent event;
  @override
  final Artist artist;
  @override
  final Location location;
  @override
  final AppointmentUrgencyLevel urgency;
  @override
  final AppointmentContextualInfo contextualInfo;
  final List<AppointmentAction> _availableActions;
  @override
  @JsonKey()
  List<AppointmentAction> get availableActions {
    if (_availableActions is EqualUnmodifiableListView)
      return _availableActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableActions);
  }

  @override
  String toString() {
    return 'CustomerAppointmentDto(event: $event, artist: $artist, location: $location, urgency: $urgency, contextualInfo: $contextualInfo, availableActions: $availableActions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAppointmentDtoImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.urgency, urgency) || other.urgency == urgency) &&
            (identical(other.contextualInfo, contextualInfo) ||
                other.contextualInfo == contextualInfo) &&
            const DeepCollectionEquality()
                .equals(other._availableActions, _availableActions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, event, artist, location, urgency,
      contextualInfo, const DeepCollectionEquality().hash(_availableActions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerAppointmentDtoImplCopyWith<_$CustomerAppointmentDtoImpl>
      get copyWith => __$$CustomerAppointmentDtoImplCopyWithImpl<
          _$CustomerAppointmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerAppointmentDtoImplToJson(
      this,
    );
  }
}

abstract class _CustomerAppointmentDto implements CustomerAppointmentDto {
  const factory _CustomerAppointmentDto(
          {required final AgendaEvent event,
          required final Artist artist,
          required final Location location,
          required final AppointmentUrgencyLevel urgency,
          required final AppointmentContextualInfo contextualInfo,
          final List<AppointmentAction> availableActions}) =
      _$CustomerAppointmentDtoImpl;

  factory _CustomerAppointmentDto.fromJson(Map<String, dynamic> json) =
      _$CustomerAppointmentDtoImpl.fromJson;

  @override
  AgendaEvent get event;
  @override
  Artist get artist;
  @override
  Location get location;
  @override
  AppointmentUrgencyLevel get urgency;
  @override
  AppointmentContextualInfo get contextualInfo;
  @override
  List<AppointmentAction> get availableActions;
  @override
  @JsonKey(ignore: true)
  _$$CustomerAppointmentDtoImplCopyWith<_$CustomerAppointmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentContextualInfo _$AppointmentContextualInfoFromJson(
    Map<String, dynamic> json) {
  return _AppointmentContextualInfo.fromJson(json);
}

/// @nodoc
mixin _$AppointmentContextualInfo {
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get tip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentContextualInfoCopyWith<AppointmentContextualInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentContextualInfoCopyWith<$Res> {
  factory $AppointmentContextualInfoCopyWith(AppointmentContextualInfo value,
          $Res Function(AppointmentContextualInfo) then) =
      _$AppointmentContextualInfoCopyWithImpl<$Res, AppointmentContextualInfo>;
  @useResult
  $Res call({String title, String message, String? tip});
}

/// @nodoc
class _$AppointmentContextualInfoCopyWithImpl<$Res,
        $Val extends AppointmentContextualInfo>
    implements $AppointmentContextualInfoCopyWith<$Res> {
  _$AppointmentContextualInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? tip = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentContextualInfoImplCopyWith<$Res>
    implements $AppointmentContextualInfoCopyWith<$Res> {
  factory _$$AppointmentContextualInfoImplCopyWith(
          _$AppointmentContextualInfoImpl value,
          $Res Function(_$AppointmentContextualInfoImpl) then) =
      __$$AppointmentContextualInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String message, String? tip});
}

/// @nodoc
class __$$AppointmentContextualInfoImplCopyWithImpl<$Res>
    extends _$AppointmentContextualInfoCopyWithImpl<$Res,
        _$AppointmentContextualInfoImpl>
    implements _$$AppointmentContextualInfoImplCopyWith<$Res> {
  __$$AppointmentContextualInfoImplCopyWithImpl(
      _$AppointmentContextualInfoImpl _value,
      $Res Function(_$AppointmentContextualInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? tip = freezed,
  }) {
    return _then(_$AppointmentContextualInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentContextualInfoImpl implements _AppointmentContextualInfo {
  const _$AppointmentContextualInfoImpl(
      {required this.title, required this.message, this.tip});

  factory _$AppointmentContextualInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentContextualInfoImplFromJson(json);

  @override
  final String title;
  @override
  final String message;
  @override
  final String? tip;

  @override
  String toString() {
    return 'AppointmentContextualInfo(title: $title, message: $message, tip: $tip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentContextualInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.tip, tip) || other.tip == tip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, message, tip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentContextualInfoImplCopyWith<_$AppointmentContextualInfoImpl>
      get copyWith => __$$AppointmentContextualInfoImplCopyWithImpl<
          _$AppointmentContextualInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentContextualInfoImplToJson(
      this,
    );
  }
}

abstract class _AppointmentContextualInfo implements AppointmentContextualInfo {
  const factory _AppointmentContextualInfo(
      {required final String title,
      required final String message,
      final String? tip}) = _$AppointmentContextualInfoImpl;

  factory _AppointmentContextualInfo.fromJson(Map<String, dynamic> json) =
      _$AppointmentContextualInfoImpl.fromJson;

  @override
  String get title;
  @override
  String get message;
  @override
  String? get tip;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentContextualInfoImplCopyWith<_$AppointmentContextualInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
