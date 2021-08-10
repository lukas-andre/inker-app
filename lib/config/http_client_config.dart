class HttpClientConfig {
  static const String baseStgUrl = 'https://inker-back.herokuapp.com';
  static const String baseLocalUrl = 'http://b84bf8dd6702.ngrok.io';

  final String baseUrl;
  final String basePath;

  HttpClientConfig({required this.baseUrl, required this.basePath});

  Uri url({String? path, String? basePath}) {
    basePath ??= this.basePath;

    return path == null
        ? Uri.parse('$baseUrl/$basePath')
        : Uri.parse('$baseUrl/$basePath/$path');
  }
}
