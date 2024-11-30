class CustomerQuotationTestData {
  static const artistName = '@elnata';
  static const quotationDescription =
      'Me gustaría un tatuaje de un dragón japonés en el brazo';
  static var quotationDate = DateTime.now().add(const Duration(days: 1));

  static const Map<String, String> quotationStates = {
    'pending': 'Pendiente',
    'cancelled': 'Cancelada',
    'rejected': 'Rechazada',
    'accepted': 'Aceptada',
  };

  static DateTime getValidQuotationDate() {
    final now = DateTime.now();
    final tomorrow = now.add(const Duration(days: 1));

    // Si mañana es fin de mes, usamos el primer día del próximo mes
    if (_isLastDayOfMonth(tomorrow)) {
      return _getFirstDayOfNextMonth(now);
    }

    // Si mañana es domingo, usamos el lunes
    if (tomorrow.weekday == DateTime.sunday) {
      return tomorrow.add(const Duration(days: 1));
    }

    return tomorrow;
  }

  // Verifica si una fecha es el último día del mes
  static bool _isLastDayOfMonth(DateTime date) {
    final nextDay = date.add(const Duration(days: 1));
    return date.month != nextDay.month;
  }

  // Obtiene el primer día del próximo mes
  static DateTime _getFirstDayOfNextMonth(DateTime date) {
    if (date.month == 12) {
      return DateTime(date.year + 1, 1, 1); // Primer día del próximo año
    }
    return DateTime(date.year, date.month + 1, 1); // Primer día del próximo mes
  }
}
