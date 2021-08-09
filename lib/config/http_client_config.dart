class HttpClientConfig {
  static const String baseStgUrl = 'https://inker-back.herokuapp.com';
  static const String baseLocalUrl = 'http://ee7e05e3d6ed.ngrok.io';

  final String baseUrl;
  final String basePath;

  HttpClientConfig({required this.baseUrl, required this.basePath});

  Uri url([String? path]) {
    return path == null
        ? Uri.parse('$baseUrl/$basePath')
        : Uri.parse('$baseUrl/$basePath/$path');
  }
}
