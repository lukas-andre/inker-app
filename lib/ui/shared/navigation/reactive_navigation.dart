import 'package:flutter/material.dart';
import 'package:inker_studio/domain/services/event_bus/app_event_bus.dart';

/// Reactive navigation helper that provides callbacks and event firing
/// for navigation events, enabling automatic data refresh and state updates
class ReactiveNavigation {
  /// Push a new route and optionally execute a callback when returning
  static Future<T?> push<T>({
    required BuildContext context,
    required Widget page,
    Function()? onReturn,
    bool fireNavigationEvent = true,
  }) async {
    // Fire navigation event if enabled
    if (fireNavigationEvent) {
      final routeName = page.runtimeType.toString();
      AppEventBus().fire(ScreenNavigatedEvent(
        routeName: routeName,
        arguments: null,
      ));
    }

    final result = await Navigator.push<T>(
      context,
      MaterialPageRoute(builder: (_) => page),
    );

    // Execute callback if provided
    onReturn?.call();

    return result;
  }

  /// Push a named route and optionally execute a callback when returning
  static Future<T?> pushNamed<T>({
    required BuildContext context,
    required String routeName,
    Object? arguments,
    Function()? onReturn,
    bool fireNavigationEvent = true,
  }) async {
    // Fire navigation event if enabled
    if (fireNavigationEvent) {
      AppEventBus().fire(ScreenNavigatedEvent(
        routeName: routeName,
        arguments: arguments,
      ));
    }

    final result = await Navigator.pushNamed<T>(
      context,
      routeName,
      arguments: arguments,
    );

    // Execute callback if provided
    onReturn?.call();

    return result;
  }

  /// Push replacement route with optional callback
  static Future<T?> pushReplacement<T, TO>({
    required BuildContext context,
    required Widget page,
    TO? result,
    Function()? onComplete,
    bool fireNavigationEvent = true,
  }) async {
    // Fire navigation event if enabled
    if (fireNavigationEvent) {
      final routeName = page.runtimeType.toString();
      AppEventBus().fire(ScreenNavigatedEvent(
        routeName: routeName,
        arguments: null,
      ));
    }

    final navResult = await Navigator.pushReplacement<T, TO>(
      context,
      MaterialPageRoute(builder: (_) => page),
      result: result,
    );

    // Execute callback if provided
    onComplete?.call();

    return navResult;
  }

  /// Push named replacement route with optional callback
  static Future<T?> pushNamedReplacement<T, TO>({
    required BuildContext context,
    required String routeName,
    TO? result,
    Object? arguments,
    Function()? onComplete,
    bool fireNavigationEvent = true,
  }) async {
    // Fire navigation event if enabled
    if (fireNavigationEvent) {
      AppEventBus().fire(ScreenNavigatedEvent(
        routeName: routeName,
        arguments: arguments,
      ));
    }

    final navResult = await Navigator.pushNamedAndRemoveUntil<T>(
      context,
      routeName,
      (route) => false,
      arguments: arguments,
    );

    // Execute callback if provided
    onComplete?.call();

    return navResult;
  }

  /// Pop current route with optional result and callback
  static void pop<T>({
    required BuildContext context,
    T? result,
    Function()? onPop,
  }) {
    // Execute callback if provided
    onPop?.call();

    Navigator.pop(context, result);
  }

  /// Pop until a specific route
  static void popUntil({
    required BuildContext context,
    required RoutePredicate predicate,
    Function()? onComplete,
  }) {
    Navigator.popUntil(context, predicate);

    // Execute callback if provided
    onComplete?.call();
  }

  /// Push and remove all routes until
  static Future<T?> pushNamedAndRemoveUntil<T>({
    required BuildContext context,
    required String newRouteName,
    required RoutePredicate predicate,
    Object? arguments,
    Function()? onComplete,
    bool fireNavigationEvent = true,
  }) async {
    // Fire navigation event if enabled
    if (fireNavigationEvent) {
      AppEventBus().fire(ScreenNavigatedEvent(
        routeName: newRouteName,
        arguments: arguments,
      ));
    }

    final result = await Navigator.pushNamedAndRemoveUntil<T>(
      context,
      newRouteName,
      predicate,
      arguments: arguments,
    );

    // Execute callback if provided
    onComplete?.call();

    return result;
  }

  /// Navigate with automatic refresh trigger for specific data types
  static Future<T?> pushForResult<T>({
    required BuildContext context,
    required Widget page,
    required String dataTypeToRefresh,
    String? userId,
  }) async {
    // Fire navigation event
    final routeName = page.runtimeType.toString();
    AppEventBus().fire(ScreenNavigatedEvent(
      routeName: routeName,
      arguments: null,
    ));

    final result = await Navigator.push<T>(
      context,
      MaterialPageRoute(builder: (_) => page),
    );

    // Fire refresh event after returning
    AppEventBus().fire(RefreshRequestedEvent(
      dataType: dataTypeToRefresh,
      userId: userId,
    ));

    return result;
  }

  /// Navigate to named route with automatic refresh trigger
  static Future<T?> pushNamedForResult<T>({
    required BuildContext context,
    required String routeName,
    Object? arguments,
    required String dataTypeToRefresh,
    String? userId,
  }) async {
    // Fire navigation event
    AppEventBus().fire(ScreenNavigatedEvent(
      routeName: routeName,
      arguments: arguments,
    ));

    final result = await Navigator.pushNamed<T>(
      context,
      routeName,
      arguments: arguments,
    );

    // Fire refresh event after returning
    AppEventBus().fire(RefreshRequestedEvent(
      dataType: dataTypeToRefresh,
      userId: userId,
    ));

    return result;
  }
}

/// Extension methods for easier navigation with callbacks
extension ReactiveNavigatorExtension on NavigatorState {
  /// Push with callback on return
  Future<T?> pushWithCallback<T>({
    required Widget page,
    Function()? onReturn,
  }) {
    return ReactiveNavigation.push<T>(
      context: context,
      page: page,
      onReturn: onReturn,
    );
  }

  /// Push named with callback on return
  Future<T?> pushNamedWithCallback<T>({
    required String routeName,
    Object? arguments,
    Function()? onReturn,
  }) {
    return ReactiveNavigation.pushNamed<T>(
      context: context,
      routeName: routeName,
      arguments: arguments,
      onReturn: onReturn,
    );
  }

  /// Push for result with automatic refresh
  Future<T?> pushForRefresh<T>({
    required Widget page,
    required String dataTypeToRefresh,
    String? userId,
  }) {
    return ReactiveNavigation.pushForResult<T>(
      context: context,
      page: page,
      dataTypeToRefresh: dataTypeToRefresh,
      userId: userId,
    );
  }

  /// Push named for result with automatic refresh
  Future<T?> pushNamedForRefresh<T>({
    required String routeName,
    Object? arguments,
    required String dataTypeToRefresh,
    String? userId,
  }) {
    return ReactiveNavigation.pushNamedForResult<T>(
      context: context,
      routeName: routeName,
      arguments: arguments,
      dataTypeToRefresh: dataTypeToRefresh,
      userId: userId,
    );
  }
}