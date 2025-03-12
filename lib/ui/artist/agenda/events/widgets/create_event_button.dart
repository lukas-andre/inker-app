import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class CreateEventButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final bool isEditing;

  const CreateEventButton({
    super.key,
    required this.formKey,
    this.isEditing = false,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final state = context.watch<ArtistAgendaCreateEventBloc>().state;
    
    // Check validation status for visual feedback
    bool isGuestValid = state.selectedGuest != null;
    bool isTimeValid = state.startTime.isNotEmpty && state.endTime.isNotEmpty;
    bool isDateValid = state.date.isNotEmpty;
    bool isNotesValid = state.notesError == null;
    bool isFormValid = isGuestValid && isTimeValid && isDateValid && isNotesValid;
    
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      child: ElevatedButton(
        onPressed: isFormValid ? () {
          if (formKey.currentState!.validate()) {
            if (isEditing) {
              context.read<ArtistAgendaCreateEventBloc>().add(
                const ArtistAgendaCreateEventEvent.eventUpdated(),
              );
            } else {
              context.read<ArtistAgendaCreateEventBloc>().add(
                const ArtistAgendaCreateEventEvent.formSubmitted(),
              );
            }
          }
        } : null, // Disable button if form is invalid
        style: ElevatedButton.styleFrom(
          backgroundColor: isFormValid ? secondaryColor : Colors.grey.shade700,
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          shape: const StadiumBorder(),
          disabledBackgroundColor: Colors.grey.shade700,
          disabledForegroundColor: Colors.white70,
        ),
        child: Text(
          isEditing ? l10n.update : l10n.scheduleEvent,
          style: TextStyleTheme.copyWith(
            color: Colors.white, 
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}