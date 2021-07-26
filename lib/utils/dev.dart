import 'dart:developer' as developer;

class Developer {
  final className = 'Developer';

  void log(String message, String context, [String? method]) {
    var contex = context;

    if (method != null) {
      contex = '$contex::$method';
    }
    developer.log(message, name: contex, time: DateTime.now());
  }

  void inspect(dynamic object) {
    log(
      object.toString(),
      className,
      'inspect',
    );
    developer.inspect(object);
  }

  void debugger({bool when = true, String? message}) {
    developer.debugger(when: when, message: message);
  }

  void logError(Object error, StackTrace stackTrace) {
    developer.log('$error',
        error: error.toString(), stackTrace: stackTrace, time: DateTime.now());
  }
}

final dev = Developer();
