class HttpClientConfig {
  static const String baseStgUrl = 'inker-back.herokuapp.com';
  static const String baseLocalUrl =
      '1740-2800-150-125-edd-38-7056-e05a-19f0.ngrok.io';

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
