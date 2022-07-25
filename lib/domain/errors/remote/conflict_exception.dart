import 'package:inker_studio/domain/errors/remote/http_exception.dart';

class ConflictException extends HttpException {
  ConflictException({String? message})
      : super(message: message ?? 'Conflict Exception');
}
