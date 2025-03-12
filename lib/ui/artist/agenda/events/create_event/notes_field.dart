import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class NotesField extends StatefulWidget {
  const NotesField({super.key});

  @override
  _NotesFieldState createState() => _NotesFieldState();
}

class _NotesFieldState extends State<NotesField> {
  static const int maxNoteLength = 250;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    context
        .read<ArtistAgendaCreateEventBloc>()
        .add(ArtistAgendaCreateEventEvent.notesChanged(_controller.text));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ArtistAgendaCreateEventBloc,
        ArtistAgendaCreateEventState>(
      listener: (context, state) {
        if (state.notes != _controller.text) {
          _controller.text = state.notes;
        }
      },
      child: BlocBuilder<ArtistAgendaCreateEventBloc,
          ArtistAgendaCreateEventState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _controller,
                style: const TextStyle(color: Colors.white),
                maxLines: null,
                decoration: InputDecoration(
                  labelText: S.of(context).note,
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
                  errorText: state.notesError != null
                      ? S.of(context).errorMsgNotesValidationError
                      : null,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '${_controller.text.length}/$maxNoteLength ${S.of(context).characters}',
                    style: TextStyleTheme.copyWith(
                      color: _controller.text.length > maxNoteLength
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
      ),
    );
  }
}
