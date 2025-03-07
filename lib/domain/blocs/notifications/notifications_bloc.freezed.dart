// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'NotificationsEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements NotificationsEvent {
  const factory _Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$NotificationReceivedImplCopyWith<$Res> {
  factory _$$NotificationReceivedImplCopyWith(_$NotificationReceivedImpl value,
          $Res Function(_$NotificationReceivedImpl) then) =
      __$$NotificationReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteMessage message, AppState appState});
}

/// @nodoc
class __$$NotificationReceivedImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$NotificationReceivedImpl>
    implements _$$NotificationReceivedImplCopyWith<$Res> {
  __$$NotificationReceivedImplCopyWithImpl(_$NotificationReceivedImpl _value,
      $Res Function(_$NotificationReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? appState = null,
  }) {
    return _then(_$NotificationReceivedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteMessage,
      appState: null == appState
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
    ));
  }
}

/// @nodoc

class _$NotificationReceivedImpl implements _NotificationReceived {
  const _$NotificationReceivedImpl(
      {required this.message, required this.appState});

  @override
  final RemoteMessage message;
  @override
  final AppState appState;

  @override
  String toString() {
    return 'NotificationsEvent.notificationReceived(message: $message, appState: $appState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationReceivedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.appState, appState) ||
                other.appState == appState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, appState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationReceivedImplCopyWith<_$NotificationReceivedImpl>
      get copyWith =>
          __$$NotificationReceivedImplCopyWithImpl<_$NotificationReceivedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) {
    return notificationReceived(message, appState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) {
    return notificationReceived?.call(message, appState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (notificationReceived != null) {
      return notificationReceived(message, appState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) {
    return notificationReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) {
    return notificationReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (notificationReceived != null) {
      return notificationReceived(this);
    }
    return orElse();
  }
}

abstract class _NotificationReceived implements NotificationsEvent {
  const factory _NotificationReceived(
      {required final RemoteMessage message,
      required final AppState appState}) = _$NotificationReceivedImpl;

  RemoteMessage get message;
  AppState get appState;
  @JsonKey(ignore: true)
  _$$NotificationReceivedImplCopyWith<_$NotificationReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionUpdatedImplCopyWith<$Res> {
  factory _$$PermissionUpdatedImplCopyWith(_$PermissionUpdatedImpl value,
          $Res Function(_$PermissionUpdatedImpl) then) =
      __$$PermissionUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool granted});
}

/// @nodoc
class __$$PermissionUpdatedImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$PermissionUpdatedImpl>
    implements _$$PermissionUpdatedImplCopyWith<$Res> {
  __$$PermissionUpdatedImplCopyWithImpl(_$PermissionUpdatedImpl _value,
      $Res Function(_$PermissionUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? granted = null,
  }) {
    return _then(_$PermissionUpdatedImpl(
      null == granted
          ? _value.granted
          : granted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PermissionUpdatedImpl implements _PermissionUpdated {
  const _$PermissionUpdatedImpl(this.granted);

  @override
  final bool granted;

  @override
  String toString() {
    return 'NotificationsEvent.permissionUpdated(granted: $granted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionUpdatedImpl &&
            (identical(other.granted, granted) || other.granted == granted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, granted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionUpdatedImplCopyWith<_$PermissionUpdatedImpl> get copyWith =>
      __$$PermissionUpdatedImplCopyWithImpl<_$PermissionUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) {
    return permissionUpdated(granted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) {
    return permissionUpdated?.call(granted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (permissionUpdated != null) {
      return permissionUpdated(granted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) {
    return permissionUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) {
    return permissionUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (permissionUpdated != null) {
      return permissionUpdated(this);
    }
    return orElse();
  }
}

abstract class _PermissionUpdated implements NotificationsEvent {
  const factory _PermissionUpdated(final bool granted) =
      _$PermissionUpdatedImpl;

  bool get granted;
  @JsonKey(ignore: true)
  _$$PermissionUpdatedImplCopyWith<_$PermissionUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationHandledImplCopyWith<$Res> {
  factory _$$NotificationHandledImplCopyWith(_$NotificationHandledImpl value,
          $Res Function(_$NotificationHandledImpl) then) =
      __$$NotificationHandledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationHandledImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$NotificationHandledImpl>
    implements _$$NotificationHandledImplCopyWith<$Res> {
  __$$NotificationHandledImplCopyWithImpl(_$NotificationHandledImpl _value,
      $Res Function(_$NotificationHandledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotificationHandledImpl implements _NotificationHandled {
  const _$NotificationHandledImpl();

  @override
  String toString() {
    return 'NotificationsEvent.notificationHandled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationHandledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) {
    return notificationHandled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) {
    return notificationHandled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (notificationHandled != null) {
      return notificationHandled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) {
    return notificationHandled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) {
    return notificationHandled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (notificationHandled != null) {
      return notificationHandled(this);
    }
    return orElse();
  }
}

abstract class _NotificationHandled implements NotificationsEvent {
  const factory _NotificationHandled() = _$NotificationHandledImpl;
}

/// @nodoc
abstract class _$$GetNotificationsImplCopyWith<$Res> {
  factory _$$GetNotificationsImplCopyWith(_$GetNotificationsImpl value,
          $Res Function(_$GetNotificationsImpl) then) =
      __$$GetNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class __$$GetNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$GetNotificationsImpl>
    implements _$$GetNotificationsImplCopyWith<$Res> {
  __$$GetNotificationsImplCopyWithImpl(_$GetNotificationsImpl _value,
      $Res Function(_$GetNotificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$GetNotificationsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetNotificationsImpl implements _GetNotifications {
  const _$GetNotificationsImpl({this.page = 1, this.limit = 10});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'NotificationsEvent.getNotifications(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      __$$GetNotificationsImplCopyWithImpl<_$GetNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) {
    return getNotifications(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) {
    return getNotifications?.call(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class _GetNotifications implements NotificationsEvent {
  const factory _GetNotifications({final int page, final int limit}) =
      _$GetNotificationsImpl;

  int get page;
  int get limit;
  @JsonKey(ignore: true)
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAsReadImplCopyWith<$Res> {
  factory _$$MarkAsReadImplCopyWith(
          _$MarkAsReadImpl value, $Res Function(_$MarkAsReadImpl) then) =
      __$$MarkAsReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$MarkAsReadImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$MarkAsReadImpl>
    implements _$$MarkAsReadImplCopyWith<$Res> {
  __$$MarkAsReadImplCopyWithImpl(
      _$MarkAsReadImpl _value, $Res Function(_$MarkAsReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$MarkAsReadImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkAsReadImpl implements _MarkAsRead {
  const _$MarkAsReadImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NotificationsEvent.markAsRead(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsReadImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      __$$MarkAsReadImplCopyWithImpl<_$MarkAsReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) {
    return markAsRead(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) {
    return markAsRead?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAsRead implements NotificationsEvent {
  const factory _MarkAsRead(final String id) = _$MarkAsReadImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAllAsReadImplCopyWith<$Res> {
  factory _$$MarkAllAsReadImplCopyWith(
          _$MarkAllAsReadImpl value, $Res Function(_$MarkAllAsReadImpl) then) =
      __$$MarkAllAsReadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAllAsReadImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$MarkAllAsReadImpl>
    implements _$$MarkAllAsReadImplCopyWith<$Res> {
  __$$MarkAllAsReadImplCopyWithImpl(
      _$MarkAllAsReadImpl _value, $Res Function(_$MarkAllAsReadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAllAsReadImpl implements _MarkAllAsRead {
  const _$MarkAllAsReadImpl();

  @override
  String toString() {
    return 'NotificationsEvent.markAllAsRead()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkAllAsReadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) {
    return markAllAsRead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) {
    return markAllAsRead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (markAllAsRead != null) {
      return markAllAsRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) {
    return markAllAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) {
    return markAllAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (markAllAsRead != null) {
      return markAllAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAllAsRead implements NotificationsEvent {
  const factory _MarkAllAsRead() = _$MarkAllAsReadImpl;
}

/// @nodoc
abstract class _$$DeleteNotificationImplCopyWith<$Res> {
  factory _$$DeleteNotificationImplCopyWith(_$DeleteNotificationImpl value,
          $Res Function(_$DeleteNotificationImpl) then) =
      __$$DeleteNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteNotificationImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$DeleteNotificationImpl>
    implements _$$DeleteNotificationImplCopyWith<$Res> {
  __$$DeleteNotificationImplCopyWithImpl(_$DeleteNotificationImpl _value,
      $Res Function(_$DeleteNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteNotificationImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteNotificationImpl implements _DeleteNotification {
  const _$DeleteNotificationImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NotificationsEvent.deleteNotification(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotificationImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotificationImplCopyWith<_$DeleteNotificationImpl> get copyWith =>
      __$$DeleteNotificationImplCopyWithImpl<_$DeleteNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) {
    return deleteNotification(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) {
    return deleteNotification?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (deleteNotification != null) {
      return deleteNotification(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) {
    return deleteNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) {
    return deleteNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (deleteNotification != null) {
      return deleteNotification(this);
    }
    return orElse();
  }
}

abstract class _DeleteNotification implements NotificationsEvent {
  const factory _DeleteNotification(final String id) = _$DeleteNotificationImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteNotificationImplCopyWith<_$DeleteNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshNotificationsImplCopyWith<$Res> {
  factory _$$RefreshNotificationsImplCopyWith(_$RefreshNotificationsImpl value,
          $Res Function(_$RefreshNotificationsImpl) then) =
      __$$RefreshNotificationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$RefreshNotificationsImpl>
    implements _$$RefreshNotificationsImplCopyWith<$Res> {
  __$$RefreshNotificationsImplCopyWithImpl(_$RefreshNotificationsImpl _value,
      $Res Function(_$RefreshNotificationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshNotificationsImpl implements _RefreshNotifications {
  const _$RefreshNotificationsImpl();

  @override
  String toString() {
    return 'NotificationsEvent.refreshNotifications()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshNotificationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) {
    return refreshNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) {
    return refreshNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (refreshNotifications != null) {
      return refreshNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) {
    return refreshNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) {
    return refreshNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (refreshNotifications != null) {
      return refreshNotifications(this);
    }
    return orElse();
  }
}

abstract class _RefreshNotifications implements NotificationsEvent {
  const factory _RefreshNotifications() = _$RefreshNotificationsImpl;
}

/// @nodoc
abstract class _$$ClearQuotationNotificationsImplCopyWith<$Res> {
  factory _$$ClearQuotationNotificationsImplCopyWith(
          _$ClearQuotationNotificationsImpl value,
          $Res Function(_$ClearQuotationNotificationsImpl) then) =
      __$$ClearQuotationNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class __$$ClearQuotationNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res,
        _$ClearQuotationNotificationsImpl>
    implements _$$ClearQuotationNotificationsImplCopyWith<$Res> {
  __$$ClearQuotationNotificationsImplCopyWithImpl(
      _$ClearQuotationNotificationsImpl _value,
      $Res Function(_$ClearQuotationNotificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
  }) {
    return _then(_$ClearQuotationNotificationsImpl(
      null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClearQuotationNotificationsImpl
    implements _ClearQuotationNotifications {
  const _$ClearQuotationNotificationsImpl(this.quotationId);

  @override
  final String quotationId;

  @override
  String toString() {
    return 'NotificationsEvent.clearQuotationNotifications(quotationId: $quotationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearQuotationNotificationsImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearQuotationNotificationsImplCopyWith<_$ClearQuotationNotificationsImpl>
      get copyWith => __$$ClearQuotationNotificationsImplCopyWithImpl<
          _$ClearQuotationNotificationsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message, AppState appState)
        notificationReceived,
    required TResult Function(bool granted) permissionUpdated,
    required TResult Function() notificationHandled,
    required TResult Function(int page, int limit) getNotifications,
    required TResult Function(String id) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function(String id) deleteNotification,
    required TResult Function() refreshNotifications,
    required TResult Function(String quotationId) clearQuotationNotifications,
  }) {
    return clearQuotationNotifications(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult? Function(bool granted)? permissionUpdated,
    TResult? Function()? notificationHandled,
    TResult? Function(int page, int limit)? getNotifications,
    TResult? Function(String id)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? refreshNotifications,
    TResult? Function(String quotationId)? clearQuotationNotifications,
  }) {
    return clearQuotationNotifications?.call(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message, AppState appState)?
        notificationReceived,
    TResult Function(bool granted)? permissionUpdated,
    TResult Function()? notificationHandled,
    TResult Function(int page, int limit)? getNotifications,
    TResult Function(String id)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function(String id)? deleteNotification,
    TResult Function()? refreshNotifications,
    TResult Function(String quotationId)? clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (clearQuotationNotifications != null) {
      return clearQuotationNotifications(quotationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_PermissionUpdated value) permissionUpdated,
    required TResult Function(_NotificationHandled value) notificationHandled,
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_RefreshNotifications value) refreshNotifications,
    required TResult Function(_ClearQuotationNotifications value)
        clearQuotationNotifications,
  }) {
    return clearQuotationNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_PermissionUpdated value)? permissionUpdated,
    TResult? Function(_NotificationHandled value)? notificationHandled,
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_RefreshNotifications value)? refreshNotifications,
    TResult? Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
  }) {
    return clearQuotationNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_PermissionUpdated value)? permissionUpdated,
    TResult Function(_NotificationHandled value)? notificationHandled,
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_RefreshNotifications value)? refreshNotifications,
    TResult Function(_ClearQuotationNotifications value)?
        clearQuotationNotifications,
    required TResult orElse(),
  }) {
    if (clearQuotationNotifications != null) {
      return clearQuotationNotifications(this);
    }
    return orElse();
  }
}

abstract class _ClearQuotationNotifications implements NotificationsEvent {
  const factory _ClearQuotationNotifications(final String quotationId) =
      _$ClearQuotationNotificationsImpl;

  String get quotationId;
  @JsonKey(ignore: true)
  _$$ClearQuotationNotificationsImplCopyWith<_$ClearQuotationNotificationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

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
    extends _$NotificationsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'NotificationsState.initial()';
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
    required TResult Function(
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)
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
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)?
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
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)?
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationsState {
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
    extends _$NotificationsStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'NotificationsState.loading()';
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
    required TResult Function(
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)
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
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)?
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
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)?
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NotificationsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fcmToken,
      bool permissionsGranted,
      NavigationInfo? pendingNavigation,
      RemoteMessage? lastMessage,
      AppState? lastMessageAppState,
      List<InkerNotification>? notifications,
      bool isLoading,
      bool isRefreshing,
      bool hasError,
      String? errorMessage,
      int currentPage,
      int totalPages,
      int unreadCount});

  $NavigationInfoCopyWith<$Res>? get pendingNavigation;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? permissionsGranted = null,
    Object? pendingNavigation = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageAppState = freezed,
    Object? notifications = freezed,
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? unreadCount = null,
  }) {
    return _then(_$LoadedImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      permissionsGranted: null == permissionsGranted
          ? _value.permissionsGranted
          : permissionsGranted // ignore: cast_nullable_to_non_nullable
              as bool,
      pendingNavigation: freezed == pendingNavigation
          ? _value.pendingNavigation
          : pendingNavigation // ignore: cast_nullable_to_non_nullable
              as NavigationInfo?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
      lastMessageAppState: freezed == lastMessageAppState
          ? _value.lastMessageAppState
          : lastMessageAppState // ignore: cast_nullable_to_non_nullable
              as AppState?,
      notifications: freezed == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<InkerNotification>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NavigationInfoCopyWith<$Res>? get pendingNavigation {
    if (_value.pendingNavigation == null) {
      return null;
    }

    return $NavigationInfoCopyWith<$Res>(_value.pendingNavigation!, (value) {
      return _then(_value.copyWith(pendingNavigation: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.fcmToken,
      this.permissionsGranted = false,
      this.pendingNavigation,
      this.lastMessage,
      this.lastMessageAppState,
      final List<InkerNotification>? notifications,
      this.isLoading = false,
      this.isRefreshing = false,
      this.hasError = false,
      this.errorMessage,
      this.currentPage = 1,
      this.totalPages = 1,
      this.unreadCount = 0})
      : _notifications = notifications;

  @override
  final String fcmToken;
  @override
  @JsonKey()
  final bool permissionsGranted;
  @override
  final NavigationInfo? pendingNavigation;
  @override
  final RemoteMessage? lastMessage;
  @override
  final AppState? lastMessageAppState;
// New properties for notification page
  final List<InkerNotification>? _notifications;
// New properties for notification page
  @override
  List<InkerNotification>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isRefreshing;
  @override
  @JsonKey()
  final bool hasError;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int totalPages;
  @override
  @JsonKey()
  final int unreadCount;

  @override
  String toString() {
    return 'NotificationsState.loaded(fcmToken: $fcmToken, permissionsGranted: $permissionsGranted, pendingNavigation: $pendingNavigation, lastMessage: $lastMessage, lastMessageAppState: $lastMessageAppState, notifications: $notifications, isLoading: $isLoading, isRefreshing: $isRefreshing, hasError: $hasError, errorMessage: $errorMessage, currentPage: $currentPage, totalPages: $totalPages, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.permissionsGranted, permissionsGranted) ||
                other.permissionsGranted == permissionsGranted) &&
            (identical(other.pendingNavigation, pendingNavigation) ||
                other.pendingNavigation == pendingNavigation) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageAppState, lastMessageAppState) ||
                other.lastMessageAppState == lastMessageAppState) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fcmToken,
      permissionsGranted,
      pendingNavigation,
      lastMessage,
      lastMessageAppState,
      const DeepCollectionEquality().hash(_notifications),
      isLoading,
      isRefreshing,
      hasError,
      errorMessage,
      currentPage,
      totalPages,
      unreadCount);

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
    required TResult Function(
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
        fcmToken,
        permissionsGranted,
        pendingNavigation,
        lastMessage,
        lastMessageAppState,
        notifications,
        isLoading,
        isRefreshing,
        hasError,
        errorMessage,
        currentPage,
        totalPages,
        unreadCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        fcmToken,
        permissionsGranted,
        pendingNavigation,
        lastMessage,
        lastMessageAppState,
        notifications,
        isLoading,
        isRefreshing,
        hasError,
        errorMessage,
        currentPage,
        totalPages,
        unreadCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          fcmToken,
          permissionsGranted,
          pendingNavigation,
          lastMessage,
          lastMessageAppState,
          notifications,
          isLoading,
          isRefreshing,
          hasError,
          errorMessage,
          currentPage,
          totalPages,
          unreadCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NotificationsState {
  const factory _Loaded(
      {required final String fcmToken,
      final bool permissionsGranted,
      final NavigationInfo? pendingNavigation,
      final RemoteMessage? lastMessage,
      final AppState? lastMessageAppState,
      final List<InkerNotification>? notifications,
      final bool isLoading,
      final bool isRefreshing,
      final bool hasError,
      final String? errorMessage,
      final int currentPage,
      final int totalPages,
      final int unreadCount}) = _$LoadedImpl;

  String get fcmToken;
  bool get permissionsGranted;
  NavigationInfo? get pendingNavigation;
  RemoteMessage? get lastMessage;
  AppState? get lastMessageAppState; // New properties for notification page
  List<InkerNotification>? get notifications;
  bool get isLoading;
  bool get isRefreshing;
  bool get hasError;
  String? get errorMessage;
  int get currentPage;
  int get totalPages;
  int get unreadCount;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$NotificationsStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'NotificationsState.error(message: $message)';
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
    required TResult Function(
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)
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
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)?
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
            String fcmToken,
            bool permissionsGranted,
            NavigationInfo? pendingNavigation,
            RemoteMessage? lastMessage,
            AppState? lastMessageAppState,
            List<InkerNotification>? notifications,
            bool isLoading,
            bool isRefreshing,
            bool hasError,
            String? errorMessage,
            int currentPage,
            int totalPages,
            int unreadCount)?
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NotificationsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigationInfo {
  String get route => throw _privateConstructorUsedError;
  dynamic get arguments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationInfoCopyWith<NavigationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationInfoCopyWith<$Res> {
  factory $NavigationInfoCopyWith(
          NavigationInfo value, $Res Function(NavigationInfo) then) =
      _$NavigationInfoCopyWithImpl<$Res, NavigationInfo>;
  @useResult
  $Res call({String route, dynamic arguments});
}

/// @nodoc
class _$NavigationInfoCopyWithImpl<$Res, $Val extends NavigationInfo>
    implements $NavigationInfoCopyWith<$Res> {
  _$NavigationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? arguments = freezed,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: freezed == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigationInfoImplCopyWith<$Res>
    implements $NavigationInfoCopyWith<$Res> {
  factory _$$NavigationInfoImplCopyWith(_$NavigationInfoImpl value,
          $Res Function(_$NavigationInfoImpl) then) =
      __$$NavigationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String route, dynamic arguments});
}

/// @nodoc
class __$$NavigationInfoImplCopyWithImpl<$Res>
    extends _$NavigationInfoCopyWithImpl<$Res, _$NavigationInfoImpl>
    implements _$$NavigationInfoImplCopyWith<$Res> {
  __$$NavigationInfoImplCopyWithImpl(
      _$NavigationInfoImpl _value, $Res Function(_$NavigationInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? arguments = freezed,
  }) {
    return _then(_$NavigationInfoImpl(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: freezed == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NavigationInfoImpl implements _NavigationInfo {
  const _$NavigationInfoImpl({required this.route, this.arguments});

  @override
  final String route;
  @override
  final dynamic arguments;

  @override
  String toString() {
    return 'NavigationInfo(route: $route, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationInfoImpl &&
            (identical(other.route, route) || other.route == route) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, route, const DeepCollectionEquality().hash(arguments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationInfoImplCopyWith<_$NavigationInfoImpl> get copyWith =>
      __$$NavigationInfoImplCopyWithImpl<_$NavigationInfoImpl>(
          this, _$identity);
}

abstract class _NavigationInfo implements NavigationInfo {
  const factory _NavigationInfo(
      {required final String route,
      final dynamic arguments}) = _$NavigationInfoImpl;

  @override
  String get route;
  @override
  dynamic get arguments;
  @override
  @JsonKey(ignore: true)
  _$$NavigationInfoImplCopyWith<_$NavigationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
