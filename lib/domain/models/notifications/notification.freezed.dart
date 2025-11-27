// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InkerNotification {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InkerNotificationCopyWith<InkerNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InkerNotificationCopyWith<$Res> {
  factory $InkerNotificationCopyWith(
          InkerNotification value, $Res Function(InkerNotification) then) =
      _$InkerNotificationCopyWithImpl<$Res, InkerNotification>;
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
class _$InkerNotificationCopyWithImpl<$Res, $Val extends InkerNotification>
    implements $InkerNotificationCopyWith<$Res> {
  _$InkerNotificationCopyWithImpl(this._value, this._then);

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
abstract class _$$InkerNotificationImplCopyWith<$Res>
    implements $InkerNotificationCopyWith<$Res> {
  factory _$$InkerNotificationImplCopyWith(_$InkerNotificationImpl value,
          $Res Function(_$InkerNotificationImpl) then) =
      __$$InkerNotificationImplCopyWithImpl<$Res>;
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
class __$$InkerNotificationImplCopyWithImpl<$Res>
    extends _$InkerNotificationCopyWithImpl<$Res, _$InkerNotificationImpl>
    implements _$$InkerNotificationImplCopyWith<$Res> {
  __$$InkerNotificationImplCopyWithImpl(_$InkerNotificationImpl _value,
      $Res Function(_$InkerNotificationImpl) _then)
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
    return _then(_$InkerNotificationImpl(
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

class _$InkerNotificationImpl implements _InkerNotification {
  const _$InkerNotificationImpl(
      {required this.id,
      required this.title,
      required this.body,
      required this.type,
      required final Map<String, dynamic> data,
      required this.read,
      required this.createdAt})
      : _data = data;

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
    return 'InkerNotification(id: $id, title: $title, body: $body, type: $type, data: $data, read: $read, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InkerNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, type,
      const DeepCollectionEquality().hash(_data), read, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InkerNotificationImplCopyWith<_$InkerNotificationImpl> get copyWith =>
      __$$InkerNotificationImplCopyWithImpl<_$InkerNotificationImpl>(
          this, _$identity);
}

abstract class _InkerNotification implements InkerNotification {
  const factory _InkerNotification(
      {required final String id,
      required final String title,
      required final String body,
      required final String type,
      required final Map<String, dynamic> data,
      required final bool read,
      required final DateTime createdAt}) = _$InkerNotificationImpl;

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
  _$$InkerNotificationImplCopyWith<_$InkerNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsResponse {
  List<InkerNotification> get items => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsResponseCopyWith<NotificationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsResponseCopyWith<$Res> {
  factory $NotificationsResponseCopyWith(NotificationsResponse value,
          $Res Function(NotificationsResponse) then) =
      _$NotificationsResponseCopyWithImpl<$Res, NotificationsResponse>;
  @useResult
  $Res call(
      {List<InkerNotification> items,
      int page,
      int limit,
      int total,
      int pages,
      int unreadCount});
}

/// @nodoc
class _$NotificationsResponseCopyWithImpl<$Res,
        $Val extends NotificationsResponse>
    implements $NotificationsResponseCopyWith<$Res> {
  _$NotificationsResponseCopyWithImpl(this._value, this._then);

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
              as List<InkerNotification>,
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
abstract class _$$NotificationsResponseImplCopyWith<$Res>
    implements $NotificationsResponseCopyWith<$Res> {
  factory _$$NotificationsResponseImplCopyWith(
          _$NotificationsResponseImpl value,
          $Res Function(_$NotificationsResponseImpl) then) =
      __$$NotificationsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<InkerNotification> items,
      int page,
      int limit,
      int total,
      int pages,
      int unreadCount});
}

/// @nodoc
class __$$NotificationsResponseImplCopyWithImpl<$Res>
    extends _$NotificationsResponseCopyWithImpl<$Res,
        _$NotificationsResponseImpl>
    implements _$$NotificationsResponseImplCopyWith<$Res> {
  __$$NotificationsResponseImplCopyWithImpl(_$NotificationsResponseImpl _value,
      $Res Function(_$NotificationsResponseImpl) _then)
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
    return _then(_$NotificationsResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InkerNotification>,
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

class _$NotificationsResponseImpl implements _NotificationsResponse {
  const _$NotificationsResponseImpl(
      {required final List<InkerNotification> items,
      required this.page,
      required this.limit,
      required this.total,
      required this.pages,
      required this.unreadCount})
      : _items = items;

  final List<InkerNotification> _items;
  @override
  List<InkerNotification> get items {
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
    return 'NotificationsResponse(items: $items, page: $page, limit: $limit, total: $total, pages: $pages, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

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
  _$$NotificationsResponseImplCopyWith<_$NotificationsResponseImpl>
      get copyWith => __$$NotificationsResponseImplCopyWithImpl<
          _$NotificationsResponseImpl>(this, _$identity);
}

abstract class _NotificationsResponse implements NotificationsResponse {
  const factory _NotificationsResponse(
      {required final List<InkerNotification> items,
      required final int page,
      required final int limit,
      required final int total,
      required final int pages,
      required final int unreadCount}) = _$NotificationsResponseImpl;

  @override
  List<InkerNotification> get items;
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
  _$$NotificationsResponseImplCopyWith<_$NotificationsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
