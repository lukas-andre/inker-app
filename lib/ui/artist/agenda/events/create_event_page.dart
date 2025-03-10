import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/models/agenda_event_details.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/domain/blocs/available_time_slots/available_time_slots_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event/guest_field.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event/notes_field.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/calendar_day_picker.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/create_event_button.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/enhanced_date_range_picker.dart';
import 'package:inker_studio/ui/artist/agenda/events/widgets/send_message_button.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class EventFormPage extends StatefulWidget {
  final ArtistAgendaEventDetails? eventToEdit;
  final String title;
  final bool isEditing;

  // Constructor for creating a new event
  const EventFormPage.create({
    super.key,
    this.title = '',
  })  : eventToEdit = null,
        isEditing = false;

  // Constructor for editing an existing event
  const EventFormPage.edit({
    super.key,
    required this.eventToEdit,
    this.title = '',
  }) : isEditing = true;

  @override
  _EventFormPageState createState() => _EventFormPageState();
}

class _EventFormPageState extends State<EventFormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (widget.isEditing && widget.eventToEdit != null) {
      // Initialize the form with existing event data for editing
      context.read<ArtistAgendaCreateEventBloc>().add(
            ArtistAgendaCreateEventEvent.formInitializedWithEvent(
              widget.eventToEdit!,
            ),
          );
    } else {
      // Initialize an empty form for creating a new event
      context.read<ArtistAgendaCreateEventBloc>().add(
            const ArtistAgendaCreateEventEvent.formInitialized(),
          );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final pageTitle = widget.title.isNotEmpty
        ? widget.title
        : widget.isEditing
            ? l10n.editEvent
            : l10n.scheduleEvent;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(
          pageTitle,
          style: TextStyleTheme.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
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
                // Guest and Notes Section
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
                
                // Date and Time Selection Section
                Card(
                  color: const Color(0x002a2d40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        const CalendarDayPicker(),
                        const SizedBox(height: 12),
                        // Wrap with BlocProvider to provide AvailableTimeSlotsBloc
                        BlocProvider<AvailableTimeSlotsBloc>.value(
                          value: context.read<AvailableTimeSlotsBloc>(),
                          child: const EnhancedDateRangePicker(),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                
                // Action Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MessageButton(),
                    CreateEventButton(
                      formKey: _formKey,
                      isEditing: widget.isEditing,
                    ),
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

// Backward compatibility
class CreateEventPage extends StatelessWidget {
  const CreateEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const EventFormPage.create();
  }
}