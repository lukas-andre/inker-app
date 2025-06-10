import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class DateTimeFormatter {
  static const String _chileLocale = 'es_CL';
  static const String _chileTimeZone = 'America/Santiago';

  static void initialize() {
    tz.initializeTimeZones();
  }

  static DateTime toLocalTime(DateTime utcDateTime) {
    final chileLocation = tz.getLocation(_chileTimeZone);
    return tz.TZDateTime.from(utcDateTime, chileLocation);
  }

  static String formatDate(DateTime dateTime) {
    final localDate = toLocalTime(dateTime);
    return DateFormat('d MMM yyyy', _chileLocale).format(localDate);
  }

  static String formatTime(DateTime dateTime) {
    final localDate = toLocalTime(dateTime);
    return DateFormat('HH:mm', _chileLocale).format(localDate);
  }

  static String formatDateTime(DateTime dateTime) {
    final localDate = toLocalTime(dateTime);
    return DateFormat('d MMM yyyy HH:mm', _chileLocale).format(localDate);
  }

  static String formatDuration(DateTime start, DateTime end) {
    final duration = end.difference(start);
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    if (hours > 0) {
      return '$hours h ${minutes > 0 ? '$minutes min' : ''}';
    } else {
      return '$minutes min';
    }
  }

  static String formatForReviewElement(DateTime dateTime) {
    final localDate = toLocalTime(dateTime);
    return DateFormat('dd MMM y', _chileLocale).format(localDate);
  }
}
