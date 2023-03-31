import 'package:intl/intl.dart';

class DateTimeFormatter {
  static String formatForReviewElement(DateTime dateTime) {
    String formattedDate = DateFormat('dd MMM y', 'es_CL').format(dateTime);
    return formattedDate;
  }
}
