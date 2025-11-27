// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) {
  return _NotificationDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDtoCopyWith<NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(
          NotificationDto value, $Res Function(NotificationDto) then) =
      _$NotificationDtoCopyWithImpl<$Res, NotificationDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      String type,
      Map<String, dynamic> data,
      bool read,
      DateTime createdAt});
}

/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res, $Val extends NotificationDto>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? data = null,
    Object? read = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDtoImplCopyWith<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  factory _$$NotificationDtoImplCopyWith(_$NotificationDtoImpl value,
          $Res Function(_$NotificationDtoImpl) then) =
      __$$NotificationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      String type,
      Map<String, dynamic> data,
      bool read,
      DateTime createdAt});
}

/// @nodoc
class __$$NotificationDtoImplCopyWithImpl<$Res>
    extends _$NotificationDtoCopyWithImpl<$Res, _$NotificationDtoImpl>
    implements _$$NotificationDtoImplCopyWith<$Res> {
  __$$NotificationDtoImplCopyWithImpl(
      _$NotificationDtoImpl _value, $Res Function(_$NotificationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? data = null,
    Object? read = null,
    Object? createdAt = null,
  }) {
    return _then(_$NotificationDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDtoImpl implements _NotificationDto {
  const _$NotificationDtoImpl(
      {required this.id,
      required this.title,
      required this.body,
      required this.type,
      required final Map<String, dynamic> data,
      required this.read,
      required this.createdAt})
      : _data = data;

  factory _$NotificationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String type;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final bool read;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'NotificationDto(id: $id, title: $title, body: $body, type: $type, data: $data, read: $read, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, type,
      const DeepCollectionEquality().hash(_data), read, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDtoImplCopyWith<_$NotificationDtoImpl> get copyWith =>
      __$$NotificationDtoImplCopyWithImpl<_$NotificationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDtoImplToJson(
      this,
    );
  }
}

abstract class _NotificationDto implements NotificationDto {
  const factory _NotificationDto(
      {required final String id,
      required final String title,
      required final String body,
      required final String type,
      required final Map<String, dynamic> data,
      required final bool read,
      required final DateTime createdAt}) = _$NotificationDtoImpl;

  factory _NotificationDto.fromJson(Map<String, dynamic> json) =
      _$NotificationDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String get type;
  @override
  Map<String, dynamic> get data;
  @override
  bool get read;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$NotificationDtoImplCopyWith<_$NotificationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationsResponseDto _$NotificationsResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _NotificationsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationsResponseDto {
  List<NotificationDto> get items => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsResponseDtoCopyWith<NotificationsResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsResponseDtoCopyWith<$Res> {
  factory $NotificationsResponseDtoCopyWith(NotificationsResponseDto value,
          $Res Function(NotificationsResponseDto) then) =
      _$NotificationsResponseDtoCopyWithImpl<$Res, NotificationsResponseDto>;
  @useResult
  $Res call(
      {List<NotificationDto> items,
      int page,
      int limit,
      int total,
      int pages,
      int unreadCount});
}

/// @nodoc
class _$NotificationsResponseDtoCopyWithImpl<$Res,
        $Val extends NotificationsResponseDto>
    implements $NotificationsResponseDtoCopyWith<$Res> {
  _$NotificationsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? page = null,
    Object? limit = null,
    Object? total = null,
    Object? pages = null,
    Object? unreadCount = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<NotificationDto>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationsResponseDtoImplCopyWith<$Res>
    implements $NotificationsResponseDtoCopyWith<$Res> {
  factory _$$NotificationsResponseDtoImplCopyWith(
          _$NotificationsResponseDtoImpl value,
          $Res Function(_$NotificationsResponseDtoImpl) then) =
      __$$NotificationsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NotificationDto> items,
      int page,
      int limit,
      int total,
      int pages,
      int unreadCount});
}

/// @nodoc
class __$$NotificationsResponseDtoImplCopyWithImpl<$Res>
    extends _$NotificationsResponseDtoCopyWithImpl<$Res,
        _$NotificationsResponseDtoImpl>
    implements _$$NotificationsResponseDtoImplCopyWith<$Res> {
  __$$NotificationsResponseDtoImplCopyWithImpl(
      _$NotificationsResponseDtoImpl _value,
      $Res Function(_$NotificationsResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? page = null,
    Object? limit = null,
    Object? total = null,
    Object? pages = null,
    Object? unreadCount = null,
  }) {
    return _then(_$NotificationsResponseDtoImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<NotificationDto>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationsResponseDtoImpl implements _NotificationsResponseDto {
  const _$NotificationsResponseDtoImpl(
      {required final List<NotificationDto> items,
      required this.page,
      required this.limit,
      required this.total,
      required this.pages,
      required this.unreadCount})
      : _items = items;

  factory _$NotificationsResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationsResponseDtoImplFromJson(json);

  final List<NotificationDto> _items;
  @override
  List<NotificationDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int page;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int pages;
  @override
  final int unreadCount;

  @override
  String toString() {
    return 'NotificationsResponseDto(items: $items, page: $page, limit: $limit, total: $total, pages: $pages, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      page,
      limit,
      total,
      pages,
      unreadCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsResponseDtoImplCopyWith<_$NotificationsResponseDtoImpl>
      get copyWith => __$$NotificationsResponseDtoImplCopyWithImpl<
          _$NotificationsResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _NotificationsResponseDto implements NotificationsResponseDto {
  const factory _NotificationsResponseDto(
      {required final List<NotificationDto> items,
      required final int page,
      required final int limit,
      required final int total,
      required final int pages,
      required final int unreadCount}) = _$NotificationsResponseDtoImpl;

  factory _NotificationsResponseDto.fromJson(Map<String, dynamic> json) =
      _$NotificationsResponseDtoImpl.fromJson;

  @override
  List<NotificationDto> get items;
  @override
  int get page;
  @override
  int get limit;
  @override
  int get total;
  @override
  int get pages;
  @override
  int get unreadCount;
  @override
  @JsonKey(ignore: true)
  _$$NotificationsResponseDtoImplCopyWith<_$NotificationsResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
