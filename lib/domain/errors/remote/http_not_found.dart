class HttpNotFound implements Exception {
  final String? _message;

  HttpNotFound({String? message}) : _message = message;

  String? get message => _message;
}
