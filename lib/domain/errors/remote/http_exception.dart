class HttpException implements Exception {
  final String? _message;

  HttpException({String? message}) : _message = message;

  String? get message => _message;
}
