import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/models/event_details.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/quotation/widgets/calendar_day_picker_v2.dart';
import 'package:inker_studio/ui/quotation/widgets/time_wheel_picker.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
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

  final ScrollController _scrollController = ScrollController();
  final double _hourHeight = 60.0;

  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  // ignore: unused_field
  int _durationInMinutes = 0;

  static const int _intervalsPerHour = 4; // 15-minute intervals
  static const double _cellHeight = 30.0; // Increased for better touch targets

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
      if (_rangeStart != null) {
        _scrollToSelectedTime(_rangeStart!.hour, _rangeStart!.minute);
      } else {
        _scrollToCurrentTime();
      }
    });

    context
        .read<ScheduleAssistantBloc>()
        .add(ScheduleAssistantEvent.started(widget.artistId));
  }

  void _scrollToSelectedTime(int hour, int minute) {
    final index = (hour * _intervalsPerHour) + (minute ~/ 15);
    final scrollPosition = index * _cellHeight;
    _scrollController.jumpTo(scrollPosition);
  }

  void _scrollToCurrentTime() {
    final now = DateTime.now();
    final position = now.hour * _hourHeight + (now.minute / 60) * _hourHeight;
    _scrollController.jumpTo(position);
  }

  void _filterEventsForSelectedDay() {
    if (_selectedDay != null) {
    } else {}
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
        return Stack(
          children: [
            Column(
              children: [
                _buildCalendar(),
                _buildTimeRangeSelector(),
                Expanded(child: _buildGridEventList()),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildTimeRangeSelector() {
    final dateFormatter =
        DateFormat('EEEE d MMMM', Localizations.localeOf(context).languageCode);
    // ignore: unused_local_variable
    final timeFormatter = DateFormat('HH:mm');

    String formattedDate = _selectedDay != null
        ? dateFormatter.format(_selectedDay!).capitalize()
        : S.of(context).selectDate;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            formattedDate,
            style: TextStyleTheme.subtitle1.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeSelector(
                label: S.of(context).start,
                time: _rangeStart,
                onTap: () => _showTimeWheelPicker(isStartTime: true),
              ),
              const Icon(Icons.arrow_forward, color: Colors.white),
              _buildTimeSelector(
                label: S.of(context).end,
                time: _rangeEnd,
                onTap: () => _showTimeWheelPicker(isStartTime: false),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSelector({
    required String label,
    required DateTime? time,
    required VoidCallback onTap,
  }) {
    final timeString =
        time != null ? DateFormat('HH:mm').format(time) : '--:--';
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Theme.of(context).colorScheme.primary),
        ),
        child: Column(
          children: [
            Text(label,
                style: const TextStyle(color: Colors.white, fontSize: 14)),
            const SizedBox(height: 4),
            Text(timeString,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  void _showTimeWheelPicker({required bool isStartTime}) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  isStartTime
                      ? S.of(context).selectStartTime
                      : S.of(context).selectEndTime,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ImprovedTimeWheelPicker(
                  initialTime: TimeOfDay.fromDateTime(isStartTime
                      ? (_rangeStart ?? DateTime.now())
                      : (_rangeEnd ??
                          DateTime.now().add(const Duration(hours: 1)))),
                  onTimeSelected: (selectedTime) {
                    setState(() {
                      if (isStartTime) {
                        _rangeStart = DateTime(
                          _selectedDay!.year,
                          _selectedDay!.month,
                          _selectedDay!.day,
                          selectedTime.hour,
                          selectedTime.minute,
                        );
                        if (_rangeEnd != null &&
                            _rangeEnd!.isBefore(_rangeStart!)) {
                          _rangeEnd =
                              _rangeStart!.add(const Duration(hours: 1));
                        }
                        // Set end automatically to start time + 1 hour if not set
                        if (_rangeEnd == null ||
                            _rangeEnd!.isBefore(_rangeStart!)) {
                          _rangeEnd =
                              _rangeStart!.add(const Duration(hours: 1));
                        }
                      } else {
                        _rangeEnd = DateTime(
                          _selectedDay!.year,
                          _selectedDay!.month,
                          _selectedDay!.day,
                          selectedTime.hour,
                          selectedTime.minute,
                        );
                        if (_rangeStart != null &&
                            _rangeEnd!.isBefore(_rangeStart!)) {
                          _rangeStart =
                              _rangeEnd!.subtract(const Duration(hours: 1));
                        }
                      }
                      _updateDuration();
                      _setCalendarFormatToWeek();
                      _scrollToTime(isStartTime ? _rangeStart! : _rangeEnd!);
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                  ),
                  child: Text(
                    S.of(context).confirm,
                    style: TextStyleTheme.button.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _updateDuration() {
    if (_rangeStart != null && _rangeEnd != null) {
      _durationInMinutes = _rangeEnd!.difference(_rangeStart!).inMinutes;
      widget.onTimeRangeSelected(_rangeStart!, _rangeEnd!);
    }
  }

  Widget _buildGridEventList() {
    return GridView.builder(
      controller: _scrollController,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisExtent: _cellHeight,
        mainAxisSpacing: 1,
      ),
      itemCount: 24 * 4, // 24 horas * 4 (intervalos de 15 minutos)
      itemBuilder: (context, index) {
        final hour = index ~/ 4;
        final minute = (index % 4) * 15;
        return _buildTimeCell(hour, minute);
      },
    );
  }

  Widget _buildTimeCell(int hour, int minute) {
    final cellStartTime = DateTime(_selectedDay!.year, _selectedDay!.month,
        _selectedDay!.day, hour, minute);
    final cellEndTime = cellStartTime.add(const Duration(minutes: 15));

    bool isWithinRange = false;
    bool isStart = false;
    bool isEnd = false;

    if (_rangeStart != null && _rangeEnd != null) {
      isWithinRange = cellStartTime.isAfter(_rangeStart!) &&
          cellStartTime.isBefore(_rangeEnd!);
      isStart = (_rangeStart!.isAfter(cellStartTime) &&
              _rangeStart!.isBefore(cellEndTime)) ||
          _rangeStart!.isAtSameMomentAs(cellStartTime);
      isEnd = (_rangeEnd!.isAfter(cellStartTime) &&
              _rangeEnd!.isBefore(cellEndTime)) ||
          _rangeEnd!.isAtSameMomentAs(cellStartTime);
    }

    // Incluimos la celda de inicio en el rango
    bool shouldColor = isWithinRange || isStart;

    return GestureDetector(
      onTap: () => _onTimeCellTapped(hour, minute),
      child: Container(
        decoration: BoxDecoration(
          color: shouldColor
              ? Theme.of(context).colorScheme.primary.withOpacity(0.2)
              : Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: Colors.transparent,
              width: minute % 15 == 0 ? 1 : 0.5,
            ),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              child: minute == 0
                  ? Text(
                      '${hour.toString().padLeft(2, '0')}:00',
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  : Text(
                      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
            ),
            Expanded(
              child: Stack(
                children: [
                  if (isStart)
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          S.of(context).start,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  if (isEnd)
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          S.of(context).end,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTimeCellTapped(int hour, int minute) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  S.of(context).selectStartTime,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ImprovedTimeWheelPicker(
                  initialTime: TimeOfDay(hour: hour, minute: minute),
                  onTimeSelected: (selectedTime) {
                    setState(() {
                      _rangeStart = DateTime(
                        _selectedDay!.year,
                        _selectedDay!.month,
                        _selectedDay!.day,
                        selectedTime.hour,
                        selectedTime.minute,
                      );
                      _rangeEnd = _rangeStart!.add(const Duration(hours: 1));
                      _updateDuration();
                      _setCalendarFormatToWeek();
                      _scrollToTime(_rangeStart!);
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                  ),
                  child: Text(
                    S.of(context).confirm,
                    style: TextStyleTheme.button.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _scrollToTime(DateTime time) {
    final scrollPosition = _calculateScrollPosition(time);
    _scrollController.animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutQuad,
    );
  }

  double _calculateScrollPosition(DateTime time) {
    final index = (time.hour * _intervalsPerHour) + (time.minute ~/ 15);
    return index * _cellHeight;
  }

  void _setCalendarFormatToWeek() {
    setState(() {
      _calendarFormat = CalendarFormat.week;
    });
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

  void scrollToSelectedTime(int hour, int minute) {
    final index = (hour * 4) + (minute ~/ 15);
    final scrollPosition = index * _cellHeight;

    _scrollController.animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutBack,
    );
  }
}
