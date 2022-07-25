import 'package:inker_studio/domain/errors/remote/http_exception.dart';

class HttpConflict extends HttpException {
  HttpConflict({String? message})
      : super(message: message ?? 'Unprocessable Entity');
}
