class HttpClientConfig {
  static const String baseStgUrl = 'inker-back.herokuapp.com';
  static const String baseLocalUrl = '61b3-181-43-200-52.ngrok.io';

  final String _baseUrl;
  final String _basePath;

  HttpClientConfig({required String baseUrl, required String basePath})
      : _baseUrl = baseUrl,
        _basePath = basePath;

  Uri url({String? basePath, String? path, Map<String, dynamic>? queryParams}) {
    final urlBasePath = basePath ?? _basePath;

    final finalPath =
        path == null ? urlBasePath : [urlBasePath, path].join('/');

    return Uri.http(_baseUrl, finalPath, queryParams);
  }

  Uri surl(
      {String? basePath, String? path, Map<String, dynamic>? queryParams}) {
    final urlBasePath = basePath ?? _basePath;

    final finalPath =
        path != null ? urlBasePath : [urlBasePath, path].join('/');

    return Uri.https(_baseUrl, finalPath, queryParams);
  }
}
