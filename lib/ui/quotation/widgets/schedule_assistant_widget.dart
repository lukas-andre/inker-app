import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/models/event_details.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/quotation/widgets/calendar_day_picker_v2.dart';
import 'package:inker_studio/utils/forms/capitalize_text_formatter.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleAssistantWidget extends StatefulWidget {
  final int artistId;
  final Function(DateTime, DateTime) onTimeRangeSelected;
  final DateTime? initialStartTime;
  final DateTime? initialEndTime;

  const ScheduleAssistantWidget({
    super.key,
    required this.artistId,
    required this.onTimeRangeSelected,
    this.initialStartTime,
    this.initialEndTime,
  });

  @override
  _ScheduleAssistantWidgetState createState() =>
      _ScheduleAssistantWidgetState();
}

class _ScheduleAssistantWidgetState extends State<ScheduleAssistantWidget> {
  late CalendarFormat _calendarFormat;
  late DateTime _focusedDay;
  DateTime? _selectedDay;
  List<EventDetails> _allEvents = [];
  List<EventDetails> _filteredEvents = [];

  final ScrollController _scrollController = ScrollController();
  final double _hourHeight = 60.0;

  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  int _durationInMinutes = 0;

  @override
  void initState() {
    super.initState();
    _calendarFormat = CalendarFormat.twoWeeks;
    _focusedDay = widget.initialStartTime ?? DateTime.now();
    _selectedDay = _focusedDay;
    _rangeStart = widget.initialStartTime;
    _rangeEnd = widget.initialEndTime;
    if (_rangeStart != null && _rangeEnd != null) {
      _durationInMinutes = _rangeEnd!.difference(_rangeStart!).inMinutes;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToCurrentTime();
    });

    context
        .read<ScheduleAssistantBloc>()
        .add(ScheduleAssistantEvent.started(widget.artistId));
  }

  void _scrollToCurrentTime() {
    final now = DateTime.now();
    final position = now.hour * _hourHeight + (now.minute / 60) * _hourHeight;
    _scrollController.jumpTo(position);
  }

  void _filterEventsForSelectedDay() {
    if (_selectedDay != null) {
      _filteredEvents = _allEvents
          .where((event) => isSameDay(event.startDate, _selectedDay!))
          .toList();
    } else {
      _filteredEvents = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScheduleAssistantBloc, ScheduleAssistantState>(
      listener: (context, state) {
        state.maybeWhen(
          loaded: (events, rangeStart, rangeEnd, selectedStart, selectedEnd) {
            setState(() {
              _allEvents = events;
              _filterEventsForSelectedDay();
            });
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            _buildCalendar(),
            _buildSelectedTimeRange(),
            Expanded(child: _buildHourlyEventList()),
          ],
        );
      },
    );
  }

  Widget _buildSelectedTimeRange() {
    if (_rangeStart != null && _rangeEnd != null) {
      final dateFormatter = DateFormat(
          'EEEE d MMMM', Localizations.localeOf(context).languageCode);
      final timeFormatter = DateFormat('HH:mm');
      final formattedDate = dateFormatter.format(_rangeStart!);
      final formattedStartTime = timeFormatter.format(_rangeStart!);
      final formattedEndTime = timeFormatter.format(_rangeEnd!);

      final durationInMinutes = _rangeEnd!.difference(_rangeStart!).inMinutes;

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.3)),
          ),
          child: Column(
            children: [
              Text(
                formattedDate.capitalize(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTimeChip(formattedStartTime),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).colorScheme.primary,
                      size: 20,
                    ),
                  ),
                  _buildTimeChip(formattedEndTime),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '${S.of(context).duration}: $durationInMinutes ${S.of(context).minutes}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildTimeChip(String time) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        time,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildCalendar() {
    return CalendarDayPickerV3(
      focusedDay: _focusedDay,
      selectedDay: _selectedDay,
      calendarFormat: _calendarFormat,
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
          _rangeStart = null;
          _rangeEnd = null;
          _durationInMinutes = 0;
          _filterEventsForSelectedDay();
        });
        context.read<ScheduleAssistantBloc>().add(
              ScheduleAssistantEvent.dateRangeChanged(selectedDay, selectedDay),
            );
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      eventLoader: (day) {
        return _allEvents
            .where((event) => isSameDay(event.startDate, day))
            .toList();
      },
    );
  }

  Widget _buildHourlyEventList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: 24,
      itemBuilder: (context, index) {
        final hour = index;
        final hourEvents = _filteredEvents
            .where((event) =>
                event.startDate.hour == hour ||
                (event.startDate.hour < hour && event.endDate.hour > hour))
            .toList();

        return GestureDetector(
          onTap: () => _onHourTapped(hour),
          child: Container(
            height: _hourHeight,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[300]!, width: 0.5),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 40,
                    height: _hourHeight,
                    child: Center(
                      child: Text(
                        '$hour:00',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ),
                  ),
                ),
                if (_rangeStart != null && _durationInMinutes > 0)
                  _buildTentativeEventItem(hour),
                ...hourEvents.map((event) => _buildEventItem(event, hour)),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTentativeEventItem(int hour) {
    if (_rangeStart == null || _durationInMinutes == 0) {
      return const SizedBox.shrink();
    }

    final startTime = _rangeStart!;
    final endTime = startTime.add(Duration(minutes: _durationInMinutes));

    // Check if the current hour is within the event's time range
    if (hour < startTime.hour ||
        hour >= endTime.hour + (endTime.minute > 0 ? 1 : 0)) {
      return const SizedBox.shrink();
    }

    double top = 0;
    double height = _hourHeight;

    // Calculate top position for the first hour
    if (hour == startTime.hour) {
      top = (startTime.minute / 60) * _hourHeight;
    }

    // Calculate height for the last hour
    if (hour == endTime.hour) {
      height = (endTime.minute / 60) * _hourHeight;
    } else if (hour == startTime.hour) {
      height = _hourHeight - top;
    }

    return Positioned(
      left: 40,
      top: top,
      right: 0,
      height: height,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
              color: Theme.of(context).colorScheme.primary, width: 2),
        ),
        child: Center(
          child: Text(
            S.of(context).quotationDate,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildEventItem(EventDetails event, int hour) {
    final startMinute = event.startDate.minute;
    final durationMinutes = event.endDate.difference(event.startDate).inMinutes;
    return Positioned(
      top: (startMinute / 60.0) * _hourHeight,
      left: 40,
      right: 0,
      height: (durationMinutes / 60.0) * _hourHeight,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            event.title,
            style: const TextStyle(fontSize: 12),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  void _setDuration(int minutes) {
    setState(() {
      _durationInMinutes = minutes;
      _rangeEnd = _rangeStart!.add(Duration(minutes: minutes));
    });

    widget.onTimeRangeSelected(_rangeStart!, _rangeEnd!);
  }

  void _onHourTapped(int hour) async {
    setState(() {
      _rangeStart = DateTime(
          _selectedDay!.year, _selectedDay!.month, _selectedDay!.day, hour);
      _durationInMinutes = 0;
      _rangeEnd = null;
    });

    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: hour, minute: 0),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _rangeStart = DateTime(_selectedDay!.year, _selectedDay!.month,
            _selectedDay!.day, picked.hour, picked.minute);
      });

      // Scroll to the selected time with bounce effect
      WidgetsBinding.instance.addPostFrameCallback((_) {
        scrollToSelectedTime(picked.hour, picked.minute);
      });

      // Mostrar el selector de duración
      _showDurationPicker();
    }
  }

  void scrollToSelectedTime(int hour, int minute) {
    final scrollPosition = (hour * _hourHeight) + (minute / 60 * _hourHeight);

    // This animation sequence not works as I expected lol, fix it in the future
    // if you want to improve the UX of the scroll to selected time
    _scrollController
        .animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutBack,
    )
        .then((_) {
      _scrollController
          .animateTo(
        scrollPosition - 80,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
      )
          .then((_) {
        _scrollController.animateTo(
          scrollPosition,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInOut,
        );
      });
    });
  }

  void _showDurationPicker() {
    final startTime = _rangeStart!;
    final endOfDay =
        DateTime(startTime.year, startTime.month, startTime.day, 23, 59);
    final maxDurationMinutes = endOfDay.difference(startTime).inMinutes;

    List<MapEntry<String, int>> durations = [];
    for (int minutes = 15; minutes <= maxDurationMinutes; minutes += 15) {
      final endTime = startTime.add(Duration(minutes: minutes));
      final durationString = _formatDuration(startTime, endTime);
      durations.add(MapEntry(durationString, minutes));
    }

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.75,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Text(
                  S.of(context).selectDuration,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              Expanded(
                child: RawScrollbar(
                  thumbColor:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                  radius: const Radius.circular(20),
                  thickness: 5,
                  child: ListView.builder(
                    itemCount: durations.length,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    itemBuilder: (context, index) {
                      final entry = durations[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: InkWell(
                          onTap: () {
                            _setDuration(entry.value);
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surface
                                  .withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  entry.key,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Text(
                                  '${entry.value} ${S.of(context).minutes}',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _formatDuration(DateTime start, DateTime end) {
    final formatter = DateFormat('HH:mm');
    return '${formatter.format(start)} - ${formatter.format(end)}';
  }
}
