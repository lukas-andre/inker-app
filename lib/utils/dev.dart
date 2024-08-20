import 'dart:developer' as developer;

// import 'package:sentry_flutter/sentry_flutter.dart';

class Developer {
  final className = 'Developer';

  void log(String message, String className, [String? method]) {
    var className0 = className;

    if (method != null) {
      className0 = '$className::$method';
    }
    developer.log(message, name: className0, time: DateTime.now());
  }

  void inspect(dynamic object, [String? message]) {
    log(
      [message, object.toString()].join(' '),
      className,
      'inspect',
    );
    developer.inspect(object);
  }

  void debugger({bool when = true, String? message}) {
    developer.debugger(when: when, message: message);
  }

  Future<void> logError(error, StackTrace stackTrace) async {
    // await Sentry.captureException(
    //   error,
    //   stackTrace: stackTrace,
    // );
    developer.log('$error',
        error: error.toString(), stackTrace: stackTrace, time: DateTime.now());
  }
}

final dev = Developer();
