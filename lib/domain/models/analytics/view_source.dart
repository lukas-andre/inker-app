/// Sources from which a user can view content
enum ViewSource {
  search('search'),
  feed('feed'),
  profile('profile'),
  related('related'),
  direct('direct');

  final String value;
  const ViewSource(this.value);

  @override
  String toString() => value;

  static ViewSource fromString(String value) {
    return ViewSource.values.firstWhere(
      (e) => e.value == value,
      orElse: () => ViewSource.direct,
    );
  }
} 