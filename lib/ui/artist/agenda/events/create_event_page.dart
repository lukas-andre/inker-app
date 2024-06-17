import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event/guest_field.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event/notes_field.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/calendar_day_picker.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/create_event_button.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/event_date_picker.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/send_message_button.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/service_chip_selection.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class CreateEventPage extends StatefulWidget {
  const CreateEventPage({super.key});

  @override
  _CreateEventPageState createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    context
        .read<ArtistAgendaCreateEventBloc>()
        .add(const ArtistAgendaCreateEventEvent.formInitialized());
    super.initState();
  }

  @override
  void dispose() {
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
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        GuestField(),
                        SizedBox(height: 20),
                        NotesField()
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
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(height: 12),
                        CalendarDayPicker(),
                        SizedBox(height: 12),
                        TimePickerWithDuration(),
                        SizedBox(height: 12),
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
                    const MessageButton(),
                    CreateEventButton(formKey: _formKey),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
