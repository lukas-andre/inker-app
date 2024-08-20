import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/artist_agenda_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'hourly_event_list.dart';

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

class AgendaTablePage extends StatefulWidget {
  const AgendaTablePage({super.key});

  @override
  _AgendaTablePageState createState() => _AgendaTablePageState();
}

class _AgendaTablePageState extends State<AgendaTablePage>
    with AutomaticKeepAliveClientMixin {
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    context.read<ArtistAgendaBloc>().add(const ArtistAgendaEvent.started());
  }

  @override
  bool get wantKeepAlive => true;

  List<ArtistAgendaEventDetails> _getEventsForDay(
      DateTime day, List<ArtistAgendaEventDetails> allEvents) {
    return allEvents.where((event) => isSameDay(event.startDate, day)).toList();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(
          'Agenda',
          style: TextStyleTheme.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: primaryColor,
        elevation: 4.0,
        shadowColor: Colors.black54,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              context
                  .read<ArtistAgendaBloc>()
                  .add(const ArtistAgendaEvent.refreshed());
            },
          ),
        ],
      ),
      body: BlocBuilder<ArtistAgendaBloc, ArtistAgendaState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (events, focusedDay, selectedDay, format) {
              final allEvents = events;
              final currentSelectedDay = selectedDay ?? focusedDay;

              return Column(
                children: [
                  TableCalendar<ArtistAgendaEventDetails>(
                    firstDay: kFirstDay,
                    lastDay: kLastDay,
                    focusedDay: focusedDay,
                    selectedDayPredicate: (day) =>
                        isSameDay(currentSelectedDay, day),
                    calendarFormat: format,
                    rangeSelectionMode: RangeSelectionMode.toggledOff,
                    eventLoader: (day) => _getEventsForDay(day, allEvents),
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyleTheme.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                      weekendStyle: TextStyleTheme.copyWith(
                          color: secondaryColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                    ),
                    availableCalendarFormats: const {
                      CalendarFormat.month: 'Mes',
                      CalendarFormat.week: 'Semana',
                    },
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
                          fontSize: 14),
                      selectedTextStyle: TextStyleTheme.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                      todayTextStyle: TextStyleTheme.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                      defaultTextStyle: TextStyleTheme.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                      markerDecoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    headerStyle: HeaderStyle(
                      formatButtonVisible: true,
                      titleCentered: true,
                      formatButtonShowsNext: true,
                      formatButtonDecoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      titleTextFormatter: (date, locale) =>
                          DateFormat.yMMMM(locale)
                              .format(date)
                              .replaceAll(' de ', ' del '),
                      formatButtonTextStyle: TextStyleTheme.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                      titleTextStyle: TextStyleTheme.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      leftChevronIcon:
                          const Icon(Icons.chevron_left, color: Colors.white),
                      rightChevronIcon:
                          const Icon(Icons.chevron_right, color: Colors.white),
                    ),
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                      });
                      context.read<ArtistAgendaBloc>().add(
                            ArtistAgendaEvent.daySelected(
                                selectedDay, focusedDay),
                          );
                    },
                    onFormatChanged: (format) {
                      context.read<ArtistAgendaBloc>().add(
                            ArtistAgendaEvent.formatChanged(format),
                          );
                    },
                  ),
                  const SizedBox(height: 8.0),
                  Expanded(
                    child: HourlyEventList(
                      key: ValueKey(_selectedDay),
                      events: _getEventsForDay(currentSelectedDay, allEvents),
                    ),
                  ),
                ],
              );
            },
            error: (message) =>
                Center(child: Text('Error loading events: $message')),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/createEvent');
        },
        backgroundColor: secondaryColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
