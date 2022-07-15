import 'package:inker_studio/domain/errors/remote/http_exception.dart';

class UnprocessableEntity extends HttpException {
  UnprocessableEntity({String? message})
      : super(message: message ?? 'Unprocessable Entity');
}
