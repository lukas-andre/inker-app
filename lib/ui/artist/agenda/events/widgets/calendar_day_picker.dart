import 'package:flutter/material.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/artist_agenda_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';

class CalendarDayPicker extends StatefulWidget {
  final Function(DateTime)? onDateSelected;

  const CalendarDayPicker({
    super.key,
    this.onDateSelected,
  });

  @override
  _CalendarDayPickerState createState() => _CalendarDayPickerState();
}

class _CalendarDayPickerState extends State<CalendarDayPicker> {
  late DateTime _focusedDay;
  late CalendarFormat _calendarFormat;

  @override
  void initState() {
    super.initState();

    final agendaSelectedDay = context.read<ArtistAgendaBloc>().state.maybeWhen(
          loaded: (events, focusedDay, selectedDay, format) => selectedDay,
          orElse: () => DateTime.now(),
        );

    _focusedDay = agendaSelectedDay ?? DateTime.now();
    _calendarFormat = CalendarFormat.twoWeeks;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ArtistAgendaCreateEventBloc,
        ArtistAgendaCreateEventState>(
      listener: (context, state) {
        setState(() {
          _focusedDay = DateTime.parse(state.date);
        });
      },
      child: TableCalendar(
        firstDay: DateTime(2000),
        lastDay: DateTime(2101),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) => isSameDay(_focusedDay, day),
        calendarFormat: _calendarFormat,
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _focusedDay = focusedDay;
          });
          
          // Format the date as YYYY-MM-DD for the API
          final String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDay);
          
          // Update the bloc state with the correctly formatted date
          context.read<ArtistAgendaCreateEventBloc>().add(
              ArtistAgendaCreateEventEvent.dateChanged(formattedDate));
          
          // Notify parent widget about the date change
          if (widget.onDateSelected != null) {
            widget.onDateSelected!(selectedDay);
          }
          
          print('CalendarDayPicker: Day selected: $formattedDate');
        },
        onFormatChanged: (format) {
          setState(() {
            _calendarFormat = format;
          });
        },
        calendarStyle: CalendarStyle(
          selectedDecoration:
              BoxDecoration(color: Theme.of(context).colorScheme.secondary, shape: BoxShape.circle),
          todayDecoration:
              BoxDecoration(color: Theme.of(context).colorScheme.tertiary, shape: BoxShape.circle),
          weekendTextStyle: TextStyleTheme.copyWith(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.normal,
              fontSize: 14),
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
              color: Theme.of(context).colorScheme.secondary, borderRadius: BorderRadius.circular(20)),
          titleTextFormatter: (date, locale) =>
              DateFormat.yMMMM(locale).format(date).replaceAll(' de ', ' del '),
          formatButtonTextStyle: TextStyleTheme.copyWith(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16),
          titleTextStyle: TextStyleTheme.copyWith(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),
          leftChevronIcon: const Icon(Icons.chevron_left, color: Colors.white),
          rightChevronIcon:
              const Icon(Icons.chevron_right, color: Colors.white),
        ),
      ),
    );
  }
}
