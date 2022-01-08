class TimestampColumnHelper {
  static T setColumns<T>(dynamic entity, bool isNew) {
    final now = DateTime.now().millisecondsSinceEpoch;
    if (isNew) {
      entity['createdAt'] = now;
    }
    entity['updatedAt'] = now;

    return entity;
  }
}
