/// Types of content that can be tracked
enum ContentType {
  stencil('stencil'),
  work('work'),
  artistProfile('artist_profile');

  final String value;
  const ContentType(this.value);

  @override
  String toString() => value;

  static ContentType fromString(String value) {
    return ContentType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => ContentType.work,
    );
  }
} 