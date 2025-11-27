import 'package:inker_studio/domain/errors/remote/http_exception.dart';

class BadRequest extends HttpException {
  BadRequest({String? message}) : super(message: message ??= 'Bad Request');
}

class Unauthorized extends HttpException {
  Unauthorized({String? message}) : super(message: message ??= 'Unauthorized');
}

class Forbidden extends HttpException {
  Forbidden({String? message}) : super(message: message ??= 'Forbidden');
}