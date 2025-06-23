import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/domain/blocs/schedule_assistant/schedule_assistant_bloc.dart';
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/schedule_assistant/widgets/enhanced_calendar_view.dart';
import 'package:inker_studio/ui/schedule_assistant/widgets/smart_time_selector.dart';
import 'package:inker_studio/ui/schedule_assistant/widgets/quotation_context_panel.dart';
import 'package:inker_studio/ui/schedule_assistant/widgets/schedule_events_list.dart';
import 'package:inker_studio/data/api/agenda/dtos/schedule_response.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class ScheduleAssistantPage extends StatefulWidget {
  final String artistId;
  final DateTime? tentativeDate;
  final int? tentativeDuration;

  const ScheduleAssistantPage({
    super.key,
    required this.artistId,
    this.tentativeDate,
    this.tentativeDuration,
  });
  @override
  _ScheduleAssistantPageState createState() => _ScheduleAssistantPageState();
}

class _ScheduleAssistantPageState extends State<ScheduleAssistantPage> {
  DateTime? _selectedStartTime;
  DateTime? _selectedEndTime;
  DateTime? _selectedDate;
  ScheduleQuotation? _selectedQuotation;
  bool _initialDateSet = false;

  void _handleTimeRangeSelected(DateTime startTime, DateTime endTime) {
    setState(() {
      _selectedStartTime = startTime;
      _selectedEndTime = endTime;
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.tentativeDate != null && widget.tentativeDuration != null) {
      _selectedStartTime = widget.tentativeDate;
      _selectedEndTime = widget.tentativeDate!
          .add(Duration(minutes: widget.tentativeDuration!));
    }
  }

  Map<String, dynamic> _getResult() {
    final now = DateTime.now();
    final startEventDate =
        _selectedStartTime ?? DateTime(now.year, now.month, now.day, 9, 0);
    final duration = _selectedEndTime != null
        ? _selectedEndTime!.difference(startEventDate).inMinutes
        : 0;

    return {
      'startEventDate': startEventDate,
      'duration': duration,
    };
  }

  void _returnResult() {
    Navigator.of(context).pop(_getResult());
  }
  
  String _getDayName(int weekday) {
    switch (weekday) {
      case DateTime.monday:
        return 'Monday';
      case DateTime.tuesday:
        return 'Tuesday';
      case DateTime.wednesday:
        return 'Wednesday';
      case DateTime.thursday:
        return 'Thursday';
      case DateTime.friday:
        return 'Friday';
      case DateTime.saturday:
        return 'Saturday';
      case DateTime.sunday:
        return 'Sunday';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return WillPopScope(
      onWillPop: () async {
        _returnResult();
        return false;
      },
      child: BlocProvider(
        create: (context) => ScheduleAssistantBloc(
          agendaService: context.read<AgendaService>(),
          sessionService: context.read<LocalSessionService>(),
        )..add(ScheduleAssistantEvent.scheduleDataRequested(
            artistId: widget.artistId,
            fromDate: DateTime.now(),
            toDate: DateTime.now().add(const Duration(days: 7)),
          )),
        child: Scaffold(
          key: K.scheduleAssistantView,
          backgroundColor: Theme.of(context).colorScheme.primary,
          appBar: AppBar(
            title:
                Text(l10n.scheduleAssistant, style: TextStyleTheme.headline3),
            backgroundColor: Theme.of(context).colorScheme.primary,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: _returnResult,
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: BlocBuilder<ScheduleAssistantBloc, ScheduleAssistantState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loaded: (events, quotations, availability, suggestedSlots,
                            workingHours, summary, rangeStart, rangeEnd, selectedQuotation,
                            selectedTimeSlot, showAvailabilityDensity, isCreatingEvent, selectedDuration) {
                          return SingleChildScrollView(
                            physics: const ClampingScrollPhysics(),
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Calendar
                                Builder(
                                  builder: (context) {
                                    // Find next available day if not already set
                                    if (!_initialDateSet && _selectedDate == null) {
                                      _initialDateSet = true;
                                      // Find first day with available slots
                                      DateTime? nextAvailableDay;
                                      final today = DateTime.now();
                                      
                                      // Check each day in the availability map
                                      for (final entry in availability.entries) {
                                        final date = DateTime.parse(entry.key);
                                        final slots = entry.value;
                                        
                                        // Check if this day has available slots
                                        if (slots.isNotEmpty && !date.isBefore(DateTime(today.year, today.month, today.day))) {
                                          // Check if any slot is in the future
                                          final hasAvailableSlots = slots.any((slot) => 
                                            slot.startTime.isAfter(DateTime.now())
                                          );
                                          
                                          if (hasAvailableSlots) {
                                            nextAvailableDay = date;
                                            break;
                                          }
                                        }
                                      }
                                      
                                      // If no available day found, check working days
                                      if (nextAvailableDay == null) {
                                        // Find next working day
                                        for (int i = 0; i < 30; i++) {
                                          final checkDate = today.add(Duration(days: i));
                                          final weekday = checkDate.weekday;
                                          
                                          // Check if it's a working day
                                          final dayName = _getDayName(weekday);
                                          if (workingHours.workingDays.contains(dayName)) {
                                            nextAvailableDay = checkDate;
                                            break;
                                          }
                                        }
                                      }
                                      
                                      // Set the selected date after the build
                                      WidgetsBinding.instance.addPostFrameCallback((_) {
                                        if (mounted) {
                                          setState(() {
                                            _selectedDate = nextAvailableDay ?? today;
                                          });
                                        }
                                      });
                                    }
                                    
                                    return EnhancedCalendarView(
                                      artistId: widget.artistId,
                                      selectedDate: _selectedDate ?? DateTime.now(),
                                      workingDays: workingHours.workingDays,
                                      onDateSelected: (date) {
                                        setState(() {
                                          _selectedDate = date;
                                        });
                                      },
                                    );
                                  },
                                ),
                                const SizedBox(height: 16),
                                
                                // Quotation panel if selected
                                if (_selectedQuotation != null)
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: QuotationContextPanel(
                                      quotation: _selectedQuotation!,
                                      onClose: () {
                                        setState(() {
                                          _selectedQuotation = null;
                                        });
                                      },
                                    ),
                                  ),
                                
                                // Time selector
                                SmartTimeSelector(
                                  selectedDate: _selectedDate ?? DateTime.now(),
                                  onTimeSelected: _handleTimeRangeSelected,
                                  onDurationChanged: (duration) {
                                    // If we already have a selected start time, update the end time
                                    if (_selectedStartTime != null) {
                                      setState(() {
                                        _selectedEndTime = _selectedStartTime!.add(Duration(minutes: duration));
                                      });
                                    }
                                  },
                                ),
                                const SizedBox(height: 16),
                                
                                // Events list
                                ScheduleEventsList(
                                  selectedDate: _selectedDate ?? DateTime.now(),
                                  onEventTap: (event) {
                                    // TODO: Handle event tap
                                  },
                                  onQuotationTap: (quotation) {
                                    setState(() {
                                      _selectedQuotation = quotation;
                                    });
                                    context.read<ScheduleAssistantBloc>().add(
                                      ScheduleAssistantEvent.quotationSelected(quotation.id),
                                    );
                                  },
                                ),
                                const SizedBox(height: 16), // Add spacing at bottom
                              ],
                            ),
                          );
                        },
                        orElse: () => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Fixed bottom section
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Selected time display
                      if (_selectedStartTime != null && _selectedEndTime != null)
                        Container(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Theme.of(context).colorScheme.secondary,
                                  Theme.of(context).colorScheme.secondary.withOpacity(0.8),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.event_available,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Horario seleccionado',
                                        style: TextStyleTheme.caption.copyWith(
                                          color: Colors.white70,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Text(
                                            DateFormat('HH:mm').format(_selectedStartTime!),
                                            style: TextStyleTheme.headline3.copyWith(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(
                                            ' - ',
                                            style: TextStyleTheme.bodyText1.copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            DateFormat('HH:mm').format(_selectedEndTime!),
                                            style: TextStyleTheme.headline3.copyWith(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                            decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: Text(
                                              '${_selectedEndTime!.difference(_selectedStartTime!).inMinutes} min',
                                              style: TextStyleTheme.caption.copyWith(
                                                color: Colors.white,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.white70,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _selectedStartTime = null;
                                      _selectedEndTime = null;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      _buildConfirmButton(l10n),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConfirmButton(S l10n) {
    return Container(
      key: K.scheduleAssistantConfirmButton,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: ElevatedButton(
          onPressed: () {
            if (_selectedStartTime != null && _selectedEndTime != null) {
              _returnResult();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.pleaseSelectTimeRange)),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            l10n.confirm,
            style: TextStyleTheme.button.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
