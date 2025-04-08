import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/available_time_slots/available_time_slots_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

class AvailableTimeSlotsWidget extends StatefulWidget {
  final String artistId;
  final DateTime selectedDate;
  final int durationMinutes;
  final Function(DateTime, DateTime) onTimeSlotSelected;

  const AvailableTimeSlotsWidget({
    super.key,
    required this.artistId,
    required this.selectedDate,
    required this.durationMinutes,
    required this.onTimeSlotSelected,
  });

  @override
  _AvailableTimeSlotsWidgetState createState() => _AvailableTimeSlotsWidgetState();
}

class _AvailableTimeSlotsWidgetState extends State<AvailableTimeSlotsWidget> {
  late DateTime _currentDate;
  
  @override
  void initState() {
    super.initState();
    _currentDate = widget.selectedDate;
    _loadTimeSlots();
  }
  
  @override
  void didUpdateWidget(AvailableTimeSlotsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    // If the selected date has changed, reload the time slots
    if (widget.selectedDate != oldWidget.selectedDate || 
        widget.durationMinutes != oldWidget.durationMinutes ||
        widget.artistId != oldWidget.artistId) {
      
      // Update our tracked date and reload
      _currentDate = widget.selectedDate;
      _loadTimeSlots();
      
      print('AvailableTimeSlotsWidget updated with date: ${widget.selectedDate.toIso8601String()}');
    }
  }
  
  // Helper method to safely parse DateTime values from API responses
  DateTime _parseDateTime(dynamic value) {
    if (value == null) {
      return DateTime.now();
    }
    
    // If it's already a DateTime, return it
    if (value is DateTime) {
      return value;
    }
    
    // If it's a string, try to parse it
    if (value is String) {
      try {
        return DateTime.parse(value);
      } catch (e) {
        print('Error parsing date string: $value, $e');
        // Try more lenient parsing if standard parsing fails
        if (value.contains('T')) {
          // Try handling ISO format with timezone
          final parts = value.split('T');
          if (parts.length == 2) {
            final datePart = parts[0];
            final timePart = parts[1].split('.')[0]; // Remove milliseconds
            return DateTime.parse('${datePart}T$timePart');
          }
        }
      }
    }
    
    // If it's a map/object with timestamp fields, try to use those
    if (value is Map) {
      if (value.containsKey('year') && 
          value.containsKey('month') && 
          value.containsKey('day') &&
          value.containsKey('hour') &&
          value.containsKey('minute')) {
        return DateTime(
          value['year'], 
          value['month'], 
          value['day'],
          value['hour'],
          value['minute'],
        );
      }
    }
    
    // Default fallback to current time if parsing fails
    print('Could not parse datetime value: $value - using current time');
    return DateTime.now();
  }

  // Este método ya está implementado arriba con código mejorado

  void _loadTimeSlots() {
    print('Loading time slots for date: ${widget.selectedDate.toString()} with duration: ${widget.durationMinutes} minutes');
    
    // First, reset the state to ensure we get a fresh loading state
    context.read<AvailableTimeSlotsBloc>().add(const AvailableTimeSlotsEvent.resetState());
    
    // Then load the new slots for the current date
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<AvailableTimeSlotsBloc>().add(
              AvailableTimeSlotsEvent.getAvailableTimeSlots(
                artistId: widget.artistId,
                date: widget.selectedDate,
                durationMinutes: widget.durationMinutes,
              ),
            );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AvailableTimeSlotsBloc, AvailableTimeSlotsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: InkerProgressIndicator(),
            ),
          ),
          loaded: (timeSlots) => _buildTimeSlotsList(timeSlots),
          empty: () => _buildEmptyState(),
          error: (message) => _buildErrorState(message),
        );
      },
    );
  }

  Widget _buildTimeSlotsList(List<dynamic> timeSlots) {
    final timeFormatter = DateFormat('h:mm a');
    final dateFormatter = DateFormat('E, MMM d'); // Day of week, Month, Day
    
    // Group time slots by date for better organization
    final Map<String, List<dynamic>> slotsByDate = {};
    
    for (var slot in timeSlots) {
      final DateTime startTime = _parseDateTime(slot['startTime']);
      final String dateKey = dateFormatter.format(startTime);
      
      if (!slotsByDate.containsKey(dateKey)) {
        slotsByDate[dateKey] = [];
      }
      slotsByDate[dateKey]!.add(slot);
    }
    
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      constraints: const BoxConstraints(maxHeight: 400),
      child: ListView.builder(
        itemCount: slotsByDate.length,
        shrinkWrap: true,
        itemBuilder: (context, sectionIndex) {
          final date = slotsByDate.keys.elementAt(sectionIndex);
          final slots = slotsByDate[date]!;
          
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date header
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 4.0),
                child: Text(
                  date,
                  style: TextStyleTheme.bodyText1.copyWith(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              // Time slots for this date
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: slots.length,
                itemBuilder: (context, index) {
                  final slot = slots[index];
                  
                  // Safely parse dates handling both ISO strings and JSON objects
                  final DateTime startTime = _parseDateTime(slot['startTime']);
                  final DateTime endTime = _parseDateTime(slot['endTime']);
                  
                  // Calculate if this is a "preferred" time slot (low density or near future)
                  final bool isPreferred = slot['density'] == null || (slot['density'] as num) < 0.5;
                  final bool isToday = startTime.day == DateTime.now().day && 
                                      startTime.month == DateTime.now().month &&
                                      startTime.year == DateTime.now().year;
                  
                  return Card(
                    color: isPreferred ? primaryColor : const Color(0xFF3C4157),
                    margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: InkWell(
                      onTap: () => widget.onTimeSlotSelected(startTime, endTime),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  isToday ? Icons.today : Icons.access_time,
                                  color: Colors.white, 
                                  size: 18
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  timeFormatter.format(startTime),
                                  style: TextStyleTheme.bodyText1.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                if (isPreferred)
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      child: Text(
                                        isToday ? 'Today' : 'Best',
                                        style: TextStyleTheme.bodyText2.copyWith(
                                          color: Colors.greenAccent,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white70,
                                  size: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              
              // Add some spacing between date sections
              const SizedBox(height: 8),
            ],
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      padding: const EdgeInsets.all(24.0),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.event_busy,
            color: Colors.grey,
            size: 48,
          ),
          const SizedBox(height: 16),
          Text(
            'No available time slots found',
            textAlign: TextAlign.center,
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'We tried to find slots across multiple days but couldn\'t find any available times.',
            textAlign: TextAlign.center,
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Try setting up your working hours in agenda settings or try a shorter appointment duration.',
            textAlign: TextAlign.center,
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          TextButton.icon(
            icon: const Icon(Icons.refresh),
            label: const Text('Try Again'),
            onPressed: _loadTimeSlots,
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String message) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 48,
          ),
          const SizedBox(height: 16),
          Text(
            'Error loading available time slots',
            textAlign: TextAlign.center,
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          TextButton.icon(
            icon: const Icon(Icons.refresh),
            label: const Text('Retry'),
            onPressed: _loadTimeSlots,
          ),
        ],
      ),
    );
  }
}