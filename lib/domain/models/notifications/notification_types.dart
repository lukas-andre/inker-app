enum NotificationType {
  email,
  phone;

  String? get name {
    switch (this) {
      case NotificationType.email:
        return 'EMAIL';
      case NotificationType.phone:
        return 'SMS';
    }
  }
}
