import 'package:inker_studio/domain/errors/remote/http_exception.dart';

class UnHandledException extends HttpException {
  UnHandledException({String? message})
      : super(message: message ?? 'Unprocessable Entity');
}
