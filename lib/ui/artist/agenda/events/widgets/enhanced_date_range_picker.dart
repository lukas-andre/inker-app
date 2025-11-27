import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/domain/blocs/available_time_slots/available_time_slots_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/available_time_slots_widget.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:intl/intl.dart';

class EnhancedDateRangePicker extends StatefulWidget {
  // Adding a parameter for the selected date to explicitly connect this component
  // with the calendar date picker
  final DateTime? initialDate;

  const EnhancedDateRangePicker({
    super.key,
    this.initialDate,
  });

  @override
  _EnhancedDateRangePickerState createState() => _EnhancedDateRangePickerState();
}

class _EnhancedDateRangePickerState extends State<EnhancedDateRangePicker> {
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _endTimeController = TextEditingController();
  final List<Map<String, dynamic>> _durations = [
    {'label': '30 minutos', 'minutes': 30},
    {'label': '1 hora', 'minutes': 60},
    {'label': '1 hora 30 minutos', 'minutes': 90},
    {'label': '2 horas', 'minutes': 120},
    {'label': '2 horas 30 minutos', 'minutes': 150},
    {'label': '3 horas', 'minutes': 180},
    {'label': '3 horas 30 minutos', 'minutes': 210},
    {'label': '4 horas', 'minutes': 240},
    {'label': 'Personalizado', 'minutes': 0},
  ];
  
  Map<String, dynamic> _selectedDuration = {'label': '1 hora', 'minutes': 60};
  String _timeRange = '';
  bool _isCustomDuration = false;
  bool _isInitialized = false;
  String _lastSelectedDate = '';
  
  @override
  void initState() {
    super.initState();
    
    // Initialize from existing time in the bloc state
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateControllersFromState();
      
      // Store the initial date from the bloc
      final state = context.read<ArtistAgendaCreateEventBloc>().state;
      _lastSelectedDate = state.date;
      
      // If widget has an explicit initialDate, update the bloc with it
      if (widget.initialDate != null) {
        final dateFormatted = DateFormat('yyyy-MM-dd').format(widget.initialDate!);
        if (dateFormatted != _lastSelectedDate) {
          print('EnhancedDateRangePicker: Updating date from prop: $dateFormatted');
          context.read<ArtistAgendaCreateEventBloc>().add(
            ArtistAgendaCreateEventEvent.dateChanged(dateFormatted),
          );
          _lastSelectedDate = dateFormatted;
          
          // Also trigger a refresh of available time slots for the provided date
          _refreshAvailableTimeSlots(dateFormatted);
        }
      }
    });
  }
  
  @override
  void didUpdateWidget(EnhancedDateRangePicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    // React to changes in initialDate prop
    if (widget.initialDate != oldWidget.initialDate && widget.initialDate != null) {
      final dateFormatted = DateFormat('yyyy-MM-dd').format(widget.initialDate!);
      if (dateFormatted != _lastSelectedDate) {
        print('EnhancedDateRangePicker.didUpdateWidget: Date changed to: $dateFormatted');
        
        // Update the bloc
        context.read<ArtistAgendaCreateEventBloc>().add(
          ArtistAgendaCreateEventEvent.dateChanged(dateFormatted),
        );
        
        // Update our tracking variable
        _lastSelectedDate = dateFormatted;
        
        // Refresh available time slots
        _refreshAvailableTimeSlots(dateFormatted);
      }
    }
  }

  @override
  void dispose() {
    _startTimeController.dispose();
    _endTimeController.dispose();
    super.dispose();
  }
  
  void _updateControllersFromState() {
    // Get current state
    final state = context.read<ArtistAgendaCreateEventBloc>().state;
    
    // For backward compatibility, check both time (legacy) and startTime/endTime
    if (state.time.isNotEmpty && _startTimeController.text.isEmpty) {
      // If we have legacy time format, use it as the start time
      _startTimeController.text = state.time;
      
      // Calculate end time based on default duration (1 hour)
      try {
        final startTime = DateFormat('HH:mm').parse(state.time);
        final endTime = startTime.add(Duration(minutes: _selectedDuration['minutes'] as int));
        _endTimeController.text = DateFormat('HH:mm').format(endTime);
      } catch (e) {
        // Handle parsing error
      }
    }
    
    // If we have explicit start/end time, use those
    if (state.startTime.isNotEmpty && _startTimeController.text.isEmpty) {
      _startTimeController.text = state.startTime;
    }
    
    if (state.endTime.isNotEmpty && _endTimeController.text.isEmpty) {
      _endTimeController.text = state.endTime;
      _isCustomDuration = true;
    }
    
    // Only calculate time range after initialization
    if (_startTimeController.text.isNotEmpty) {
      _calculateTimeRange();
      _isInitialized = true;
    }
  }
  
  void _updateTimeRange() {
    if (_startTimeController.text.isEmpty) {
      setState(() {
        _timeRange = '';
      });
      return;
    }

    try {
      if (_isCustomDuration) {
        _calculateTimeRange();
      } else {
        final startTime = DateFormat('HH:mm').parse(_startTimeController.text);
        final durationInMinutes = _selectedDuration['minutes'] as int;
        final endTime = startTime.add(Duration(minutes: durationInMinutes));
        
        // Update end time controller
        _endTimeController.text = DateFormat('HH:mm').format(endTime);
        
        // Update state
        context.read<ArtistAgendaCreateEventBloc>().add(
          ArtistAgendaCreateEventEvent.timeChanged(
            _startTimeController.text,
            _endTimeController.text,
          ),
        );
        
        setState(() {
          _timeRange = '${_startTimeController.text} - ${_endTimeController.text}';
        });
      }
    } catch (e) {
      // Handle parsing error
      setState(() {
        _timeRange = '';
      });
    }
  }
  
  void _calculateTimeRange() {
    if (_startTimeController.text.isEmpty || _endTimeController.text.isEmpty) {
      setState(() {
        _timeRange = '';
      });
      return;
    }
    
    try {
      // Update state with the time range
      context.read<ArtistAgendaCreateEventBloc>().add(
        ArtistAgendaCreateEventEvent.timeChanged(
          _startTimeController.text,
          _endTimeController.text,
        ),
      );
      
      setState(() {
        _timeRange = '${_startTimeController.text} - ${_endTimeController.text}';
      });
    } catch (e) {
      // Handle parsing error
      setState(() {
        _timeRange = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ArtistAgendaCreateEventBloc, ArtistAgendaCreateEventState>(
      listenWhen: (previous, current) {
        // Listen for changes in date, startTime, or endTime
        return previous.date != current.date || 
               previous.startTime != current.startTime || 
               previous.endTime != current.endTime;
      },
      listener: (context, state) {
        // Only update from state changes if not already initialized or if there's a mismatch
        if (!_isInitialized || 
            (state.startTime.isNotEmpty && state.startTime != _startTimeController.text) ||
            (state.endTime.isNotEmpty && state.endTime != _endTimeController.text)) {
          
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (state.startTime.isNotEmpty && state.startTime != _startTimeController.text) {
              _startTimeController.text = state.startTime;
            }
            
            if (state.endTime.isNotEmpty && state.endTime != _endTimeController.text) {
              _endTimeController.text = state.endTime;
              _isCustomDuration = true;
            }
            
            if (_startTimeController.text.isNotEmpty) {
              _calculateTimeRange();
              _isInitialized = true;
            }
          });
        }
        
        // Check if the date has changed
        if (state.date != _lastSelectedDate && state.date.isNotEmpty) {
          print('Date changed from $_lastSelectedDate to ${state.date}');
          _lastSelectedDate = state.date;
          
          // The date has changed! Let's make sure we update the available time slots
          _refreshAvailableTimeSlots(state.date);
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Time selector section
          Row(
            children: [
              // Start time picker
              Expanded(
                child: TextFormField(
                  controller: _startTimeController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    error: null,
                    errorBorder: InputBorder.none,
                    errorText: null,
                    errorStyle: TextStyleTheme.copyWith(
                        color: const Color(0x002a2d40), fontSize: 0),
                    labelText: S.of(context).startTime,
                    labelStyle: TextStyleTheme.copyWith(
                        color: Colors.white54, fontSize: 18),
                    border: InputBorder.none,
                    suffixIcon:
                        const Icon(Icons.access_time, color: Colors.white54),
                    filled: true,
                    fillColor: const Color(0x002a2d40),
                  ),
                  readOnly: false,
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    
                    // Check for time conflicts when selecting start time
                    _checkForTimeConflicts();
                    
                    // Build working hours from artist settings (9am-6pm by default)
                    final workHours = _getArtistWorkingHoursForToday();
                    final startOfWorkDay = workHours.first;
                    final endOfWorkDay = workHours.last;
                    
                    TimeOfDay initialTime;
                    try {
                      // Try to use the current value, or default to current time if within working hours
                      if (_startTimeController.text.isNotEmpty) {
                        initialTime = TimeOfDay.fromDateTime(DateFormat('HH:mm').parse(_startTimeController.text));
                      } else {
                        final now = TimeOfDay.now();
                        
                        // Check if current time is within working hours
                        if (_isTimeInWorkingHours(now, startOfWorkDay, endOfWorkDay)) {
                          initialTime = now;
                        } else {
                          // Default to start of working day
                          initialTime = startOfWorkDay;
                        }
                      }
                    } catch (e) {
                      initialTime = startOfWorkDay;
                    }
                    
                    final TimeOfDay? picked = await showTimePicker(
                      context: context,
                      initialTime: initialTime,
                      builder: (BuildContext context, Widget? child) {
                        return MediaQuery(
                          data: MediaQuery.of(context)
                              .copyWith(alwaysUse24HourFormat: true),
                          child: child!,
                        );
                      },
                    );
                    
                    if (picked != null) {
                      final now = DateTime.now();
                      final dateTime = DateTime(now.year, now.month, now.day,
                          picked.hour, picked.minute);
                          
                      // Check if the selected time is outside working hours and warn
                      if (!_isTimeInWorkingHours(picked, startOfWorkDay, endOfWorkDay)) {
                        _showWorkingHoursWarning(picked, startOfWorkDay, endOfWorkDay);
                      }
                      
                      setState(() {
                        _startTimeController.text = DateFormat('HH:mm').format(dateTime);
                        _updateTimeRange();
                        
                        // Check for conflicts after selecting time
                        _checkForTimeConflicts();
                      });
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).errorMsgHoursValidationError;
                    }
                    return null;
                  },
                ),
              ),
              
              const SizedBox(width: 10),
              
              // Duration or End Time section
              Expanded(
                child: _isCustomDuration
                    ? _buildEndTimePicker()
                    : _buildDurationDropdown(),
              ),
            ],
          ),
          
          const SizedBox(height: 8),
          
          // Custom duration toggle
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                S.of(context).customRange,
                style: TextStyleTheme.copyWith(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              Switch(
                value: _isCustomDuration,
                activeColor: Theme.of(context).colorScheme.secondary,
                onChanged: (bool value) {
                  setState(() {
                    _isCustomDuration = value;
                    if (value && _startTimeController.text.isNotEmpty) {
                      // If switching to custom and start time is set, initialize end time
                      if (_endTimeController.text.isEmpty) {
                        try {
                          final startTime = DateFormat('HH:mm').parse(_startTimeController.text);
                          final endTime = startTime.add(Duration(minutes: _selectedDuration['minutes'] as int));
                          _endTimeController.text = DateFormat('HH:mm').format(endTime);
                        } catch (e) {
                          // Handle parsing error
                        }
                      }
                      _calculateTimeRange();
                    } else if (!value) {
                      // If switching to duration-based, apply the selected duration
                      _updateTimeRange();
                    }
                  });
                },
              ),
            ],
          ),
          
          // Time range display
          if (_timeRange.isNotEmpty)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  _timeRange,
                  style: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            
          // Smart schedule assistant
          if (_startTimeController.text.isNotEmpty && _endTimeController.text.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () => _suggestAvailableTimes(),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Theme.of(context).colorScheme.surface)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.assistant_outlined, color: Colors.white, size: 18),
                      const SizedBox(width: 8),
                      Text(
                        'View available time slots',
                        style: TextStyleTheme.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
          // Validation error message
          if (_startTimeController.text.isEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: Text(
                S.of(context).errorMsgHoursValidationError,
                style: TextStyleTheme.copyWith(color: Colors.red, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
  
  Widget _buildDurationDropdown() {
    return DropdownButtonFormField<String>(
      value: _selectedDuration['label'] as String,
      dropdownColor: Theme.of(context).colorScheme.surface,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: S.of(context).duration,
        labelStyle: TextStyleTheme.copyWith(color: Colors.white54),
        border: InputBorder.none,
        filled: true,
        fillColor: const Color(0x002a2d40),
      ),
      items: _durations.map((Map<String, dynamic> duration) {
        return DropdownMenuItem<String>(
          value: duration['label'] as String,
          child: Text(
            duration['label'] as String,
            style: const TextStyle(color: Colors.white),
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
      onChanged: (newValue) {
        if (newValue != null) {
          setState(() {
            _selectedDuration = _durations.firstWhere(
              (duration) => duration['label'] == newValue,
            );
            
            if (_selectedDuration['label'] == 'Personalizado') {
              _isCustomDuration = true;
              if (_startTimeController.text.isNotEmpty) {
                try {
                  final startTime = DateFormat('HH:mm').parse(_startTimeController.text);
                  final endTime = startTime.add(const Duration(minutes: 60));
                  _endTimeController.text = DateFormat('HH:mm').format(endTime);
                } catch (e) {
                  // Handle parsing error
                }
              }
            } else {
              _updateTimeRange();
            }
          });
        }
      },
    );
  }
  
  Widget _buildEndTimePicker() {
    return TextFormField(
      controller: _endTimeController,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: S.of(context).endTime,
        labelStyle: TextStyleTheme.copyWith(color: Colors.white54, fontSize: 18),
        border: InputBorder.none,
        suffixIcon: const Icon(Icons.access_time, color: Colors.white54),
        filled: true,
        fillColor: const Color(0x002a2d40),
      ),
      readOnly: false,
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());
        
        // Check if we need to show conflict warning when tapping the field
        _checkForTimeConflicts();
        
        TimeOfDay initialTime;
        try {
          initialTime = _endTimeController.text.isNotEmpty
              ? TimeOfDay.fromDateTime(DateFormat('HH:mm').parse(_endTimeController.text))
              : TimeOfDay.now();
        } catch (e) {
          initialTime = TimeOfDay.now();
        }
        
        final TimeOfDay? picked = await showTimePicker(
          context: context,
          initialTime: initialTime,
          builder: (BuildContext context, Widget? child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
              child: child!,
            );
          },
        );
        
        if (picked != null) {
          final now = DateTime.now();
          final dateTime = DateTime(
            now.year,
            now.month,
            now.day,
            picked.hour,
            picked.minute,
          );
          setState(() {
            _endTimeController.text = DateFormat('HH:mm').format(dateTime);
            _calculateTimeRange();
            
            // Check for conflicts after selecting time
            _checkForTimeConflicts();
          });
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).errorMsgHoursValidationError;
        }
        
        if (_startTimeController.text.isNotEmpty && value.isNotEmpty) {
          try {
            final startTime = DateFormat('HH:mm').parse(_startTimeController.text);
            final endTime = DateFormat('HH:mm').parse(value);
            if (endTime.isBefore(startTime) || endTime.isAtSameMomentAs(startTime)) {
              return S.of(context).errorMsgEndTimeMustBeAfterStart;
            }
          } catch (e) {
            return S.of(context).errorMsgInvalidTimeFormat;
          }
        }
        
        return null;
      },
    );
  }
  
  // Check for time conflicts with existing events
  void _checkForTimeConflicts() {
    // Only check if we have a valid date and times
    if (context.read<ArtistAgendaCreateEventBloc>().state.date.isEmpty ||
        _startTimeController.text.isEmpty || 
        _endTimeController.text.isEmpty) {
      return;
    }
    
    final state = context.read<ArtistAgendaCreateEventBloc>().state;
    final selectedDate = state.date;
    
    try {
      // Parse selected date and times to create DateTime objects
      final dateParts = selectedDate.split('-');
      final year = int.parse(dateParts[0]);
      final month = int.parse(dateParts[1]);
      final day = int.parse(dateParts[2]);
      
      final startTimeParts = _startTimeController.text.split(':');
      final startHour = int.parse(startTimeParts[0]);
      final startMinute = int.parse(startTimeParts[1]);
      
      final endTimeParts = _endTimeController.text.split(':');
      final endHour = int.parse(endTimeParts[0]);
      final endMinute = int.parse(endTimeParts[1]);
      
      final startDateTime = DateTime(year, month, day, startHour, startMinute);
      final endDateTime = DateTime(year, month, day, endHour, endMinute);
      
      // In a real implementation, we would call the agenda service to check for conflicts
      // For now, show a UI indicator that the app is checking for conflicts
      
      // If we detect a conflict, show a warning dialog
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_hasSimulatedConflict(startDateTime, endDateTime)) {
          _showConflictWarning(startDateTime, endDateTime);
        }
      });
    } catch (e) {
      // Handle date parsing errors
      print('Error checking for time conflicts: $e');
    }
  }
  
  // Temporary function to simulate conflicts for UI testing
  // This would be replaced with actual conflict detection using the agenda service
  bool _hasSimulatedConflict(DateTime start, DateTime end) {
    // Simulate conflicts during common lunch hours (12-1pm) for demo purposes
    // This would be replaced with actual API calls to check existing events
    if ((start.hour == 12 || (start.hour == 11 && start.minute >= 30)) && end.hour <= 13) {
      return true;
    }
    
    // Also simulate conflicts in the early morning (before 8am)
    if (start.hour < 8) {
      return true;
    }
    
    return false;
  }
  
  // Helper to show a conflict warning dialog
  void _showConflictWarning(DateTime start, DateTime end) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text('Scheduling Conflict Detected', 
            style: TextStyleTheme.headline3.copyWith(color: Colors.white),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('The time you selected conflicts with existing events:',
                style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 12),
              
              // Show simulated conflicting events
              // In a real implementation, this would display actual conflicting events
              _buildConflictItem(
                'Client Meeting', 
                'With: John Smith', 
                '12:00 - 13:00', 
                Icons.people_outline
              ),
              
              const SizedBox(height: 16),
              Text('Would you like to proceed anyway or select a different time?',
                style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Proceed Anyway', 
                style: TextStyleTheme.bodyText1.copyWith(color: Colors.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              child: Text('Find Available Time', 
                style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                _suggestAvailableTimes();
              },
            ),
          ],
        );
      },
    );
  }
  
  // Helper to build a conflict item in the warning dialog
  Widget _buildConflictItem(String title, String subtitle, String time, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[800]!)
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.red[400], size: 24),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyleTheme.bodyText1.copyWith(
                  fontWeight: FontWeight.bold, 
                  color: Colors.white
                )),
                Text(subtitle, style: TextStyleTheme.bodyText2.copyWith(
                  color: Colors.white70
                )),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 14, color: Colors.white70),
                    const SizedBox(width: 4),
                    Text(time, style: TextStyleTheme.bodyText2.copyWith(
                      color: Colors.white70
                    )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  
  // Suggest available times to the user
  void _suggestAvailableTimes() {
    // Parse the selected duration in minutes
    int durationMinutes = 60; // Default to 1 hour
    
    if (!_isCustomDuration && _selectedDuration['minutes'] != null) {
      durationMinutes = _selectedDuration['minutes'] as int;
    } else if (_startTimeController.text.isNotEmpty && _endTimeController.text.isNotEmpty) {
      try {
        final startTime = DateFormat('HH:mm').parse(_startTimeController.text);
        final endTime = DateFormat('HH:mm').parse(_endTimeController.text);
        durationMinutes = endTime.difference(startTime).inMinutes;
      } catch (e) {
        print('Error calculating duration: $e');
      }
    }
    
    // Try to get the current date from multiple sources, in order of priority:
    // 1. The initialDate prop (if available)
    // 2. The current date from the bloc
    // 3. Today's date as fallback
    DateTime selectedDate;
    
    // First check if we have an initialDate prop
    if (widget.initialDate != null) {
      selectedDate = widget.initialDate!;
      print('EnhancedDateRangePicker: Using initialDate from props: ${selectedDate.toIso8601String()}');
    } else {
      // Next, try to get the date from the bloc
      final state = context.read<ArtistAgendaCreateEventBloc>().state;
      final dateString = state.date;
      
      if (dateString.isNotEmpty) {
        try {
          final dateParts = dateString.split('-');
          selectedDate = DateTime(
            int.parse(dateParts[0]), 
            int.parse(dateParts[1]), 
            int.parse(dateParts[2])
          );
          print('EnhancedDateRangePicker: Using date from bloc: ${selectedDate.toIso8601String()}');
        } catch (e) {
          // Use today as fallback
          selectedDate = DateTime.now();
          print('Error parsing date: $e, defaulting to today');
        }
      } else {
        // Use today as fallback
        selectedDate = DateTime.now();
        print('No date in state, defaulting to today');
      }
    }
    
    print('Current selected date for time slots: ${selectedDate.toString()}');
    
    // Create a new bloc instance specifically for this dialog
    // This ensures we don't have state conflicts with other parts of the UI
    final dialogTimeSlotsBloc = AvailableTimeSlotsBloc(
      agendaService: context.read(),
      sessionService: context.read(),
    );
    
    // Fetch available time slots before showing the dialog
    dialogTimeSlotsBloc.add(
      AvailableTimeSlotsEvent.getAvailableTimeSlots(
        artistId: '', // TODO: Get actual artist ID from context/state
        date: selectedDate,
        durationMinutes: durationMinutes,
      ),
    );
    
    // Show dialog with available time slots
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return BlocProvider<AvailableTimeSlotsBloc>.value(
          value: dialogTimeSlotsBloc,
          child: StatefulBuilder(
            builder: (context, setDialogState) {
              // Create a formatter for the displayed date
              final dateFormatter = DateFormat('EEEE, d MMMM', 'es');
              
              return AlertDialog(
                backgroundColor: Theme.of(context).colorScheme.surface,
                title: Text('Horarios Disponibles', 
                  style: TextStyleTheme.headline3.copyWith(color: Colors.white),
                ),
                content: SizedBox(
                  width: double.maxFinite,
                  height: 400, // Set a fixed height for the dialog
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Date and duration display with update capability
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Horarios para ${dateFormatter.format(selectedDate)}',
                                  style: TextStyleTheme.bodyText1.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Duración: $durationMinutes minutos',
                                  style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                          
                          // Refresh button
                          IconButton(
                            icon: const Icon(Icons.refresh, color: Colors.white70),
                            onPressed: () {
                              // Show a date picker to change the date for time slots
                              showDatePicker(
                                context: context,
                                initialDate: selectedDate,
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(const Duration(days: 365)),
                                builder: (BuildContext context, Widget? child) {
                                  return Theme(
                                    data: ThemeData.dark().copyWith(
                                      colorScheme: ColorScheme.dark(
                                        primary: Theme.of(context).colorScheme.secondary,
                                        onPrimary: Colors.white,
                                        surface: Theme.of(context).colorScheme.surface,
                                        onSurface: Colors.white,
                                      ), dialogTheme: DialogThemeData(backgroundColor: Theme.of(context).colorScheme.surface),
                                    ),
                                    child: child!,
                                  );
                                },
                              ).then((newDate) {
                                if (newDate != null) {
                                  // Update the state in the parent widget
                                  context.read<ArtistAgendaCreateEventBloc>().add(
                                    ArtistAgendaCreateEventEvent.dateChanged(
                                      newDate.toIso8601String(),
                                    ),
                                  );
                                  
                                  // Update the dialog state
                                  setDialogState(() {
                                    selectedDate = newDate;
                                  });
                                  
                                  // Fetch new time slots for the selected date
                                  dialogTimeSlotsBloc.add(const AvailableTimeSlotsEvent.resetState());
                                  dialogTimeSlotsBloc.add(
                                    AvailableTimeSlotsEvent.getAvailableTimeSlots(
                                      artistId: '',
                                      date: newDate,
                                      durationMinutes: durationMinutes,
                                    ),
                                  );
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      
                      // Available time slots widget
                      Expanded(
                        child: AvailableTimeSlotsWidget(
                          artistId: '', // TODO: Get actual artist ID from context/state
                          selectedDate: selectedDate,
                          durationMinutes: durationMinutes,
                          onTimeSlotSelected: (startTime, endTime) {
                            setState(() {
                              _startTimeController.text = DateFormat('HH:mm').format(startTime);
                              _endTimeController.text = DateFormat('HH:mm').format(endTime);
                              _calculateTimeRange();
                            });
                            Navigator.of(dialogContext).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text('Cancelar', 
                      style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
                    ),
                    onPressed: () {
                      // Clean up the bloc when dialog is closed
                      dialogTimeSlotsBloc.close();
                      Navigator.of(dialogContext).pop();
                    },
                  ),
                ],
              );
            }
          ),
        );
      },
    ).then((_) {
      // Clean up the bloc when dialog is closed
      dialogTimeSlotsBloc.close();
    });
  }
  
  // Build a button for selecting an available time slot
  Widget _buildAvailableTimeButton(String label, TimeOfDay startTime) {
    // Calculate end time (1 hour later)
    final endTime = TimeOfDay(
      hour: (startTime.hour + 1) % 24,
      minute: startTime.minute
    );
    
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          // Update time controllers with the selected time slot
          final now = DateTime.now();
          final startDateTime = DateTime(
            now.year, now.month, now.day, startTime.hour, startTime.minute);
          final endDateTime = DateTime(
            now.year, now.month, now.day, endTime.hour, endTime.minute);
          
          setState(() {
            _startTimeController.text = DateFormat('HH:mm').format(startDateTime);
            _endTimeController.text = DateFormat('HH:mm').format(endDateTime);
            _calculateTimeRange();
          });
          
          Navigator.of(context).pop();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: TextStyleTheme.bodyText1.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
            )),
            const Icon(Icons.check_circle_outline, color: Colors.white),
          ],
        ),
      ),
    );
  }
  
  // Get artist working hours from settings
  // This would be replaced with actual artist settings from the API
  List<TimeOfDay> _getArtistWorkingHoursForToday() {
    // Default working hours: 9 AM - 6 PM
    return [
      const TimeOfDay(hour: 9, minute: 0),
      const TimeOfDay(hour: 18, minute: 0)
    ];
  }
  
  // Check if a time is within working hours
  bool _isTimeInWorkingHours(TimeOfDay time, TimeOfDay start, TimeOfDay end) {
    final timeValue = time.hour * 60 + time.minute;
    final startValue = start.hour * 60 + start.minute;
    final endValue = end.hour * 60 + end.minute;
    
    return timeValue >= startValue && timeValue <= endValue;
  }
  
  // Show warning for time outside working hours
  void _showWorkingHoursWarning(TimeOfDay selected, TimeOfDay start, TimeOfDay end) {
    // Format times for display
    final startStr = '${start.hour}:${start.minute.toString().padLeft(2, '0')}';
    final endStr = '${end.hour}:${end.minute.toString().padLeft(2, '0')}';
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text('Outside Working Hours', 
            style: TextStyleTheme.headline3.copyWith(color: Colors.white),
          ),
          content: Text(
            'The time you selected is outside your regular working hours ($startStr - $endStr).\n\n'
            'You can still schedule this event, but it may not be visible to clients looking for available slots.',
            style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
          ),
          actions: [
            TextButton(
              child: Text('Use Working Hours',
                style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
              ),
              onPressed: () {
                // Set to start of working day
                final now = DateTime.now();
                final startDateTime = DateTime(
                  now.year, now.month, now.day, start.hour, start.minute);
                
                setState(() {
                  _startTimeController.text = DateFormat('HH:mm').format(startDateTime);
                  _updateTimeRange();
                });
                
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              child: Text('Keep Selected Time', 
                style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  
  // Helper method to refresh available time slots when the date changes
  void _refreshAvailableTimeSlots(String dateString) {
    try {
      // Parse the selected date
      final dateParts = dateString.split('-');
      final selectedDate = DateTime(
        int.parse(dateParts[0]), 
        int.parse(dateParts[1]), 
        int.parse(dateParts[2])
      );
      
      // Get the AvailableTimeSlotsBloc
      final availableTimeSlotsBloc = context.read<AvailableTimeSlotsBloc>();
        
      // Calculate duration in minutes based on current state
      int durationMinutes = 60; // Default
      if (!_isCustomDuration && _selectedDuration['minutes'] != null) {
        durationMinutes = _selectedDuration['minutes'] as int;
      } else if (_startTimeController.text.isNotEmpty && _endTimeController.text.isNotEmpty) {
        try {
          final startTime = DateFormat('HH:mm').parse(_startTimeController.text);
          final endTime = DateFormat('HH:mm').parse(_endTimeController.text);
          durationMinutes = endTime.difference(startTime).inMinutes;
        } catch (e) {
          print('Error calculating duration: $e');
        }
      }
      
      print('Refreshing available time slots for date: ${selectedDate.toString()} with duration: $durationMinutes minutes');
      
      // Trigger refresh of available time slots for the new date - always use the WidgetsBinding
      // to ensure this happens after the current build cycle
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // IMPORTANT: We need to reset the state first to ensure the UI updates properly
        availableTimeSlotsBloc.add(const AvailableTimeSlotsEvent.resetState());
        
        // Then fetch available time slots for the new date
        availableTimeSlotsBloc.add(
          AvailableTimeSlotsEvent.getAvailableTimeSlots(
            artistId: '', // TODO: Get actual artist ID from context/state
            date: selectedDate,
            durationMinutes: durationMinutes,
          ),
        );
      });
    } catch (e) {
      print('Error refreshing available time slots: $e');
    }
  }
}