import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class CreateEventButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const CreateEventButton({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            context.read<ArtistAgendaCreateEventBloc>().add(
                  const ArtistAgendaCreateEventEvent.formSubmitted(),
                );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          shape: const StadiumBorder(),
        ),
        child: Text(
          S.of(context).scheduleEvent,
          style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
