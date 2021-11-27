import 'package:inker_studio/domain/errors/remote/http_exception.dart';

class InternalServerException extends HttpException {
  InternalServerException({String? message})
      : super(message: message ??= 'Internal Server Error');
}
