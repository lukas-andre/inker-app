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
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

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
  int _currentStep = 0;
  bool _isLoadingStep = false;
  bool _manualNavigation = false;
  bool _hasLoadedOnce = false;

  int _calculateCurrentStep() {
    if (_manualNavigation) return _currentStep;
    if (_selectedStartTime != null && _selectedEndTime != null) return 2;
    if (_selectedDate != null) return 1;
    return 0;
  }

  void _handleTimeRangeSelected(DateTime startTime, DateTime endTime) {
    setState(() {
      _selectedStartTime = startTime;
      _selectedEndTime = endTime;
      // Ensure _selectedDate is updated when time is selected
      if (_selectedDate == null || 
          _selectedDate!.day != startTime.day || 
          _selectedDate!.month != startTime.month || 
          _selectedDate!.year != startTime.year) {
        _selectedDate = DateTime(startTime.year, startTime.month, startTime.day);
      }
      _manualNavigation = false; // Reset navigation flag when time is selected
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.tentativeDate != null && widget.tentativeDuration != null) {
      _selectedStartTime = widget.tentativeDate;
      _selectedEndTime = widget.tentativeDate!
          .add(Duration(minutes: widget.tentativeDuration!));
      _selectedDate = widget.tentativeDate;
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
              backgroundColor: Theme.of(context).colorScheme.primary,
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
                    // Extract data from state regardless of loading status
                    final isInitialLoad = state.maybeWhen(
                      loading: () => true,
                      loaded: (_, __, ___, ____, _____, ______, _______, ________, _________, __________, ___________, ____________, _____________) => false,
                      orElse: () => false,
                    ) && !_hasLoadedOnce;
                    
                    // Show spinner only on initial load
                    if (isInitialLoad) {
                      return const Center(
                        child: InkerProgressIndicator(),
                      );
                    }
                    
                    // Get data from loaded state or use defaults
                    final events = state.maybeMap(
                      loaded: (s) => s.events,
                      orElse: () => <ScheduleEvent>[],
                    );
                    final quotations = state.maybeMap(
                      loaded: (s) => s.quotations,
                      orElse: () => <ScheduleQuotation>[],
                    );
                    final availability = state.maybeMap(
                      loaded: (s) => s.availability,
                      orElse: () => <String, List<AvailabilitySlot>>{},
                    );
                    final suggestedSlots = state.maybeMap(
                      loaded: (s) => s.suggestedSlots,
                      orElse: () => <SuggestedSlot>[],
                    );
                    final workingHours = state.maybeMap(
                      loaded: (s) => s.workingHours,
                      orElse: () => const WorkingHours(
                        start: '09:00',
                        end: '18:00',
                        workingDays: [],
                      ),
                    );
                    final summary = state.maybeMap(
                      loaded: (s) => s.summary,
                      orElse: () => const ScheduleSummary(
                        totalConfirmedEvents: 0,
                        totalTentativeEvents: 0,
                        totalActionableQuotations: 0,
                        totalOpportunities: 0,
                        upcomingDeadlines: [],
                      ),
                    );
                    final selectedQuotation = state.maybeMap(
                      loaded: (s) => s.selectedQuotation,
                      orElse: () => null,
                    );
                    
                    // Mark that we've loaded at least once
                    state.maybeWhen(
                      loaded: (_, __, ___, ____, _____, ______, _______, ________, _________, __________, ___________, ____________, _____________) {
                        if (!_hasLoadedOnce) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            if (mounted) {
                              setState(() {
                                _hasLoadedOnce = true;
                              });
                            }
                          });
                        }
                      },
                      orElse: () {},
                    );
                    
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
    // Don't auto-advance steps based on selections
    // User must manually confirm to proceed
    
    return Column(
      children: [
        // Progress indicator
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  _buildStepIndicator(context, 1, 'Fecha', _currentStep >= 0),
                  Expanded(child: _buildStepConnector(_currentStep >= 1)),
                  _buildStepIndicator(context, 2, 'Hora', _currentStep >= 1),
                  Expanded(child: _buildStepConnector(_currentStep >= 2)),
                  _buildStepIndicator(context, 3, 'Confirmar', _currentStep >= 2),
                ],
              ),
              if (_currentStep < 2) ...[
                const SizedBox(height: 8),
                Text(
                  _currentStep == 0 
                    ? 'Selecciona una fecha disponible'
                    : 'Elige un horario conveniente',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ],
          ),
        ),
        
        // Main content based on step
        Expanded(
          child: _isLoadingStep 
            ? Center(
                child: InkerProgressIndicator(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              )
            : IndexedStack(
                index: _currentStep,
            children: [
              // Step 1: Date selection
              _buildDateSelectionStep(context, availability, workingHours, events, quotations),
              // Step 2: Time selection
              _buildTimeSelectionStep(context, suggestedSlots),
              // Step 3: Confirmation
              _buildConfirmationStep(context, l10n),
            ],
          ),
        ),
        
        // Bottom navigation
        if (_currentStep <= 2)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                if (_currentStep > 0)
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _manualNavigation = true;
                          if (_currentStep == 2) {
                            _currentStep = 1;
                          } else if (_currentStep == 1) {
                            _selectedStartTime = null;
                            _selectedEndTime = null;
                            _currentStep = 0;
                          }
                        });
                      },
                      child: const Text('Atrás'),
                    ),
                  ),
                if (_currentStep > 0) const SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: (_currentStep == 2) ||
                             (_selectedDate != null && _currentStep == 0) ||
                             (_selectedStartTime != null && _currentStep == 1)
                        ? () async {
                            if (_currentStep == 2) {
                              // En el paso de confirmación, completar la selección
                              _returnResult();
                            } else {
                              setState(() {
                                _isLoadingStep = true;
                                _manualNavigation = true;
                              });
                              
                              // Simulate loading for smooth transition
                              await Future.delayed(const Duration(milliseconds: 300));
                              
                              setState(() {
                                _currentStep = _currentStep + 1;
                                _isLoadingStep = false;
                              });
                            }
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text(
                      _currentStep == 2 ? 'Confirmar' : (_currentStep == 0 ? 'Continuar' : 'Siguiente'),
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
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
                                    if (!_initialDateSet && _selectedDate == null && widget.tentativeDate == null) {
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
                              Text(
                                '${DateFormat('EEEE', 'es').format(_selectedStartTime!)} ${_selectedStartTime!.day} de ${DateFormat('MMMM', 'es').format(_selectedStartTime!)}',
                                style: TextStyleTheme.bodyText1.copyWith(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 2),
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
    return SingleChildScrollView(
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

  Widget _buildStepIndicator(BuildContext context, int step, String label, bool isActive) {
    return Column(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive 
              ? Theme.of(context).colorScheme.secondary 
              : Theme.of(context).colorScheme.surface,
            border: Border.all(
              color: isActive 
                ? Theme.of(context).colorScheme.secondary 
                : Colors.grey[400]!,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              '$step',
              style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[600],
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isActive 
              ? Theme.of(context).colorScheme.secondary 
              : Colors.grey[600],
            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Widget _buildStepConnector(bool isActive) {
    return Container(
      height: 2,
      margin: const EdgeInsets.only(bottom: 20),
      color: isActive 
        ? Theme.of(context).colorScheme.secondary 
        : Colors.grey[300],
    );
  }

  Widget _buildDateSelectionStep(
    BuildContext context,
    Map<String, List<AvailabilitySlot>> availability,
    WorkingHours workingHours,
    List<ScheduleEvent> events,
    List<ScheduleQuotation> quotations,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Calendar
          EnhancedCalendarView(
            artistId: widget.artistId,
            selectedDate: _selectedDate ?? DateTime.now(),
            workingDays: workingHours.workingDays,
            onDateSelected: (date) {
              setState(() {
                _selectedDate = date;
                // Keep manual navigation to prevent auto-advance
              });
            },
          ),
          const SizedBox(height: 16),
          // Events for selected date
          if (_selectedDate != null)
            ScheduleEventsList(
              selectedDate: _selectedDate!,
              onEventTap: (event) {},
              onQuotationTap: (quotation) {
                setState(() {
                  _selectedQuotation = quotation;
                });
              },
            ),
        ],
      ),
    );
  }

  Widget _buildTimeSelectionStep(
    BuildContext context,
    List<SuggestedSlot> suggestedSlots,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: SmartTimeSelector(
        selectedDate: _selectedDate ?? DateTime.now(),
        onTimeSelected: _handleTimeRangeSelected,
        onDurationChanged: (duration) {
          if (_selectedStartTime != null) {
            setState(() {
              _selectedEndTime = _selectedStartTime!.add(Duration(minutes: duration));
            });
          }
        },
      ),
    );
  }

  Widget _buildConfirmationStep(BuildContext context, S l10n) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Summary card
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 32,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Resumen de tu cita',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _buildSummaryRow(
                    context,
                    Icons.calendar_today,
                    'Fecha',
                    _selectedStartTime != null 
                      ? DateFormat('EEEE, d MMMM yyyy', 'es').format(_selectedStartTime!)
                      : _selectedDate != null
                        ? DateFormat('EEEE, d MMMM yyyy', 'es').format(_selectedDate!)
                        : '',
                  ),
                  const SizedBox(height: 12),
                  _buildSummaryRow(
                    context,
                    Icons.access_time,
                    'Hora',
                    _selectedStartTime != null && _selectedEndTime != null
                      ? '${DateFormat('HH:mm').format(_selectedStartTime!)} - ${DateFormat('HH:mm').format(_selectedEndTime!)}'
                      : '',
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(Icons.timer, color: Theme.of(context).colorScheme.secondary, size: 20),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Duración',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    _selectedStartTime != null && _selectedEndTime != null
                                      ? '${_selectedEndTime!.difference(_selectedStartTime!).inMinutes} minutos'
                                      : '',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Theme.of(context).colorScheme.secondary,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                TextButton(
                                  onPressed: () {
                                    // Show duration picker
                                    _showDurationPicker(context);
                                  },
                                  child: const Text('Cambiar'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (_selectedQuotation != null) ...[
                    const SizedBox(height: 12),
                    _buildSummaryRow(
                      context,
                      Icons.person,
                      'Cliente',
                      _selectedQuotation!.customerName,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(BuildContext context, IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.secondary, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  void _showDurationPicker(BuildContext context) {
    final durationOptions = [30, 60, 90, 120, 180];
    final currentDuration = _selectedEndTime != null && _selectedStartTime != null
      ? _selectedEndTime!.difference(_selectedStartTime!).inMinutes
      : 60;
      
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seleccionar duración',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'Elige cuánto tiempo necesitas para tu cita',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: durationOptions.map((duration) {
                  final isSelected = duration == currentDuration;
                  return ChoiceChip(
                    label: Text(
                      '$duration min',
                      style: TextStyle(
                        color: isSelected ? Colors.white : Theme.of(context).colorScheme.onSurface,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    selected: isSelected,
                    selectedColor: Theme.of(context).colorScheme.secondary,
                    onSelected: (selected) {
                      if (selected && _selectedStartTime != null) {
                        setState(() {
                          _selectedEndTime = _selectedStartTime!.add(Duration(minutes: duration));
                        });
                        Navigator.pop(context);
                      }
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 24),
            ],
          ),
        );
      },
    );
  }
}
