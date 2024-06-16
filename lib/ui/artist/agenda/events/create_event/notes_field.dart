import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class NotesField extends StatelessWidget {
  final TextEditingController controller;
  static const int maxNoteLength = 10;

  const NotesField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistAgendaCreateEventBloc,
        ArtistAgendaCreateEventState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller,
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
                // errorText: state.notesError,
              ),
              onChanged: (value) {
                context
                    .read<ArtistAgendaCreateEventBloc>()
                    .add(ArtistAgendaCreateEventEvent.notesChanged(value));
              },
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${controller.text.length}/$maxNoteLength caracteres',
                  style: TextStyleTheme.copyWith(
                    color: controller.text.length > maxNoteLength
                        ? Colors.red
                        : Colors.white54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
