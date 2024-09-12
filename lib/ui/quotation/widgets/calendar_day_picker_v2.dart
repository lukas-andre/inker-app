import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class CalendarDayPickerV3 extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime? selectedDay;
  final CalendarFormat calendarFormat;
  final Function(DateTime, DateTime) onDaySelected;
  final Function(CalendarFormat) onFormatChanged;
  final bool showError;
  final String? errorText;

  const CalendarDayPickerV3({
    super.key,
    required this.focusedDay,
    this.selectedDay,
    required this.calendarFormat,
    required this.onDaySelected,
    required this.onFormatChanged,
    this.showError = false,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TableCalendar(
          firstDay: DateTime(2000),
          lastDay: DateTime(2101),
          focusedDay: focusedDay,
          selectedDayPredicate: (day) =>
              selectedDay != null && isSameDay(selectedDay!, day),
          calendarFormat: calendarFormat,
          onDaySelected: onDaySelected,
          onFormatChanged: onFormatChanged,
          calendarStyle: CalendarStyle(
            selectedDecoration: BoxDecoration(
              color: secondaryColor,
              shape: BoxShape.circle,
            ),
            todayDecoration: BoxDecoration(
              color: tertiaryColor,
              shape: BoxShape.circle,
            ),
            weekendTextStyle: TextStyleTheme.copyWith(
              color: secondaryColor,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
            defaultTextStyle: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
            markerDecoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            formatButtonShowsNext: true,
            formatButtonDecoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            titleTextFormatter: (date, locale) => DateFormat.yMMMM(locale)
                .format(date)
                .replaceAll(' de ', ' del '),
            formatButtonTextStyle: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            titleTextStyle: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
            leftChevronIcon:
                const Icon(Icons.chevron_left, color: Colors.white),
            rightChevronIcon:
                const Icon(Icons.chevron_right, color: Colors.white),
          ),
        ),
        if (showError && errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Text(
              errorText!,
              style: TextStyleTheme.copyWith(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
