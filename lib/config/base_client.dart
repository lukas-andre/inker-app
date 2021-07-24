class HttpClientConfig {
  static const String baseStgUrl = 'https://inker-back.herokuapp.com';

  final String baseUrl;
  final String basePath;

  HttpClientConfig({required this.baseUrl, required this.basePath});

  Uri url(String path) {
    return Uri.parse('$baseUrl/$basePath/$path');
  }
}
