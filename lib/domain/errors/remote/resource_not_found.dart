import 'package:inker_studio/domain/errors/remote/http_exception.dart';

class ResourceNotFound extends HttpException {
  ResourceNotFound({String? message})
      : super(message: message ??= 'Resource not found');
}
