import 'package:inker_studio/domain/errors/remote/http_exception.dart';

class NotAcceptable extends HttpException {
  NotAcceptable({String? message})
      : super(message: message ?? 'Unprocessable Entity');
}
