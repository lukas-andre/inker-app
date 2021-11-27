import 'package:inker_studio/domain/errors/remote/http_exception.dart';

class BadRequest extends HttpException {
  BadRequest({String? message}) : super(message: message ??= 'Bad Request');
}
