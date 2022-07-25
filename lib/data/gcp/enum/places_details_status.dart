enum PlacesDetailsStatus {
  ok,
  error,
  notFound,
  invalidRequest,
  overQueryLimit,
  requestDenied,
  unknownError;

  String get name {
    switch (this) {
      case PlacesDetailsStatus.ok:
        return 'OK';
      case PlacesDetailsStatus.error:
        return 'ERROR';
      case PlacesDetailsStatus.notFound:
        return 'NOT_FOUND';
      case PlacesDetailsStatus.invalidRequest:
        return 'INVALID_REQUEST';
      case PlacesDetailsStatus.overQueryLimit:
        return 'OVER_QUERY_LIMIT';
      case PlacesDetailsStatus.requestDenied:
        return 'REQUEST_DENIED';
      case PlacesDetailsStatus.unknownError:
        return 'UNKNOWN_ERROR';
    }
  }
}
