import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:inker_studio/data/api/agenda/dtos/schedule_response.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class EnhancedCalendarView extends StatefulWidget {
  final String artistId;
  final DateTime selectedDate;
  final Function(DateTime)? onDateSelected;
  final List<String>? workingDays;

  const EnhancedCalendarView({
    super.key,
    required this.artistId,
    required this.selectedDate,
    this.onDateSelected,
    this.workingDays,
  });

  @override
  State<EnhancedCalendarView> createState() => _EnhancedCalendarViewState();
}

class _EnhancedCalendarViewState extends State<EnhancedCalendarView> {
  late final PageController _pageController;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _focusedDay = widget.selectedDate;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<dynamic> _getEventsForDay(DateTime day, List<ScheduleEvent> events,
      List<ScheduleQuotation> quotations) {
    final dayEvents = <dynamic>[];

    // Add events for the day
    for (final event in events) {
      if (isSameDay(event.startDate, day)) {
        dayEvents.add(event);
      }
    }

    // Add quotations with proposed dates
    for (final quotation in quotations) {
      if (quotation.proposedDate != null &&
          isSameDay(quotation.proposedDate!, day)) {
        dayEvents.add(quotation);
      }
    }

    return dayEvents;
  }

  Widget _buildEventMarker(BuildContext context, dynamic item) {
    Color color;
    IconData? icon;

    if (item is ScheduleEvent) {
      switch (item.category) {
        case 'confirmed':
          color = Colors.green;
          icon = Icons.check_circle;
          break;
        case 'tentative':
          color = Colors.orange;
          icon = Icons.schedule;
          break;
        default:
          color = Theme.of(context).colorScheme.primary;
      }
    } else if (item is ScheduleQuotation) {
      switch (item.category) {
        case 'actionable':
          color = Theme.of(context).colorScheme.error;
          icon = Icons.notification_important;
          break;
        case 'opportunity':
          color = Colors.blue;
          icon = Icons.lightbulb;
          break;
        default:
          color = Theme.of(context).colorScheme.secondary;
      }
    } else {
      color = Colors.grey;
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1.5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      width: 7,
      height: 7,
      child: icon != null ? Icon(icon, size: 5, color: Colors.white) : null,
    );
  }

  Widget _buildCalendarDay(
    BuildContext context,
    DateTime day,
    DateTime focusedDay,
    List<ScheduleEvent> events,
    List<ScheduleQuotation> quotations,
    List<String>? workingDays,
  ) {
    final dayEvents = _getEventsForDay(day, events, quotations);
    final isSelected = isSameDay(widget.selectedDate, day);
    final isToday = isSameDay(DateTime.now(), day);
    // Check if it's a working day (1 = Monday, 7 = Sunday)
    final isWorkingDay = workingDays?.contains(day.weekday.toString()) ?? true;

    return GestureDetector(
      onTap: () {
        setState(() {
          _focusedDay = day;
        });

        // Notify parent widget
        widget.onDateSelected?.call(day);

        // Fetch data for the selected day
        context.read<ScheduleAssistantBloc>().add(
              ScheduleAssistantEvent.scheduleDataRequested(
                artistId: widget.artistId,
                fromDate: day,
                toDate: day.add(const Duration(days: 1)),
              ),
            );
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background circle for today/selected
            if (isToday || isSelected)
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: isSelected
                      ? secondaryColor
                      : secondaryColor.withOpacity(0.2),
                  shape: BoxShape.circle,
                  border: isToday && !isSelected
                      ? Border.all(
                          color: secondaryColor,
                          width: 2,
                        )
                      : null,
                ),
              ),
            // Day content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${day.day}',
                  style: TextStyle(
                    color: isSelected
                        ? Colors.white
                        : isToday
                            ? secondaryColor
                            : !isWorkingDay
                                ? tertiaryColor.withOpacity(0.4)
                                : quaternaryColor,
                    fontWeight: isToday || isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: 14,
                    decoration:
                        !isWorkingDay ? TextDecoration.lineThrough : null,
                  ),
                ),
                if (dayEvents.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: dayEvents
                        .take(3)
                        .map((e) => _buildEventMarker(context, e))
                        .toList(),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleAssistantBloc, ScheduleAssistantState>(
      builder: (context, state) {
        // Build the calendar whether loading or loaded
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return state.maybeWhen(
          loaded: (events,
              quotations,
              availability,
              suggestedSlots,
              workingHours,
              summary,
              rangeStart,
              rangeEnd,
              selectedQuotation,
              selectedTimeSlot,
              showAvailabilityDensity,
              isCreatingEvent,
              selectedDuration) {
            return Container(
              decoration: BoxDecoration(
                color: explorerSecondaryColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: tertiaryColor.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Calendario',
                          style: TextStyleTheme.headline3
                              .copyWith(color: quaternaryColor),
                        ),
                        Row(
                          children: [
                            // Legend
                            _buildLegendItem(
                              context,
                              'Confirmado',
                              Colors.green,
                            ),
                            const SizedBox(width: 12),
                            _buildLegendItem(
                              context,
                              'Pendiente',
                              Colors.orange,
                            ),
                            const SizedBox(width: 12),
                            _buildLegendItem(
                              context,
                              'Cotizaciones',
                              Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TableCalendar(
                      firstDay:
                          DateTime.now().subtract(const Duration(days: 365)),
                      lastDay: DateTime.now().add(const Duration(days: 365)),
                      focusedDay: _focusedDay,
                      calendarFormat: _calendarFormat,
                      selectedDayPredicate: (day) =>
                          isSameDay(widget.selectedDate, day),
                      eventLoader: (day) =>
                          _getEventsForDay(day, events, quotations),
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      calendarStyle: CalendarStyle(
                        outsideDaysVisible: false,
                        weekendTextStyle: TextStyleTheme.bodyText2
                            .copyWith(color: tertiaryColor),
                        holidayTextStyle: TextStyleTheme.bodyText2
                            .copyWith(color: secondaryColor),
                        defaultTextStyle: TextStyleTheme.bodyText2
                            .copyWith(color: quaternaryColor),
                        disabledTextStyle: TextStyleTheme.bodyText2
                            .copyWith(color: tertiaryColor.withOpacity(0.5)),
                        selectedTextStyle: TextStyleTheme.bodyText2.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        todayTextStyle: TextStyleTheme.bodyText2.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.bold),
                      ),
                      headerStyle: HeaderStyle(
                        formatButtonVisible: true,
                        titleCentered: true,
                        formatButtonShowsNext: false,
                        titleTextStyle: TextStyleTheme.subtitle1
                            .copyWith(color: quaternaryColor),
                        leftChevronIcon: const Icon(Icons.chevron_left,
                            color: quaternaryColor),
                        rightChevronIcon: const Icon(Icons.chevron_right,
                            color: quaternaryColor),
                        formatButtonDecoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: tertiaryColor.withOpacity(0.5)),
                        ),
                        formatButtonTextStyle: TextStyleTheme.caption
                            .copyWith(color: quaternaryColor),
                      ),
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          _focusedDay = focusedDay;
                        });

                        // Notify parent widget
                        widget.onDateSelected?.call(selectedDay);

                        // Fetch data for the selected day range
                        context.read<ScheduleAssistantBloc>().add(
                              ScheduleAssistantEvent.scheduleDataRequested(
                                artistId: widget.artistId,
                                fromDate: selectedDay,
                                toDate:
                                    selectedDay.add(const Duration(days: 1)),
                              ),
                            );
                      },
                      onFormatChanged: (format) {
                        setState(() {
                          _calendarFormat = format;
                        });
                      },
                      onPageChanged: (focusedDay) {
                        _focusedDay = focusedDay;
                      },
                      calendarBuilders: CalendarBuilders(
                        defaultBuilder: (context, day, focusedDay) =>
                            _buildCalendarDay(
                                context,
                                day,
                                focusedDay,
                                events,
                                quotations,
                                widget.workingDays ?? workingHours.workingDays),
                        selectedBuilder: (context, day, focusedDay) =>
                            _buildCalendarDay(
                                context,
                                day,
                                focusedDay,
                                events,
                                quotations,
                                widget.workingDays ?? workingHours.workingDays),
                        todayBuilder: (context, day, focusedDay) =>
                            _buildCalendarDay(
                                context,
                                day,
                                focusedDay,
                                events,
                                quotations,
                                widget.workingDays ?? workingHours.workingDays),
                        markerBuilder: (context, day, events) {
                          if (events.isEmpty) return null;

                          return Positioned(
                            bottom: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: events
                                  .take(3)
                                  .map((e) => _buildEventMarker(context, e))
                                  .toList(),
                            ),
                          );
                        },
                      ),
                    ),
                    if (summary.totalActionableQuotations > 0) ...[
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: redColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: redColor.withOpacity(0.3),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.notification_important,
                              color: redColor,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Tienes ${summary.totalActionableQuotations} cotizaciones pendientes',
                                style: TextStyleTheme.bodyText2.copyWith(
                                  color: redColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
          orElse: () => Container(
            height: 350,
            decoration: BoxDecoration(
              color: explorerSecondaryColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: tertiaryColor.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: const Center(
              child: CircularProgressIndicator(
                color: secondaryColor,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLegendItem(BuildContext context, String label, Color color) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
        ),
      ],
    );
  }
}
