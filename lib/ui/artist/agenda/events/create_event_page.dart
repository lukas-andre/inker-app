import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event/guest_field.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/event_date_picker.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/service_chip_selection.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/artist_agenda_bloc.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:table_calendar/table_calendar.dart';

class CreateEventPage extends StatefulWidget {
  const CreateEventPage({super.key});

  @override
  _CreateEventPageState createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _guestController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final SuggestionsController<String> _suggestionsController =
      SuggestionsController<String>();
  static const int _maxNoteLength = 10;

  DateTime _selectedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.twoWeeks;

  @override
  void initState() {
    context
        .read<ArtistAgendaCreateEventBloc>()
        .add(const ArtistAgendaCreateEventEvent.formInitialized());
    super.initState();
    _notesController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _guestController.dispose();
    _notesController.dispose();
    _dateController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(
          'Agendar cita',
          style: TextStyleTheme.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: primaryColor,
        elevation: 1.0,
        shadowColor: Colors.black54,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Card(
                  color: const Color(0x002a2d40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        GuestField(
                          suggestionsController: _suggestionsController,
                        ),
                        const SizedBox(height: 20),
                        _buildNotesField()
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  color:
                      const Color(0x002a2d40), // Color de fondo de la tarjeta
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        _buildTableCalendar(context),
                        const SizedBox(height: 12),
                        const TimePickerWithDuration(),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const ServiceChips(),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildMessageButton(context),
                    _buildCreateEventButton(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGuestField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TypeAheadField<String>(
          suggestionsController: _suggestionsController,
          suggestionsCallback: (pattern) async {
            return await _fetchSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return Container(
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: ListTile(
                title: Text(suggestion,
                    style: TextStyleTheme.copyWith(color: Colors.white)),
              ),
            );
          },
          onSelected: (suggestion) {
            _guestController.text = suggestion;
          },
          hideOnEmpty: true,
          hideOnLoading: false,
          hideOnError: false,
          hideOnSelect: true,
          hideWithKeyboard: true,
          debounceDuration: const Duration(milliseconds: 300),
          builder: (context, controller, focusNode) {
            return TextFormField(
              controller: controller,
              focusNode: focusNode,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Invitado',
                labelStyle: TextStyleTheme.copyWith(color: Colors.white54),
                filled: true,
                fillColor: const Color(0x002a2d40),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0x002a2d40)),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, ingresa un invitado';
                }
                return null;
              },
            );
          },
          errorBuilder: (context, error) => const Text('Error!'),
          loadingBuilder: (context) => Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0x002a2d40),
              backgroundBlendMode: BlendMode.saturation,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          emptyBuilder: (context) => const Text('No items found!'),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Future<List<String>> _fetchSuggestions(String pattern) async {
    // Simulando una llamada HTTP, deberías reemplazar esto con tu lógica real
    await Future.delayed(const Duration(milliseconds: 500));
    return List<String>.generate(3, (index) => 'Sugerencia $pattern $index');
  }

  Widget _buildNotesField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _notesController,
          style: const TextStyle(color: Colors.white),
          maxLines: null,
          decoration: InputDecoration(
            labelText: 'Nota',
            labelStyle: TextStyleTheme.copyWith(color: Colors.white54),
            filled: true,
            fillColor: const Color(0x002a2d40),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0x002a2d40)),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0x002a2d40),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          validator: (value) {
            if (value != null && value.length > _maxNoteLength) {
              return 'Nota no puede exceder $_maxNoteLength caracteres';
            }
            return null;
          },
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${_notesController.text.length}/$_maxNoteLength caracteres',
              style: TextStyleTheme.copyWith(
                color: _notesController.text.length > _maxNoteLength
                    ? Colors.red
                    : Colors.white54,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTableCalendar(BuildContext context) {
    return TableCalendar<ArtistAgendaEventDetails>(
      firstDay: DateTime(2000),
      lastDay: DateTime(2101),
      focusedDay: _selectedDay,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      calendarFormat: _calendarFormat,
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
        });
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      calendarStyle: CalendarStyle(
        selectedDecoration:
            BoxDecoration(color: secondaryColor, shape: BoxShape.circle),
        todayDecoration:
            BoxDecoration(color: tertiaryColor, shape: BoxShape.circle),
        weekendTextStyle: TextStyleTheme.copyWith(
            color: secondaryColor, fontWeight: FontWeight.normal, fontSize: 14),
        defaultTextStyle: TextStyleTheme.copyWith(
            color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14),
        markerDecoration:
            const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        formatButtonShowsNext: true,
        formatButtonDecoration: BoxDecoration(
            color: secondaryColor, borderRadius: BorderRadius.circular(20)),
        titleTextFormatter: (date, locale) =>
            DateFormat.yMMMM(locale).format(date).replaceAll(' de ', ' del '),
        formatButtonTextStyle: TextStyleTheme.copyWith(
            color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16),
        titleTextStyle: TextStyleTheme.copyWith(
            color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),
        leftChevronIcon: const Icon(Icons.chevron_left, color: Colors.white),
        rightChevronIcon: const Icon(Icons.chevron_right, color: Colors.white),
      ),
    );
  }

  Widget _buildCreateEventButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            final bloc = context.read<ArtistAgendaBloc>();
            // INVALIDATE DATE FORMAT ERROR HERE, on start event and maybe end date
            bloc.add(ArtistAgendaEvent.addEvent(
              ArtistAgendaEventDetails(
                id: '',
                title: _guestController.text,
                description: _notesController.text,
                startDate: DateTime.parse(
                    '${_dateController.text} ${_timeController.text}'),
                endDate: DateTime.parse(
                        '${_dateController.text} ${_timeController.text}')
                    .add(const Duration(
                        minutes: 60)), // Add 1 hour to the start time
                location: '',
                notes: null,
              ),
            ));
            Navigator.pop(context);
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          shape: const StadiumBorder(),
        ),
        child: Text(
          'Agendar cita',
          style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildMessageButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // Handle sending message logic here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[700],
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          shape: const StadiumBorder(),
        ),
        child: Text(
          'Enviar mensaje',
          style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
