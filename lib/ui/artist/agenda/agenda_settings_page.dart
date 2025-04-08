import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_settings.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_settings/artist_agenda_settings_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

class AgendaSettingsPage extends StatefulWidget {
  const AgendaSettingsPage({super.key});

  @override
  _AgendaSettingsPageState createState() => _AgendaSettingsPageState();
}

class _AgendaSettingsPageState extends State<AgendaSettingsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final String _agendaId = ''; // Replace with actual agenda ID from user data

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // Load settings when page is opened
    context.read<ArtistAgendaSettingsBloc>().add(
          ArtistAgendaSettingsEvent.loadSettings(_agendaId),
        );

    // Load unavailable times
    context.read<ArtistAgendaSettingsBloc>().add(
          ArtistAgendaSettingsEvent.loadUnavailableTimes(_agendaId),
        );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(
          S.of(context).agendaSettings,
          style: TextStyleTheme.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: primaryColor,
        elevation: 4.0,
        shadowColor: Colors.black54,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: secondaryColor,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          tabs: [
            Tab(text: S.of(context).workingHours),
            Tab(text: S.of(context).unavailableTimes),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildWorkingHoursTab(),
          _buildUnavailableTimesTab(),
        ],
      ),
    );
  }

  Widget _buildWorkingHoursTab() {
    return BlocBuilder<ArtistAgendaSettingsBloc, ArtistAgendaSettingsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: InkerProgressIndicator()),
          loading: () => const Center(child: InkerProgressIndicator()),
          loaded: (settings, unavailableTimes, isSaving,
              isLoadingUnavailableTimes) {
            return _WorkingHoursForm(
              settings: settings,
              agendaId: _agendaId,
              isSaving: isSaving,
            );
          },
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Error: $message',
                  style: TextStyleTheme.copyWith(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<ArtistAgendaSettingsBloc>().add(
                          ArtistAgendaSettingsEvent.loadSettings(_agendaId),
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                  ),
                  child: Text(
                    S.of(context).retry,
                    style: TextStyleTheme.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildUnavailableTimesTab() {
    return BlocBuilder<ArtistAgendaSettingsBloc, ArtistAgendaSettingsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: InkerProgressIndicator()),
          loading: () => const Center(child: InkerProgressIndicator()),
          loaded: (settings, unavailableTimes, isSaving,
              isLoadingUnavailableTimes) {
            return _UnavailableTimesList(
              unavailableTimes: unavailableTimes,
              agendaId: _agendaId,
              isLoading: isLoadingUnavailableTimes,
              isSaving: isSaving,
            );
          },
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Error: $message',
                  style: TextStyleTheme.copyWith(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<ArtistAgendaSettingsBloc>().add(
                          ArtistAgendaSettingsEvent.loadUnavailableTimes(
                              _agendaId),
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                  ),
                  child: Text(
                    S.of(context).retry,
                    style: TextStyleTheme.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _WorkingHoursForm extends StatefulWidget {
  final AgendaSettings settings;
  final String agendaId;
  final bool isSaving;

  const _WorkingHoursForm({
    required this.settings,
    required this.agendaId,
    required this.isSaving,
  });

  @override
  _WorkingHoursFormState createState() => _WorkingHoursFormState();
}

class _WorkingHoursFormState extends State<_WorkingHoursForm> {
  late TimeOfDay _startTime;
  late TimeOfDay _endTime;
  late List<String> _selectedDays;
  late bool _isPublic;
  late bool _isOpen;

  @override
  void initState() {
    super.initState();
    _updateFromSettings();
  }

  @override
  void didUpdateWidget(_WorkingHoursForm oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.settings != widget.settings) {
      _updateFromSettings();
    }
  }

  void _updateFromSettings() {
    // Convert string time to TimeOfDay
    final startHour =
        int.parse(widget.settings.workingHoursStart.split(':')[0]);
    final startMinute =
        int.parse(widget.settings.workingHoursStart.split(':')[1]);
    _startTime = TimeOfDay(hour: startHour, minute: startMinute);

    final endHour = int.parse(widget.settings.workingHoursEnd.split(':')[0]);
    final endMinute = int.parse(widget.settings.workingHoursEnd.split(':')[1]);
    _endTime = TimeOfDay(hour: endHour, minute: endMinute);

    _selectedDays = List.from(widget.settings.workingDays);
    _isPublic = widget.settings.isPublic;
    _isOpen = widget.settings.isOpen;
  }

  String _timeOfDayToString(TimeOfDay time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  Future<void> _selectStartTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _startTime,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.dark(
              primary: secondaryColor,
              onPrimary: Colors.white,
              surface: primaryColor,
              onSurface: Colors.white,
            ),
            dialogBackgroundColor: primaryColor,
          ),
          child: child!,
        );
      },
    );
    if (pickedTime != null && pickedTime != _startTime) {
      setState(() {
        _startTime = pickedTime;
      });
    }
  }

  Future<void> _selectEndTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _endTime,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.dark(
              primary: secondaryColor,
              onPrimary: Colors.white,
              surface: primaryColor,
              onSurface: Colors.white,
            ),
            dialogBackgroundColor: primaryColor,
          ),
          child: child!,
        );
      },
    );
    if (pickedTime != null && pickedTime != _endTime) {
      setState(() {
        _endTime = pickedTime;
      });
    }
  }

  void _toggleDay(String day) {
    setState(() {
      if (_selectedDays.contains(day)) {
        _selectedDays.remove(day);
      } else {
        _selectedDays.add(day);
      }
    });
  }

  void _saveAllSettings() {
    // First save working hours
    context.read<ArtistAgendaSettingsBloc>().add(
          ArtistAgendaSettingsEvent.updateWorkingHours(
            agendaId: widget.agendaId,
            workingHoursStart: _timeOfDayToString(_startTime),
            workingHoursEnd: _timeOfDayToString(_endTime),
            workingDays: _selectedDays,
          ),
        );
    
    // Then save visibility settings
    context.read<ArtistAgendaSettingsBloc>().add(
          ArtistAgendaSettingsEvent.updateAgendaSettings(
            agendaId: widget.agendaId,
            isPublic: _isPublic,
            isOpen: _isOpen,
          ),
        );
    
    // Show a success message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Configuración guardada correctamente'),
        backgroundColor: Colors.green,
      ),
    );
  }
  
  // Keep these methods for individual use if needed
  void _saveWorkingHours() {
    context.read<ArtistAgendaSettingsBloc>().add(
          ArtistAgendaSettingsEvent.updateWorkingHours(
            agendaId: widget.agendaId,
            workingHoursStart: _timeOfDayToString(_startTime),
            workingHoursEnd: _timeOfDayToString(_endTime),
            workingDays: _selectedDays,
          ),
        );
  }

  void _saveAgendaSettings() {
    context.read<ArtistAgendaSettingsBloc>().add(
          ArtistAgendaSettingsEvent.updateAgendaSettings(
            agendaId: widget.agendaId,
            isPublic: _isPublic,
            isOpen: _isOpen,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Working Hours Section
          Text(
            'Horario de Trabajo',
            style: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    'Hora de inicio',
                    style: TextStyleTheme.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    _startTime.format(context),
                    style: TextStyleTheme.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.access_time,
                    color: secondaryColor,
                  ),
                  onTap: _selectStartTime,
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    'Hora de fin',
                    style: TextStyleTheme.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    _endTime.format(context),
                    style: TextStyleTheme.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.access_time,
                    color: secondaryColor,
                  ),
                  onTap: _selectEndTime,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Working Days Section
          Text(
            'Días de Trabajo',
            style: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildDayChip('1', 'Lun'),
              _buildDayChip('2', 'Mar'),
              _buildDayChip('3', 'Mie'),
              _buildDayChip('4', 'Jue'),
              _buildDayChip('5', 'Vie'),
              _buildDayChip('6', 'Sab'),
              _buildDayChip('7', 'Dom'),
            ],
          ),
          const SizedBox(height: 24),

          // Public/Private & Open/Closed Settings
          Text(
            S.of(context).visibilitySettings,
            style: TextStyleTheme.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          SwitchListTile(
            title: Text(
              S.of(context).publicAgenda,
              style: TextStyleTheme.copyWith(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              S.of(context).publicAgendaDescription,
              style: TextStyleTheme.copyWith(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
            value: _isPublic,
            onChanged: (value) {
              setState(() {
                _isPublic = value;
              });
            },
            activeColor: secondaryColor,
          ),
          SwitchListTile(
            title: Text(
              S.of(context).openForReservations,
              style: TextStyleTheme.copyWith(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              S.of(context).openForReservationsDescription,
              style: TextStyleTheme.copyWith(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
            value: _isOpen,
            onChanged: (value) {
              setState(() {
                _isOpen = value;
              });
            },
            activeColor: secondaryColor,
          ),
          const SizedBox(height: 24),

          // Single Save Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: widget.isSaving ? null : _saveAllSettings,
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              icon: widget.isSaving 
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : const Icon(Icons.save, color: Colors.white),
              label: Text(
                S.of(context).saveConfiguration,
                style: TextStyleTheme.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDayChip(String day, String label) {
    final isSelected = _selectedDays.contains(day);
    return FilterChip(
      label: Text(
        label,
        style: TextStyleTheme.copyWith(
          color: isSelected ? Colors.white : Colors.white70,
        ),
      ),
      selected: isSelected,
      onSelected: (_) => _toggleDay(day),
      selectedColor: secondaryColor,
      backgroundColor: tertiaryColor,
      checkmarkColor: Colors.white,
    );
  }
}

class _UnavailableTimesList extends StatefulWidget {
  final List<UnavailableTimeBlock> unavailableTimes;
  final String agendaId;
  final bool isLoading;
  final bool isSaving;

  const _UnavailableTimesList({
    required this.unavailableTimes,
    required this.agendaId,
    required this.isLoading,
    required this.isSaving,
  });

  @override
  _UnavailableTimesListState createState() => _UnavailableTimesListState();
}

class _UnavailableTimesListState extends State<_UnavailableTimesList> {
  final TextEditingController _reasonController = TextEditingController();
  DateTimeRange? _selectedDateRange;

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  Future<void> _selectDateRange() async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(const Duration(hours: 2)),
    );

    final pickedDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      initialDateRange: _selectedDateRange ?? initialDateRange,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.dark(
              primary: secondaryColor,
              onPrimary: Colors.white,
              surface: primaryColor,
              onSurface: Colors.white,
            ),
            dialogBackgroundColor: primaryColor,
          ),
          child: child!,
        );
      },
    );

    if (pickedDateRange != null) {
      setState(() {
        _selectedDateRange = pickedDateRange;
      });
    }
  }

  void _addUnavailableTime() {
    if (_selectedDateRange == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).pleaseSelectADateRange),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Add time block with reason
    final reason = _reasonController.text.isNotEmpty
        ? _reasonController.text
        : S.of(context).unavailableTime;

    context.read<ArtistAgendaSettingsBloc>().add(
          ArtistAgendaSettingsEvent.addUnavailableTime(
            agendaId: widget.agendaId,
            startDate: _selectedDateRange!.start,
            endDate: _selectedDateRange!.end,
            reason: reason,
          ),
        );

    // Clear form
    setState(() {
      _selectedDateRange = null;
      _reasonController.clear();
    });
  }

  void _deleteUnavailableTime(String unavailableTimeId) {
    context.read<ArtistAgendaSettingsBloc>().add(
          ArtistAgendaSettingsEvent.deleteUnavailableTime(
            agendaId: widget.agendaId,
            unavailableTimeId: unavailableTimeId,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Add new unavailable time
          Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.block_flipped,
                        color: secondaryColor,
                        size: 24,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        S.of(context).addUnavailableTime,
                        style: TextStyleTheme.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: tertiaryColor,
                    thickness: 1,
                    height: 30,
                  ),
                  const SizedBox(height: 8),
                  InkWell(
                    onTap: _selectDateRange,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: tertiaryColor.withOpacity(0.5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.date_range,
                            color: secondaryColor,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _selectedDateRange == null
                                ? Text(
                                    S.of(context).selectDates,
                                    style: TextStyleTheme.copyWith(
                                      color: Colors.white70,
                                    ),
                                  )
                                : Text(
                                    '${DateFormat('dd/MM/yyyy').format(_selectedDateRange!.start)} - ${DateFormat('dd/MM/yyyy').format(_selectedDateRange!.end)}',
                                    style: TextStyleTheme.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: secondaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _reasonController,
                    style: TextStyleTheme.copyWith(color: Colors.white),
                    cursorColor: secondaryColor,
                    decoration: InputDecoration(
                      labelText: S.of(context).reason,
                      labelStyle: TextStyleTheme.copyWith(color: Colors.white70),
                      hintText: S.of(context).optional,
                      hintStyle: TextStyleTheme.copyWith(
                          color: Colors.white30, fontSize: 14),
                      filled: true,
                      fillColor: HSLColor.fromColor(primaryColor).withLightness(0.10).toColor(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: tertiaryColor.withOpacity(0.5)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: secondaryColor),
                      ),
                      prefixIcon: const Icon(
                        Icons.description_outlined,
                        color: Colors.white70,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: widget.isSaving ? null : _addUnavailableTime,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 2,
                      ),
                      child: widget.isSaving
                          ? const SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.add),
                                const SizedBox(width: 8),
                                Text(
                                  S.of(context).addTime,
                                  style: TextStyleTheme.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // List of unavailable times
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.schedule,
                  color: secondaryColor,
                  size: 22,
                ),
                const SizedBox(width: 8),
                Text(
                  S.of(context).unavailableTimes,
                  style: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // Loading indicator or list
          widget.isLoading
              ? const Center(child: InkerProgressIndicator())
              : widget.unavailableTimes.isEmpty
                  ? Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 32),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: tertiaryColor.withOpacity(0.5)),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.event_available,
                              color: tertiaryColor,
                              size: 48,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              S.of(context).noUnavailableTimesConfigured,
                              style: TextStyleTheme.copyWith(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemCount: widget.unavailableTimes.length,
                        itemBuilder: (context, index) {
                          final timeBlock = widget.unavailableTimes[index];
                          
                          // Skip invalid blocks (those with ID == -1 are placeholders/invalid)
                          if (timeBlock.id == -1) {
                            return const SizedBox.shrink();
                          }
                          
                          return Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            decoration: BoxDecoration(
                              color: HSLColor.fromColor(primaryColor).withLightness(0.17).toColor(),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              leading: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.do_not_disturb_on_outlined,
                                  color: secondaryColor,
                                ),
                              ),
                              title: Text(
                                timeBlock.reason ?? S.of(context).unavailableTime,
                                style: TextStyleTheme.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month,
                                        color: tertiaryColor,
                                        size: 14,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '${DateFormat('dd/MM/yyyy').format(timeBlock.startDate)} - ${DateFormat('dd/MM/yyyy').format(timeBlock.endDate)}',
                                        style: TextStyleTheme.copyWith(
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              trailing: IconButton(
                                icon: Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.red.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.delete_outline,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                                onPressed: () =>
                                    _deleteUnavailableTime(timeBlock.id),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
        ],
      ),
    );
  }
}
