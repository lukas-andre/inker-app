class Paginator {
  int _page = 1;
  int? _totalPages;
  final int _limit;

  Paginator({required int limit}) : _limit = limit;

  int get page => _page;
  int get limit => _limit;

  bool shouldSkip() => _totalPages != null && _page > _totalPages!;

  void reset() {
    _page = 1;
    _totalPages = null;
  }

  void updateTotalPages(int? totalPages) {
    _totalPages ??= totalPages;
  }

  void incrementPage() {
    _page++;
  }
}
