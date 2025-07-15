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
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 600;
            final isTablet = constraints.maxWidth >= 600 && constraints.maxWidth < 900;
            
            return Scaffold(
              key: K.scheduleAssistantView,
              backgroundColor: isMobile ? Colors.white : Theme.of(context).colorScheme.primary,
              appBar: AppBar(
                title: Text(
                  l10n.scheduleAssistant, 
                  style: isMobile 
                    ? Theme.of(context).textTheme.titleLarge 
                    : TextStyleTheme.headline3,
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
                elevation: isMobile ? 4 : 0,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back, 
                    color: isMobile ? Theme.of(context).colorScheme.onPrimary : Colors.white,
                  ),
                  onPressed: _returnResult,
                ),
              ),
              body: SafeArea(
                child: BlocBuilder<ScheduleAssistantBloc, ScheduleAssistantState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (events, quotations, availability, suggestedSlots,
                          workingHours, summary, rangeStart, rangeEnd, selectedQuotation,
                          selectedTimeSlot, showAvailabilityDensity, isCreatingEvent, selectedDuration) {
                        
                        if (isMobile) {
                          return _buildMobileLayout(
                            context,
                            l10n,
                            events,
                            quotations,
                            availability,
                            suggestedSlots,
                            workingHours,
                            summary,
                            selectedQuotation,
                          );
                        } else {
                          return _buildDesktopLayout(
                            context,
                            l10n,
                            events,
                            quotations,
                            availability,
                            suggestedSlots,
                            workingHours,
                            summary,
                            selectedQuotation,
                          );
                        }
                      },
                      orElse: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildMobileLayout(
    BuildContext context,
    S l10n,
    List<ScheduleEvent> events,
    List<ScheduleQuotation> quotations,
    Map<String, List<AvailabilitySlot>> availability,
    List<SuggestedSlot> suggestedSlots,
    WorkingHours workingHours,
    ScheduleSummary? summary,
    ScheduleQuotation? selectedQuotation,
  ) {
    // Get pending quotations count
    final pendingQuotations = quotations.where((q) => q.actionRequired && q.proposedDate == null).length;
    
    return DefaultTabController(
      length: 3 + (pendingQuotations > 0 ? 1 : 0),
      child: Column(
        children: [
          Material(
            color: Theme.of(context).colorScheme.surface,
            elevation: 2,
            child: TabBar(
              isScrollable: pendingQuotations > 0,
              labelColor: Theme.of(context).colorScheme.primary,
              unselectedLabelColor: Colors.grey[600],
              indicatorColor: Theme.of(context).colorScheme.primary,
              tabs: [
                if (pendingQuotations > 0)
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.notification_important, size: 20),
                        const SizedBox(width: 4),
                        Text('Pendientes'),
                        const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            '$pendingQuotations',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                const Tab(text: 'Calendario'),
                const Tab(text: 'Horarios'),
                const Tab(text: 'Eventos'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                if (pendingQuotations > 0)
                  _buildPendingQuotationsTab(context, quotations),
                _buildCalendarTab(context, availability, workingHours),
                _buildTimeSlotsTab(context, suggestedSlots),
                _buildEventsTab(context, events, quotations),
              ],
            ),
          ),
          if (_selectedStartTime != null && _selectedEndTime != null)
            _buildMobileConfirmSection(context, l10n),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout(
    BuildContext context,
    S l10n,
    List<ScheduleEvent> events,
    List<ScheduleQuotation> quotations,
    Map<String, List<AvailabilitySlot>> availability,
    List<SuggestedSlot> suggestedSlots,
    WorkingHours workingHours,
    ScheduleSummary? summary,
    ScheduleQuotation? selectedQuotation,
  ) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
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
          ),
        ),
        // Fixed bottom section for desktop
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

  Widget _buildPendingQuotationsTab(BuildContext context, List<ScheduleQuotation> quotations) {
    final pendingQuotations = quotations.where((q) => q.actionRequired && q.proposedDate == null).toList();
    
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: pendingQuotations.length,
      itemBuilder: (context, index) {
        final quotation = pendingQuotations[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedQuotation = quotation;
              });
              context.read<ScheduleAssistantBloc>().add(
                ScheduleAssistantEvent.quotationSelected(quotation.id),
              );
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.orange.withOpacity(0.1),
                        child: const Icon(Icons.request_quote, color: Colors.orange),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              quotation.customerName,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (quotation.actionDeadline != null)
                              Text(
                                _formatDeadline(quotation.actionDeadline!),
                                style: TextStyle(
                                  color: Colors.red[700],
                                  fontSize: 12,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    quotation.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (quotation.estimatedCost != null)
                        Text(
                          _formatMoney(quotation.estimatedCost!),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            _selectedQuotation = quotation;
                          });
                        },
                        icon: const Icon(Icons.arrow_forward, size: 16),
                        label: const Text('Responder'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildCalendarTab(
    BuildContext context,
    Map<String, List<AvailabilitySlot>> availability,
    WorkingHours workingHours,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Set initial selected date if needed
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
          // Show selected date info
          if (_selectedDate != null)
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      DateFormat('EEEE, d MMMM yyyy', 'es').format(_selectedDate!),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTimeSlotsTab(
    BuildContext context,
    List<SuggestedSlot> suggestedSlots,
  ) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          child: SmartTimeSelector(
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
        ),
      ],
    );
  }

  Widget _buildEventsTab(
    BuildContext context,
    List<ScheduleEvent> events,
    List<ScheduleQuotation> quotations,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
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
        ],
      ),
    );
  }

  Widget _buildMobileConfirmSection(BuildContext context, S l10n) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.schedule,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat('EEEE, d MMMM', 'es').format(_selectedStartTime!),
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.8),
                        ),
                      ),
                      Text(
                        '${DateFormat('HH:mm').format(_selectedStartTime!)} - ${DateFormat('HH:mm').format(_selectedEndTime!)}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedStartTime = null;
                      _selectedEndTime = null;
                    });
                  },
                  child: const Text('Cambiar'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _returnResult,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                l10n.confirm,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDeadline(DateTime deadline) {
    final now = DateTime.now();
    final difference = deadline.difference(now);
    
    if (difference.isNegative) {
      return 'Vencido';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h restantes';
    } else {
      return '${difference.inDays}d restantes';
    }
  }

  String _formatMoney(EstimatedCost cost) {
    final formatter = NumberFormat.currency(
      locale: cost.currency == 'CLP' ? 'es_CL' : 'en_US',
      symbol: cost.currency == 'USD' ? '\$' : '\$',
      decimalDigits: 0,
    );
    return formatter.format(cost.amount);
  }
}
