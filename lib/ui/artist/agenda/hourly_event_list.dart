import 'package:flutter/material.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

// Helper class to organize event information
class EventInfo {
  final ArtistAgendaEventDetails event;
  final double top;
  final double height;
  final int column;
  final int maxColumns;

  EventInfo({
    required this.event,
    required this.top,
    required this.height,
    this.column = 0,
    this.maxColumns = 1,
  });
}

class HourlyEventList extends StatefulWidget {
  final List<ArtistAgendaEventDetails> events;

  const HourlyEventList({super.key, required this.events});

  @override
  _HourlyEventListState createState() => _HourlyEventListState();
}

class _HourlyEventListState extends State<HourlyEventList> {
  final ScrollController _scrollController = ScrollController();
  double _hourHeight = 80.0;
  double _previousScale = 1.0;
  bool _isZooming = false;

  // Default time range is 24 hours
  int _startHour = 0;
  int _endHour = 24;

  // Current hour indicator offset
  late double _currentTimeOffset;
  late bool _showCurrentTime;

  // Timeline width
  final double _timelineWidth = 60.0;

  @override
  void initState() {
    super.initState();

    // Calculate business hours based on events
    _calculateBusinessHours();

    // Setup current time indicator
    final now = DateTime.now();
    _currentTimeOffset = (now.hour + now.minute / 60.0) * _hourHeight;
    _showCurrentTime = true;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToRelevantTime();
    });
  }

  void _calculateBusinessHours() {
    if (widget.events.isEmpty) {
      // Default to 8 AM - 8 PM if no events
      _startHour = 8;
      _endHour = 20;
      return;
    }

    // Find earliest and latest hours from events
    final List<int> allHours = [];

    for (final event in widget.events) {
      // Add start hour
      allHours.add(event.startDate.hour);

      // Add end hour
      allHours.add(event.endDate.hour);

      // For events that span multiple hours, add intermediate hours
      if (event.endDate.hour > event.startDate.hour) {
        for (int h = event.startDate.hour + 1; h < event.endDate.hour; h++) {
          allHours.add(h);
        }
      }
    }

    // Find earliest and latest hours
    _startHour = allHours.isEmpty
        ? 8
        : allHours.reduce((min, hour) => hour < min ? hour : min);
    _endHour = allHours.isEmpty
        ? 20
        : allHours.reduce((max, hour) => hour > max ? hour : max) + 1;

    // Ensure a minimum range of 12 hours
    if (_endHour - _startHour < 12) {
      final int midPoint = (_startHour + _endHour) ~/ 2;
      _startHour = midPoint - 6;
      _endHour = midPoint + 6;
    }

    // Limit to 24-hour range
    _startHour = _startHour < 0 ? 0 : _startHour;
    _endHour = _endHour > 24 ? 24 : _endHour;
  }

  void _scrollToRelevantTime() {
    final now = DateTime.now();
    final currentHour = now.hour;

    // If there are events, scroll to the first event
    if (widget.events.isNotEmpty) {
      // Sort events by start time
      final sortedEvents = List<ArtistAgendaEventDetails>.from(widget.events)
        ..sort((a, b) => a.startDate.compareTo(b.startDate));

      final firstEvent = sortedEvents.first;
      final position = (firstEvent.startDate.hour - _startHour) * _hourHeight +
          (firstEvent.startDate.minute / 60.0) * _hourHeight;

      _scrollController.animateTo(
        position - 80, // Scroll to show a bit before the event
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else if (currentHour >= _startHour && currentHour < _endHour) {
      // If no events but we're in business hours, scroll to current time
      final position = (currentHour - _startHour) * _hourHeight +
          (now.minute / 60.0) * _hourHeight;

      _scrollController.animateTo(
        position - 80, // Show some context before current time
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Default to start of business hours
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // Helper method to get event color based on properties
  Color _getEventColor(ArtistAgendaEventDetails event) {
    // Check if it's unavailable time by examining title
    if (event.title.toLowerCase().contains('unavailable') ||
        event.title.toLowerCase().contains('blocked')) {
      return Colors.grey.shade700;
    }

    // Regular appointment
    return secondaryColor;
  }

  Widget _buildTimeline(int hour) {
    final displayHour = hour % 12 == 0 ? 12 : hour % 12;
    final amPm = hour < 12 ? 'AM' : 'PM';

    return SizedBox(
      width: _timelineWidth,
      height: _hourHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: _hourHeight * 0.05),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              '$displayHour:00 $amPm',
              style: TextStyleTheme.copyWith(
                color: Colors.white70,
                fontWeight: FontWeight.normal,
                fontSize: 13.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventCard(
      ArtistAgendaEventDetails event, double top, double height, int column, int maxColumns) {
    final eventColor = _getEventColor(event);
    final isDark = eventColor.computeLuminance() < 0.5;
    final textColor = isDark ? Colors.white : Colors.black87;

    // Minimum height for very short events (30 pixels)
    const minimumHeight = 30.0;
    final effectiveHeight = height < minimumHeight ? minimumHeight : height;
    
    // Determine content complexity based on available height
    final bool isVeryShortEvent = effectiveHeight <= 35;
    final bool isShortEvent = effectiveHeight <= 50;
    final bool isMediumEvent = effectiveHeight <= 70;

    // Calculate width based on columns
    final columnWidth = (column / maxColumns);
    final columnWidthPercentage = 1.0 / maxColumns;

    return Positioned(
      top: top,
      left: _timelineWidth + (MediaQuery.of(context).size.width - _timelineWidth) * columnWidth,
      width: (MediaQuery.of(context).size.width - _timelineWidth) * columnWidthPercentage * 0.95,
      height: effectiveHeight,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/agendaEventDetail',
            arguments: event.id,
          );
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 1.0),
          decoration: BoxDecoration(
            color: eventColor,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 1),
                blurRadius: 2.0,
                spreadRadius: 0.2,
              ),
            ],
          ),
          child: isVeryShortEvent
              // Very short event - just show title with smaller padding
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                  child: Center(
                    child: Text(
                      event.title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleTheme.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                )
              : Padding(
                  // Adjust padding based on event height
                  padding: EdgeInsets.symmetric(
                    horizontal: isShortEvent ? 6.0 : 8.0,
                    vertical: isShortEvent ? 3.0 : 6.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Event title - always shown
                      Text(
                        event.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyleTheme.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: isShortEvent ? 12.0 : 14.0,
                        ),
                      ),
                      
                      // Time info - shown only if enough space
                      if (!isShortEvent) ...[
                        SizedBox(height: isShortEvent ? 2.0 : 4.0),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: textColor.withOpacity(0.8),
                              size: 12.0,
                            ),
                            const SizedBox(width: 4.0),
                            Flexible(
                              child: Text(
                                '${DateFormat('h:mm a').format(event.startDate)} - ${DateFormat('h:mm a').format(event.endDate)}',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyleTheme.copyWith(
                                  color: textColor.withOpacity(0.8),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      
                      // Description shown only for larger events
                      if (!isMediumEvent && event.description.isNotEmpty) ...[
                        const SizedBox(height: 4.0),
                        Expanded(
                          child: Text(
                            event.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: effectiveHeight > 100 ? 3 : 1,
                            style: TextStyleTheme.copyWith(
                              color: textColor.withOpacity(0.7),
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  Widget _buildCurrentTimeIndicator() {
    final now = DateTime.now();
    final currentHour = now.hour;

    // Only show if within business hours
    if (!_showCurrentTime ||
        currentHour < _startHour ||
        currentHour >= _endHour) {
      return const SizedBox.shrink();
    }

    // Calculate position based on current time
    final hourOffset = currentHour - _startHour;
    final minuteOffset = now.minute / 60.0;
    final position = (hourOffset + minuteOffset) * _hourHeight;

    return Positioned(
      top: position - 1,
      left: 0,
      right: 0,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 4, right: 4),
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Container(
              height: 2,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleStart: (details) {
        if (details.pointerCount == 2) {
          _isZooming = true;
          _previousScale = _hourHeight;
        }
      },
      onScaleUpdate: (details) {
        if (_isZooming) {
          setState(() {
            _hourHeight = (_previousScale * details.scale).clamp(40.0, 200.0);
          });
        }
      },
      onScaleEnd: (details) {
        _isZooming = false;
      },
      onDoubleTap: () {
        setState(() {
          _hourHeight = 80.0;
        });
      },
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification notification) {
          notification.disallowIndicator();
          return false;
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Process and organize events with overlap handling
            final eventInfoList = _processEvents();
            
            return Stack(
              children: [
                // Scrollable timeline and hour grid
                SingleChildScrollView(
                  controller: _scrollController,
                  child: Stack(
                    children: [
                      // Hours timeline
                      Column(
                        children: [
                          for (int hour = _startHour; hour < _endHour; hour++)
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Time column
                                _buildTimeline(hour),
                                
                                // Hour divider
                                Expanded(
                                  child: Container(
                                    height: _hourHeight,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: tertiaryColor.withOpacity(0.3),
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    // Quarter-hour markers
                                    child: Stack(
                                      children: [
                                        for (double fraction in [0.25, 0.5, 0.75])
                                          Positioned(
                                            top: _hourHeight * fraction,
                                            left: 0,
                                            right: 0,
                                            child: Container(
                                              height: 1.0,
                                              color: tertiaryColor.withOpacity(
                                                fraction == 0.5 ? 0.15 : 0.08,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                      
                      // Event cards positioned over the timeline
                      ...eventInfoList.map((eventInfo) {
                        // Calculate absolute position in the grid
                        final hourOffset = eventInfo.event.startDate.hour - _startHour;
                        final minuteOffset = eventInfo.event.startDate.minute / 60.0;
                        final topPosition = (hourOffset + minuteOffset) * _hourHeight;
                        
                        return _buildEventCard(
                          eventInfo.event,
                          topPosition,
                          eventInfo.height,
                          eventInfo.column,
                          eventInfo.maxColumns,
                        );
                      }),
                      
                      // Current time indicator
                      _buildCurrentTimeIndicator(),
                    ],
                  ),
                ),
                
                // Right edge shadow gradient for visual depth
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  width: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  // Process events and handle overlapping events (similar to Google Calendar)
  List<EventInfo> _processEvents() {
    if (widget.events.isEmpty) return [];

    // Sort events by start time
    final sortedEvents = List<ArtistAgendaEventDetails>.from(widget.events)
      ..sort((a, b) => a.startDate.compareTo(b.startDate));

    // First pass: Calculate base positions and durations
    final List<EventInfo> eventInfoList = [];
    
    for (final event in sortedEvents) {
      // Skip events outside visible range
      if (event.endDate.hour < _startHour || event.startDate.hour >= _endHour) {
        continue;
      }

      // Calculate effective start time
      int effectiveStartHour = event.startDate.hour;
      double minuteOffset = event.startDate.minute / 60.0;

      // Adjust for events that start before visible range
      if (effectiveStartHour < _startHour) {
        effectiveStartHour = _startHour;
        minuteOffset = 0;
      }

      // Calculate height based on event duration
      double height;
      
      if (event.endDate.hour == effectiveStartHour) {
        // Event ends in the same hour
        int endMinute = event.endDate.minute;
        int startMinute = (effectiveStartHour == event.startDate.hour)
            ? event.startDate.minute
            : 0;
        final durationFraction = (endMinute - startMinute) / 60.0;
        height = durationFraction * _hourHeight;
      } else {
        // Event spans multiple hours
        final minutesInCurrentHour = 60 -
            (effectiveStartHour == event.startDate.hour
                ? event.startDate.minute
                : 0);
        
        // Calculate full hours the event spans
        int fullHours = 0;
        if (event.endDate.hour > _endHour) {
          fullHours = _endHour - effectiveStartHour - 1;
          height = ((minutesInCurrentHour / 60.0) + fullHours) * _hourHeight;
        } else {
          fullHours = event.endDate.hour - effectiveStartHour - 1;
          final minutesInLastHour = event.endDate.minute;
          height =
              ((minutesInCurrentHour + (fullHours * 60) + minutesInLastHour) /
                      60.0) *
                  _hourHeight;
        }
      }

      // Ensure minimum height
      height = height < 30.0 ? 30.0 : height;

      // Add event info
      eventInfoList.add(
        EventInfo(
          event: event,
          top: 0, // Will be calculated in second pass
          height: height,
        ),
      );
    }

    // Second pass: Handle overlapping events (Google Calendar style)
    // Group events that overlap in time
    List<List<EventInfo>> eventGroups = [];
    
    for (var eventInfo in eventInfoList) {
      // Try to add to an existing group
      bool added = false;
      
      for (var group in eventGroups) {
        // Check if this event overlaps with any event in the group
        bool overlapsWithGroup = group.any((groupEvent) =>
            _eventsOverlap(eventInfo.event, groupEvent.event));
        
        if (overlapsWithGroup) {
          group.add(eventInfo);
          added = true;
          break;
        }
      }
      
      // If didn't fit in any group, create a new group
      if (!added) {
        eventGroups.add([eventInfo]);
      }
    }
    
    // Third pass: Assign columns within each group
    List<EventInfo> finalEventList = [];
    
    for (var group in eventGroups) {
      if (group.length == 1) {
        // Single event in group, no need for column assignment
        finalEventList.add(
          EventInfo(
            event: group[0].event,
            top: 0, // Will be calculated
            height: group[0].height,
            column: 0,
            maxColumns: 1,
          ),
        );
      } else {
        // Multiple events in group need column assignment
        int maxColumn = 0;
        Map<String, int> eventColumns = {};
        
        // Sort by start date to process earliest events first
        group.sort((a, b) => a.event.startDate.compareTo(b.event.startDate));
        
        for (var eventInfo in group) {
          // Find available column
          int column = 0;
          
          while (true) {
            // Check if column is already occupied by an overlapping event
            bool columnAvailable = true;
            
            for (var otherEventId in eventColumns.keys) {
              var otherEvent = group.firstWhere(
                (e) => e.event.id == otherEventId,
              ).event;
              
              if (eventColumns[otherEventId] == column &&
                  _eventsOverlap(eventInfo.event, otherEvent)) {
                columnAvailable = false;
                break;
              }
            }
            
            if (columnAvailable) {
              break;
            }
            
            column++;
          }
          
          // Assign column
          eventColumns[eventInfo.event.id] = column;
          if (column > maxColumn) maxColumn = column;
        }
        
        // Create final EventInfo objects with column assignment
        for (var eventInfo in group) {
          finalEventList.add(
            EventInfo(
              event: eventInfo.event,
              top: 0, // Will be calculated
              height: eventInfo.height,
              column: eventColumns[eventInfo.event.id]!,
              maxColumns: maxColumn + 1,
            ),
          );
        }
      }
    }
    
    // Fourth pass: Calculate absolute positions for all events
    for (var i = 0; i < finalEventList.length; i++) {
      final eventInfo = finalEventList[i];
      
      // Calculate absolute top position
      final event = eventInfo.event;
      int effectiveStartHour = event.startDate.hour < _startHour ? _startHour : event.startDate.hour;
      double minuteOffset = event.startDate.hour < _startHour ? 0 : event.startDate.minute / 60.0;
      
      final top = (effectiveStartHour - _startHour + minuteOffset) * _hourHeight;
      
      // Update with final position
      finalEventList[i] = EventInfo(
        event: eventInfo.event,
        top: top,
        height: eventInfo.height,
        column: eventInfo.column,
        maxColumns: eventInfo.maxColumns,
      );
    }
    
    return finalEventList;
  }
  
  // Helper function to check if two events overlap in time
  bool _eventsOverlap(ArtistAgendaEventDetails a, ArtistAgendaEventDetails b) {
    return (a.startDate.isBefore(b.endDate) && a.endDate.isAfter(b.startDate));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}