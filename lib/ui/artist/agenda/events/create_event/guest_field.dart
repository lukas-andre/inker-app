import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class GuestField extends StatefulWidget {
  final SuggestionsController<String> suggestionsController;

  const GuestField({
    super.key,
    required this.suggestionsController,
  });

  @override
  _GuestFieldState createState() => _GuestFieldState();
}

class _GuestFieldState extends State<GuestField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistAgendaCreateEventBloc,
        ArtistAgendaCreateEventState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TypeAheadField<String>(
              suggestionsController: widget.suggestionsController,
              suggestionsCallback: (pattern) async {
                await Future.delayed(const Duration(milliseconds: 500));
                return List<String>.generate(
                    3, (index) => 'Sugerencia $pattern $index');
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
                context
                    .read<ArtistAgendaCreateEventBloc>()
                    .add(ArtistAgendaCreateEventEvent.guestChanged(suggestion));
              },
              hideOnEmpty: true,
              hideOnLoading: false,
              hideOnError: false,
              hideOnSelect: true,
              hideWithKeyboard: true,
              debounceDuration: const Duration(milliseconds: 300),
              builder: (context, controller, focusNode) {
                controller.text = state.guest;
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
                    errorText: state.guestError,
                  ),
                  onChanged: (value) {
                    context
                        .read<ArtistAgendaCreateEventBloc>()
                        .add(ArtistAgendaCreateEventEvent.guestChanged(value));
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingresa un invitado';
                    }
                    return null;
                  },
                );
              },
            ),
            const SizedBox(height: 8),
          ],
        );
      },
    );
  }
}
