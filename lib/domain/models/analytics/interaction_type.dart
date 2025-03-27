/// Types of user interactions that can be tracked
enum InteractionType {
  view('view'),
  like('like'),
  impression('impression'),
  conversion('conversion'),
  follow('follow');

  final String value;
  const InteractionType(this.value);

  @override
  String toString() => value;

  static InteractionType fromString(String value) {
    return InteractionType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => InteractionType.view,
    );
  }
} 