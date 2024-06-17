import 'package:flutter/material.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';

class TableCalendarDatePicker extends StatefulWidget {
  final DateTime selectedDay;
  final CalendarFormat calendarFormat;

  const TableCalendarDatePicker({
    super.key,
    required this.selectedDay,
    required this.calendarFormat,
  });

  @override
  _TableCalendarDatePickerState createState() =>
      _TableCalendarDatePickerState();
}

class _TableCalendarDatePickerState extends State<TableCalendarDatePicker> {
  late DateTime _focusedDay;
  late CalendarFormat _calendarFormat;

  @override
  void initState() {
    super.initState();
    _focusedDay = widget.selectedDay;
    _calendarFormat = widget.calendarFormat;
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime(2000),
      lastDay: DateTime(2101),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(widget.selectedDay, day),
      calendarFormat: _calendarFormat,
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
        });
        context.read<ArtistAgendaCreateEventBloc>().add(
            ArtistAgendaCreateEventEvent.dateChanged(
                selectedDay.toIso8601String()));
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      calendarStyle: CalendarStyle(
        selectedDecoration:
            BoxDecoration(color: secondaryColor, shape: BoxShape.circle),
        todayDecoration:
            BoxDecoration(color: tertiaryColor, shape: BoxShape.circle),
        weekendTextStyle: TextStyleTheme.copyWith(
            color: secondaryColor, fontWeight: FontWeight.normal, fontSize: 14),
        defaultTextStyle: TextStyleTheme.copyWith(
            color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14),
        markerDecoration:
            const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        formatButtonShowsNext: true,
        formatButtonDecoration: BoxDecoration(
            color: secondaryColor, borderRadius: BorderRadius.circular(20)),
        titleTextFormatter: (date, locale) =>
            DateFormat.yMMMM(locale).format(date).replaceAll(' de ', ' del '),
        formatButtonTextStyle: TextStyleTheme.copyWith(
            color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16),
        titleTextStyle: TextStyleTheme.copyWith(
            color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),
        leftChevronIcon: const Icon(Icons.chevron_left, color: Colors.white),
        rightChevronIcon: const Icon(Icons.chevron_right, color: Colors.white),
      ),
    );
  }
}
