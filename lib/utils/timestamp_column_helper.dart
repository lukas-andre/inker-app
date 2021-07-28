class TimestampColumnHelper {
  static T setColumns<T>(dynamic entity, bool isNew) {
    final now = DateTime.now().toIso8601String();
    if (isNew) {
      entity['createdAt'] = now;
    }
    entity['updatedAt'] = now;

    return entity;
  }
}
