import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/artist_agenda_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_settings/artist_agenda_settings_bloc.dart';
import 'package:inker_studio/ui/artist/agenda/agenda_settings_page.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'hourly_event_list.dart';

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 18, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 18, kToday.day);

enum CalendarViewType {
  day,
  week,
  month,
}

class AgendaTablePage extends StatefulWidget {
  const AgendaTablePage({super.key});

  @override
  _AgendaTablePageState createState() => _AgendaTablePageState();
}

class _AgendaTablePageState extends State<AgendaTablePage>
    with AutomaticKeepAliveClientMixin {
  DateTime? _selectedDay;
  CalendarViewType _currentView = CalendarViewType.week;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    context.read<ArtistAgendaBloc>().add(const ArtistAgendaEvent.started());
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  List<ArtistAgendaEventDetails> _getEventsForDay(
      DateTime day, List<ArtistAgendaEventDetails> allEvents) {
    return allEvents.where((event) => isSameDay(event.startDate, day)).toList();
  }

  List<ArtistAgendaEventDetails> _getEventsForWeek(
      DateTime day, List<ArtistAgendaEventDetails> allEvents) {
    final firstDayOfWeek = day.subtract(Duration(days: day.weekday - 1));
    final lastDayOfWeek = firstDayOfWeek.add(const Duration(days: 6));
    
    return allEvents.where((event) {
      return (event.startDate.isAfter(firstDayOfWeek.subtract(const Duration(days: 1))) &&
              event.startDate.isBefore(lastDayOfWeek.add(const Duration(days: 1))));
    }).toList();
  }

  // Helper method to get event color based on properties
  Color _getEventColor(ArtistAgendaEventDetails event) {
    // Check if it's a meeting or unavailable time by examining title
    if (event.title.toLowerCase().contains('unavailable') || 
        event.title.toLowerCase().contains('blocked')) {
      return Colors.grey.shade700;
    }
    
    // Regular appointment
    return secondaryColor;
  }
  
  Widget _buildViewSelector(DateTime focusedDay) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: _buildViewButton(
              title: 'Day',
              isSelected: _currentView == CalendarViewType.day,
              onTap: () {
                setState(() {
                  _currentView = CalendarViewType.day;
                });
                context.read<ArtistAgendaBloc>().add(
                  ArtistAgendaEvent.formatChanged(CalendarFormat.week),
                );
              },
            ),
          ),
          Expanded(
            child: _buildViewButton(
              title: 'Week',
              isSelected: _currentView == CalendarViewType.week,
              onTap: () {
                setState(() {
                  _currentView = CalendarViewType.week;
                });
                context.read<ArtistAgendaBloc>().add(
                  ArtistAgendaEvent.formatChanged(CalendarFormat.week),
                );
              },
            ),
          ),
          Expanded(
            child: _buildViewButton(
              title: 'Month',
              isSelected: _currentView == CalendarViewType.month,
              onTap: () {
                setState(() {
                  _currentView = CalendarViewType.month;
                });
                context.read<ArtistAgendaBloc>().add(
                  ArtistAgendaEvent.formatChanged(CalendarFormat.month),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildViewButton({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          color: isSelected ? secondaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyleTheme.copyWith(
            color: Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildEventMarker(
      ArtistAgendaEventDetails event, DateTime day, Color eventColor) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 1.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: eventColor,
      ),
    );
  }

  Widget _buildDayCalendar(
      DateTime focusedDay, DateTime selectedDay, List<ArtistAgendaEventDetails> events) {
    final dayEvents = _getEventsForDay(selectedDay, events);
    
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_left, color: Colors.white),
                onPressed: () {
                  final previousDay = selectedDay.subtract(const Duration(days: 1));
                  context.read<ArtistAgendaBloc>().add(
                    ArtistAgendaEvent.daySelected(previousDay, previousDay),
                  );
                },
              ),
              Expanded(
                child: Text(
                  DateFormat('EEEE, MMMM d, yyyy').format(selectedDay),
                  style: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.chevron_right, color: Colors.white),
                onPressed: () {
                  final nextDay = selectedDay.add(const Duration(days: 1));
                  context.read<ArtistAgendaBloc>().add(
                    ArtistAgendaEvent.daySelected(nextDay, nextDay),
                  );
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 8.0),
        Expanded(
          child: HourlyEventList(
            key: ValueKey(selectedDay),
            events: dayEvents,
          ),
        ),
      ],
    );
  }

  Widget _buildWeekCalendar(
      DateTime focusedDay, DateTime selectedDay, List<ArtistAgendaEventDetails> events) {
    final weekEvents = _getEventsForWeek(focusedDay, events);
    
    return Column(
      children: [
        TableCalendar<ArtistAgendaEventDetails>(
          calendarBuilders: CalendarBuilders(
            markerBuilder: (context, date, events) {
              if (events.isEmpty) return null;
              
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: events.take(3).map((event) {
                  return _buildEventMarker(event, date, _getEventColor(event));
                }).toList(),
              );
            },
          ),
          firstDay: kFirstDay,
          lastDay: kLastDay,
          focusedDay: focusedDay,
          selectedDayPredicate: (day) => isSameDay(selectedDay, day),
          calendarFormat: CalendarFormat.week,
          rangeSelectionMode: RangeSelectionMode.toggledOff,
          eventLoader: (day) => _getEventsForDay(day, events),
          startingDayOfWeek: StartingDayOfWeek.monday,
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            weekendStyle: TextStyleTheme.copyWith(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          availableCalendarFormats: const {
            CalendarFormat.week: '',
          },
          calendarStyle: CalendarStyle(
            outsideDaysVisible: false,
            selectedDecoration: BoxDecoration(
              color: secondaryColor,
              shape: BoxShape.circle,
            ),
            todayDecoration: BoxDecoration(
              color: tertiaryColor.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            weekendTextStyle: TextStyleTheme.copyWith(
              color: Colors.white70,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
            selectedTextStyle: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            todayTextStyle: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
            defaultTextStyle: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextFormatter: (date, locale) =>
              DateFormat('MMMM yyyy', locale).format(date),
            leftChevronIcon: const Icon(Icons.chevron_left, color: Colors.white),
            rightChevronIcon: const Icon(Icons.chevron_right, color: Colors.white),
            titleTextStyle: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
            });
            context.read<ArtistAgendaBloc>().add(
              ArtistAgendaEvent.daySelected(selectedDay, focusedDay),
            );
          },
        ),
        const SizedBox(height: 8.0),
        Expanded(
          child: HourlyEventList(
            key: ValueKey(selectedDay),
            events: _getEventsForDay(selectedDay, events),
          ),
        ),
      ],
    );
  }

  Widget _buildMonthCalendar(
      DateTime focusedDay, DateTime selectedDay, List<ArtistAgendaEventDetails> events) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate appropriate sizes for this layout
        final calendarHeight = constraints.maxHeight * 0.56; // 56% for calendar
        
        return Column(
          children: [
            SizedBox(
              height: calendarHeight,
              child: TableCalendar<ArtistAgendaEventDetails>(
                calendarBuilders: CalendarBuilders(
                  markerBuilder: (context, date, events) {
                    if (events.isEmpty) return null;
                    
                    return Positioned(
                      bottom: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: events.take(3).map((event) {
                          return _buildEventMarker(event, date, _getEventColor(event));
                        }).toList(),
                      ),
                    );
                  },
                ),
                firstDay: kFirstDay,
                lastDay: kLastDay,
                focusedDay: focusedDay,
                selectedDayPredicate: (day) => isSameDay(selectedDay, day),
                calendarFormat: CalendarFormat.month,
                rangeSelectionMode: RangeSelectionMode.toggledOff,
                eventLoader: (day) => _getEventsForDay(day, events),
                startingDayOfWeek: StartingDayOfWeek.monday,
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  weekendStyle: TextStyleTheme.copyWith(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  selectedDecoration: BoxDecoration(
                    color: secondaryColor,
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color: tertiaryColor.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  weekendTextStyle: TextStyleTheme.copyWith(
                    color: Colors.white70,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  selectedTextStyle: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  todayTextStyle: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  defaultTextStyle: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  outsideTextStyle: TextStyleTheme.copyWith(
                    color: Colors.white38,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextFormatter: (date, locale) =>
                    DateFormat('MMMM yyyy', locale).format(date),
                  leftChevronIcon: const Icon(Icons.chevron_left, color: Colors.white),
                  rightChevronIcon: const Icon(Icons.chevron_right, color: Colors.white),
                  titleTextStyle: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                  });
                  context.read<ArtistAgendaBloc>().add(
                    ArtistAgendaEvent.daySelected(selectedDay, focusedDay),
                  );
                },
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Events for ${DateFormat('MMM d, yyyy').format(selectedDay)}',
                        style: TextStyleTheme.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: _buildDayEventsList(_getEventsForDay(selectedDay, events)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }
    );
  }

  Widget _buildDayEventsList(List<ArtistAgendaEventDetails> dayEvents) {
    if (dayEvents.isEmpty) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Icon(Icons.event_busy, color: tertiaryColor, size: 36),
                    const SizedBox(height: 12),
                    Text(
                      'No events for this day',
                      style: TextStyleTheme.copyWith(
                        color: Colors.white70,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        }
      );
    }

    // Sort events by start time
    final sortedDayEvents = List<ArtistAgendaEventDetails>.from(dayEvents)
      ..sort((a, b) => a.startDate.compareTo(b.startDate));

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      physics: const AlwaysScrollableScrollPhysics(), // Always allow scrolling
      itemCount: sortedDayEvents.length,
      itemBuilder: (context, index) {
        final event = sortedDayEvents[index];
        return _buildEventCard(event);
      },
    );
  }

  Widget _buildEventCard(ArtistAgendaEventDetails event) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      color: Colors.black45,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: _getEventColor(event),
          width: 2,
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/agendaEventDetail',
            arguments: int.parse(event.id),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _getEventColor(event),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      event.title,
                      style: TextStyleTheme.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: tertiaryColor,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${DateFormat('h:mm a').format(event.startDate)} - ${DateFormat('h:mm a').format(event.endDate)}',
                    style: TextStyleTheme.copyWith(
                      color: Colors.white70,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              if (event.description.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  event.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyleTheme.copyWith(
                    color: Colors.white70,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
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
            color: Colors.white, 
            fontWeight: FontWeight.bold, 
            fontSize: 24
          ),
        ),
        backgroundColor: primaryColor,
        elevation: 4.0,
        shadowColor: Colors.black54,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) => ArtistAgendaSettingsBloc(
                      agendaService: context.read(),
                      sessionService: context.read(),
                    ),
                    child: const AgendaSettingsPage(),
                  ),
                ),
              );
            },
          ),
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

              // Create a mutable copy of the events list before sorting
              final sortedEvents = List<ArtistAgendaEventDetails>.from(allEvents)
                ..sort((a, b) => a.startDate.compareTo(b.startDate));

              return Column(
                children: [
                  _buildViewSelector(focusedDay),
                  Expanded(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: _currentView == CalendarViewType.day
                          ? _buildDayCalendar(focusedDay, currentSelectedDay, sortedEvents)
                          : _currentView == CalendarViewType.week
                              ? _buildWeekCalendar(focusedDay, currentSelectedDay, sortedEvents)
                              : _buildMonthCalendar(focusedDay, currentSelectedDay, sortedEvents),
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
        elevation: 4,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
