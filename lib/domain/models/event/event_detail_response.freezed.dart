// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventDetailResponse _$EventDetailResponseFromJson(Map<String, dynamic> json) {
  return _EventDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$EventDetailResponse {
  Event get event => throw _privateConstructorUsedError;
  Artist get artist => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  Quotation get quotation => throw _privateConstructorUsedError;
  EventActions get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDetailResponseCopyWith<EventDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailResponseCopyWith<$Res> {
  factory $EventDetailResponseCopyWith(
          EventDetailResponse value, $Res Function(EventDetailResponse) then) =
      _$EventDetailResponseCopyWithImpl<$Res, EventDetailResponse>;
  @useResult
  $Res call(
      {Event event,
      Artist artist,
      Location location,
      Quotation quotation,
      EventActions actions});

  $EventCopyWith<$Res> get event;
  $ArtistCopyWith<$Res> get artist;
  $LocationCopyWith<$Res> get location;
  $QuotationCopyWith<$Res> get quotation;
  $EventActionsCopyWith<$Res> get actions;
}

/// @nodoc
class _$EventDetailResponseCopyWithImpl<$Res, $Val extends EventDetailResponse>
    implements $EventDetailResponseCopyWith<$Res> {
  _$EventDetailResponseCopyWithImpl(this._value, this._then);

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
    Object? quotation = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      quotation: null == quotation
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as EventActions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
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
  $QuotationCopyWith<$Res> get quotation {
    return $QuotationCopyWith<$Res>(_value.quotation, (value) {
      return _then(_value.copyWith(quotation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventActionsCopyWith<$Res> get actions {
    return $EventActionsCopyWith<$Res>(_value.actions, (value) {
      return _then(_value.copyWith(actions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventDetailResponseImplCopyWith<$Res>
    implements $EventDetailResponseCopyWith<$Res> {
  factory _$$EventDetailResponseImplCopyWith(_$EventDetailResponseImpl value,
          $Res Function(_$EventDetailResponseImpl) then) =
      __$$EventDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Event event,
      Artist artist,
      Location location,
      Quotation quotation,
      EventActions actions});

  @override
  $EventCopyWith<$Res> get event;
  @override
  $ArtistCopyWith<$Res> get artist;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $QuotationCopyWith<$Res> get quotation;
  @override
  $EventActionsCopyWith<$Res> get actions;
}

/// @nodoc
class __$$EventDetailResponseImplCopyWithImpl<$Res>
    extends _$EventDetailResponseCopyWithImpl<$Res, _$EventDetailResponseImpl>
    implements _$$EventDetailResponseImplCopyWith<$Res> {
  __$$EventDetailResponseImplCopyWithImpl(_$EventDetailResponseImpl _value,
      $Res Function(_$EventDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? artist = null,
    Object? location = null,
    Object? quotation = null,
    Object? actions = null,
  }) {
    return _then(_$EventDetailResponseImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      quotation: null == quotation
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as EventActions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventDetailResponseImpl implements _EventDetailResponse {
  const _$EventDetailResponseImpl(
      {required this.event,
      required this.artist,
      required this.location,
      required this.quotation,
      required this.actions});

  factory _$EventDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDetailResponseImplFromJson(json);

  @override
  final Event event;
  @override
  final Artist artist;
  @override
  final Location location;
  @override
  final Quotation quotation;
  @override
  final EventActions actions;

  @override
  String toString() {
    return 'EventDetailResponse(event: $event, artist: $artist, location: $location, quotation: $quotation, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDetailResponseImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.quotation, quotation) ||
                other.quotation == quotation) &&
            (identical(other.actions, actions) || other.actions == actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, event, artist, location, quotation, actions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDetailResponseImplCopyWith<_$EventDetailResponseImpl> get copyWith =>
      __$$EventDetailResponseImplCopyWithImpl<_$EventDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _EventDetailResponse implements EventDetailResponse {
  const factory _EventDetailResponse(
      {required final Event event,
      required final Artist artist,
      required final Location location,
      required final Quotation quotation,
      required final EventActions actions}) = _$EventDetailResponseImpl;

  factory _EventDetailResponse.fromJson(Map<String, dynamic> json) =
      _$EventDetailResponseImpl.fromJson;

  @override
  Event get event;
  @override
  Artist get artist;
  @override
  Location get location;
  @override
  Quotation get quotation;
  @override
  EventActions get actions;
  @override
  @JsonKey(ignore: true)
  _$$EventDetailResponseImplCopyWith<_$EventDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
