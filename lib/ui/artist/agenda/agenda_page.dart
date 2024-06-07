import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/artist_agenda_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'hourly_event_list.dart';

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

class TableEventsExample extends StatelessWidget {
  const TableEventsExample({super.key});

  List<ArtistAgendaEventDetails> _getEventsForDay(
      DateTime day, List<ArtistAgendaEventDetails> allEvents) {
    return allEvents.where((event) => isSameDay(event.startDate, day)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Agenda',
          style: TextStyleTheme.copyWith(color: Colors.white),
        ),
        backgroundColor: primaryColor,
      ),
      body: BlocBuilder<ArtistAgendaBloc, ArtistAgendaState>(
        builder: (context, state) {
          if (state is ArtistAgendaStateLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ArtistAgendaStateLoaded) {
            final allEvents = state.events;
            DateTime focusedDay = DateTime.now();
            DateTime? selectedDay = focusedDay;

            return Column(
              children: [
                TableCalendar<ArtistAgendaEventDetails>(
                  firstDay: kFirstDay,
                  lastDay: kLastDay,
                  focusedDay: focusedDay,
                  selectedDayPredicate: (day) => isSameDay(selectedDay, day),
                  calendarFormat: CalendarFormat.month,
                  rangeSelectionMode: RangeSelectionMode.toggledOff,
                  eventLoader: (day) => _getEventsForDay(day, allEvents),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  calendarStyle: CalendarStyle(
                    selectedDecoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                    ),
                    todayDecoration: BoxDecoration(
                      color: tertiaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  headerStyle: HeaderStyle(
                    formatButtonVisible: true,
                    titleCentered: true,
                    formatButtonShowsNext: false,
                    formatButtonDecoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    formatButtonTextStyle: TextStyle(color: Colors.white),
                  ),
                  onDaySelected: (selectedDay, focusedDay) {
                    context.read<ArtistAgendaBloc>().add(
                          const ArtistAgendaEvent
                              .loadEvents(), // Assuming it reloads with the new day
                        );
                    focusedDay = focusedDay;
                    selectedDay = selectedDay;
                  },
                  onFormatChanged: (format) {
                    // Do nothing
                  },
                  onPageChanged: (focusedDay) {
                    focusedDay = focusedDay;
                  },
                ),
                const SizedBox(height: 8.0),
                Expanded(
                  child: HourlyEventList(
                    events: _getEventsForDay(selectedDay!, allEvents),
                  ),
                ),
              ],
            );
          } else if (state is ArtistAgendaStateError) {
            return Center(
                child: Text('Error loading events: ${state.message}'));
          } else {
            return const Center(child: Text('No events found.'));
          }
        },
      ),
    );
  }
}
