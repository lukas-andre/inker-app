import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/data/api/agenda/dtos/schedule_response.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class SmartTimeSelector extends StatefulWidget {
  final DateTime selectedDate;
  final Function(DateTime start, DateTime end) onTimeSelected;
  final Function(int duration)? onDurationChanged;
  
  const SmartTimeSelector({
    super.key,
    required this.selectedDate,
    required this.onTimeSelected,
    this.onDurationChanged,
  });

  @override
  State<SmartTimeSelector> createState() => _SmartTimeSelectorState();
}

class _SmartTimeSelectorState extends State<SmartTimeSelector> {
  DateTime? _selectedTimeSlot;
  
  final List<int> _durationOptions = [30, 60, 90, 120, 180];
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleAssistantBloc, ScheduleAssistantState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (events, quotations, availability, suggestedSlots,
              workingHours, summary, rangeStart, rangeEnd, selectedQuotation,
              selectedTimeSlot, showAvailabilityDensity, isCreatingEvent, selectedDuration) {
            
            // Get availability for selected date
            final dateKey = DateFormat('yyyy-MM-dd').format(widget.selectedDate);
            final daySlots = availability[dateKey] ?? [];
            
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
                    // Header with duration selector
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seleccionar Horario',
                          style: TextStyleTheme.headline3.copyWith(color: quaternaryColor),
                        ),
                        const SizedBox(height: 8),
                        // Duration chips
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: _durationOptions.map((duration) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: ChoiceChip(
                                label: Text(
                                  '${duration}min',
                                  style: TextStyle(
                                    color: selectedDuration == duration ? Colors.white : quaternaryColor,
                                  ),
                                ),
                                selected: selectedDuration == duration,
                                selectedColor: secondaryColor,
                                backgroundColor: primaryColor,
                                side: BorderSide(
                                  color: selectedDuration == duration ? secondaryColor : tertiaryColor.withOpacity(0.5),
                                ),
                                onSelected: (selected) {
                                  if (selected) {
                                    setState(() {
                                      // If we have a selected time, update with new duration
                                      if (_selectedTimeSlot != null) {
                                        final endTime = _selectedTimeSlot!.add(Duration(minutes: duration));
                                        widget.onTimeSelected(_selectedTimeSlot!, endTime);
                                      }
                                    });
                                    widget.onDurationChanged?.call(duration);
                                    // Emit event to update suggested slots
                                    context.read<ScheduleAssistantBloc>().add(
                                      ScheduleAssistantEvent.durationChanged(duration),
                                    );
                                  }
                                },
                              ),
                            );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    
                    // Suggested slots carousel
                    if (suggestedSlots.isNotEmpty) ...[
                      Text(
                        'Horarios Sugeridos',
                        style: TextStyleTheme.subtitle1.copyWith(color: quaternaryColor),
                      ),
                      // Warning if there are slots from different days
                      if (suggestedSlots.any((slot) => 
                          DateFormat('dd-MM').format(slot.startTime) != 
                          DateFormat('dd-MM').format(widget.selectedDate))) ...[
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.orange.withOpacity(0.3),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.info_outline,
                                size: 16,
                                color: Colors.orange,
                              ),
                              SizedBox(width: 6),
                              Flexible(
                                child: Text(
                                  'Algunos horarios sugeridos son de días diferentes al seleccionado',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: suggestedSlots.length,
                          itemBuilder: (context, index) {
                            final slot = suggestedSlots[index];
                            final isSelected = _selectedTimeSlot == slot.startTime;
                            final isSameDay = DateFormat('dd-MM').format(slot.startTime) == 
                                             DateFormat('dd-MM').format(widget.selectedDate);
                            
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedTimeSlot = slot.startTime;
                                  });
                                  // Use selected duration instead of original slot duration
                                  final endTime = slot.startTime.add(Duration(minutes: selectedDuration));
                                  widget.onTimeSelected(
                                    slot.startTime,
                                    endTime,
                                  );
                                },
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  width: 120,
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? secondaryColor
                                        : !isSameDay 
                                            ? Colors.orange.withOpacity(0.1)
                                            : primaryColor,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: isSelected
                                          ? secondaryColor
                                          : !isSameDay
                                              ? Colors.orange.withOpacity(0.5)
                                              : tertiaryColor.withOpacity(0.5),
                                      width: !isSameDay && !isSelected ? 1.5 : 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      if (!isSameDay) ...[
                                        Text(
                                          DateFormat('dd-MM').format(slot.startTime),
                                          style: TextStyleTheme.caption.copyWith(
                                            color: isSelected 
                                                ? Colors.white70 
                                                : tertiaryColor,
                                            fontSize: 10,
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                      ],
                                      Text(
                                        DateFormat('HH:mm').format(slot.startTime),
                                        style: TextStyleTheme.bodyText1.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: isSelected ? Colors.white : quaternaryColor,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        '${selectedDuration} min',
                                        style: TextStyleTheme.caption.copyWith(
                                          color: isSelected 
                                              ? Colors.white70 
                                              : tertiaryColor,
                                          fontSize: 11,
                                        ),
                                      ),
                                      if (slot.density < 0.3) ...[
                                        const SizedBox(height: 2),
                                        Icon(
                                          Icons.check_circle,
                                          size: 14,
                                          color: isSelected 
                                              ? Colors.white 
                                              : Colors.green,
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                    
                    // Timeline view with availability
                    Text(
                      'Disponibilidad del Día',
                      style: TextStyleTheme.subtitle1.copyWith(color: quaternaryColor),
                    ),
                    const SizedBox(height: 8),
                    
                    // Working hours info
                    Row(
                      children: [
                        Icon(Icons.schedule, size: 16, color: tertiaryColor),
                        const SizedBox(width: 4),
                        Text(
                          'Horario: ${workingHours.start} - ${workingHours.end}',
                          style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    
                    // Timeline visualization - adaptative height
                    LayoutBuilder(
                      builder: (context, constraints) {
                        // Calculate adaptative height based on available space
                        final availableHeight = MediaQuery.of(context).size.height;
                        final isMobile = constraints.maxWidth < 600;
                        final timelineHeight = isMobile 
                          ? (availableHeight * 0.4).clamp(200.0, 400.0)  // 40% of screen, min 200, max 400
                          : 400.0; // Fixed height for desktop
                        
                        return Container(
                          height: timelineHeight,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: tertiaryColor.withOpacity(0.3),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: _buildTimelineView(
                              daySlots,
                              events.where((e) => _isSameDay(e.startDate, widget.selectedDate)).toList(),
                              workingHours,
                              showAvailabilityDensity,
                              selectedDuration,
                            ),
                          ),
                        );
                      },
                    ),
                    
                    // Toggle density view
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Mostrar densidad',
                          style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
                        ),
                        Switch(
                          value: showAvailabilityDensity,
                          activeColor: secondaryColor,
                          inactiveThumbColor: tertiaryColor,
                          inactiveTrackColor: tertiaryColor.withOpacity(0.3),
                          onChanged: (value) {
                            context.read<ScheduleAssistantBloc>().add(
                              ScheduleAssistantEvent.availabilityDensityToggled(value),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
  
  Widget _buildTimelineView(
    List<AvailabilitySlot> slots,
    List<ScheduleEvent> dayEvents,
    WorkingHours workingHours,
    bool showDensity,
    int selectedDuration,
  ) {
    // Parse working hours
    final startParts = workingHours.start.split(':');
    final endParts = workingHours.end.split(':');
    final startHour = int.parse(startParts[0]);
    final endHour = int.parse(endParts[0]);
    final totalHours = endHour - startHour;
    
    return ListView.builder(
      itemCount: totalHours * 2, // 30-minute slots
      itemBuilder: (context, index) {
        final hour = startHour + (index ~/ 2);
        final isHalfHour = index % 2 == 1;
        final time = DateTime(
          widget.selectedDate.year,
          widget.selectedDate.month,
          widget.selectedDate.day,
          hour,
          isHalfHour ? 30 : 0,
        );
        
        // Check if this time slot is available
        final slot = _findSlotForTime(time, slots);
        final hasEvent = _hasEventAtTime(time, dayEvents);
        final now = DateTime.now();
        final isPast = widget.selectedDate.isBefore(DateTime(now.year, now.month, now.day)) ||
                      (widget.selectedDate.year == now.year && 
                       widget.selectedDate.month == now.month && 
                       widget.selectedDate.day == now.day && 
                       time.isBefore(now));
        final isAvailable = slot != null && !hasEvent && !isPast;
        
        return InkWell(
          onTap: isAvailable
              ? () {
                  final endTime = time.add(Duration(minutes: selectedDuration));
                  setState(() {
                    _selectedTimeSlot = time;
                  });
                  widget.onTimeSelected(time, endTime);
                }
              : null,
          child: Container(
            height: 60, // Increased from 60 to ensure better touch target
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: tertiaryColor.withOpacity(0.2)),
              ),
            ),
            child: Row(
              children: [
                // Time label with minimum touch target
                Container(
                  width: 80,
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    DateFormat('HH:mm').format(time),
                    style: TextStyleTheme.bodyText2.copyWith(color: quaternaryColor),
                  ),
                ),
                // Timeline - ensure minimum 44px height for touch
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: _getSlotColor(slot, hasEvent, isPast, showDensity),
                      borderRadius: BorderRadius.circular(4),
                      border: _selectedTimeSlot == time
                          ? Border.all(
                              color: secondaryColor,
                              width: 2,
                            )
                          : null,
                    ),
                    child: isPast
                        ? Center(
                            child: Text(
                              'Pasado',
                              style: TextStyle(
                                color: tertiaryColor,
                                fontSize: 12,
                              ),
                            ),
                          )
                        : hasEvent
                            ? Center(
                                child: Text(
                                  'Ocupado',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            : isAvailable && showDensity && slot != null
                                ? Center(
                                    child: Text(
                                      '${(100 - slot.density * 100).toInt()}%',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: slot.density < 0.5 
                                            ? Colors.black54 
                                            : Colors.white70,
                                      ),
                                    ),
                                  )
                                : null,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  
  AvailabilitySlot? _findSlotForTime(DateTime time, List<AvailabilitySlot> slots) {
    for (final slot in slots) {
      // Comparar solo hora y minutos, ignorando la fecha
      final slotStartHour = slot.startTime.hour;
      final slotStartMinute = slot.startTime.minute;
      final slotEndHour = slot.endTime.hour;
      final slotEndMinute = slot.endTime.minute;
      
      final timeHour = time.hour;
      final timeMinute = time.minute;
      
      // Convertir a minutos para comparación más fácil
      final slotStartMinutes = slotStartHour * 60 + slotStartMinute;
      final slotEndMinutes = slotEndHour * 60 + slotEndMinute;
      final timeMinutes = timeHour * 60 + timeMinute;
      
      if (timeMinutes >= slotStartMinutes && timeMinutes < slotEndMinutes) {
        return slot;
      }
    }
    return null;
  }
  
  bool _hasEventAtTime(DateTime time, List<ScheduleEvent> events) {
    for (final event in events) {
      if (time.isAfter(event.startDate.subtract(const Duration(minutes: 1))) &&
          time.isBefore(event.endDate)) {
        return true;
      }
    }
    return false;
  }
  
  Color _getSlotColor(AvailabilitySlot? slot, bool hasEvent, bool isPast, bool showDensity) {
    if (isPast) {
      return tertiaryColor.withOpacity(0.1);
    }
    if (hasEvent) {
      return redColor;
    }
    if (slot == null) {
      return tertiaryColor.withOpacity(0.2);
    }
    if (!showDensity) {
      return secondaryColor.withOpacity(0.2);
    }
    
    // Color based on density (0 = free, 1 = busy)
    final density = slot.density;
    if (density < 0.25) {
      return Colors.green.withOpacity(0.3);
    } else if (density < 0.5) {
      return yellowColor.withOpacity(0.3);
    } else if (density < 0.75) {
      return Colors.orange.withOpacity(0.3);
    } else {
      return redColor.withOpacity(0.3);
    }
  }
  
  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}