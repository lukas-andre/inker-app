class HttpClientConfig {
  static const String baseStgUrl = 'api.inkerapp.com';
  static const String baseLocalUrl = 'e547-181-43-217-116.ngrok.io';

  final String _baseUrl;
  final String _basePath;

  HttpClientConfig(
      {String baseUrl = HttpClientConfig.baseStgUrl, required String basePath})
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

    return Uri.https(urlBasePath, finalPath, queryParams);
  }

  Uri https(
      {required String basePath,
      required String path,
      Map<String, dynamic>? queryParams}) {
    return Uri.https(basePath, [basePath, path].join('/'), queryParams);
  }
}
