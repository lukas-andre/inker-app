// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventMessage _$EventMessageFromJson(Map<String, dynamic> json) {
  return _EventMessage.fromJson(json);
}

/// @nodoc
mixin _$EventMessage {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  QuotationRole get senderType => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventMessageCopyWith<EventMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventMessageCopyWith<$Res> {
  factory $EventMessageCopyWith(
          EventMessage value, $Res Function(EventMessage) then) =
      _$EventMessageCopyWithImpl<$Res, EventMessage>;
  @useResult
  $Res call(
      {String id,
      String eventId,
      String senderId,
      QuotationRole senderType,
      String message,
      String? imageUrl,
      DateTime createdAt});
}

/// @nodoc
class _$EventMessageCopyWithImpl<$Res, $Val extends EventMessage>
    implements $EventMessageCopyWith<$Res> {
  _$EventMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? senderId = null,
    Object? senderType = null,
    Object? message = null,
    Object? imageUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      senderType: null == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as QuotationRole,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventMessageImplCopyWith<$Res>
    implements $EventMessageCopyWith<$Res> {
  factory _$$EventMessageImplCopyWith(
          _$EventMessageImpl value, $Res Function(_$EventMessageImpl) then) =
      __$$EventMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String eventId,
      String senderId,
      QuotationRole senderType,
      String message,
      String? imageUrl,
      DateTime createdAt});
}

/// @nodoc
class __$$EventMessageImplCopyWithImpl<$Res>
    extends _$EventMessageCopyWithImpl<$Res, _$EventMessageImpl>
    implements _$$EventMessageImplCopyWith<$Res> {
  __$$EventMessageImplCopyWithImpl(
      _$EventMessageImpl _value, $Res Function(_$EventMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? senderId = null,
    Object? senderType = null,
    Object? message = null,
    Object? imageUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$EventMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      senderType: null == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as QuotationRole,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventMessageImpl implements _EventMessage {
  const _$EventMessageImpl(
      {required this.id,
      required this.eventId,
      required this.senderId,
      required this.senderType,
      required this.message,
      this.imageUrl,
      required this.createdAt});

  factory _$EventMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventMessageImplFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String senderId;
  @override
  final QuotationRole senderType;
  @override
  final String message;
  @override
  final String? imageUrl;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'EventMessage(id: $id, eventId: $eventId, senderId: $senderId, senderType: $senderType, message: $message, imageUrl: $imageUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderType, senderType) ||
                other.senderType == senderType) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, eventId, senderId,
      senderType, message, imageUrl, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventMessageImplCopyWith<_$EventMessageImpl> get copyWith =>
      __$$EventMessageImplCopyWithImpl<_$EventMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventMessageImplToJson(
      this,
    );
  }
}

abstract class _EventMessage implements EventMessage {
  const factory _EventMessage(
      {required final String id,
      required final String eventId,
      required final String senderId,
      required final QuotationRole senderType,
      required final String message,
      final String? imageUrl,
      required final DateTime createdAt}) = _$EventMessageImpl;

  factory _EventMessage.fromJson(Map<String, dynamic> json) =
      _$EventMessageImpl.fromJson;

  @override
  String get id;
  @override
  String get eventId;
  @override
  String get senderId;
  @override
  QuotationRole get senderType;
  @override
  String get message;
  @override
  String? get imageUrl;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$EventMessageImplCopyWith<_$EventMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
