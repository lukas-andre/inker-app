import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:inker_studio/data/api/customer/dtos/search_customer_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class GuestField extends StatefulWidget {
  const GuestField({
    super.key,
  });

  @override
  _GuestFieldState createState() => _GuestFieldState();
}

class _GuestFieldState extends State<GuestField> {
  final SuggestionsController<CustomerDTO> _suggestionsController =
      SuggestionsController<CustomerDTO>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistAgendaCreateEventBloc,
        ArtistAgendaCreateEventState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TypeAheadField<CustomerDTO>(
              decorationBuilder: (context, child) {
                return Material(
                  type: MaterialType.card,
                  elevation: 4,
                  borderRadius: BorderRadius.circular(15),
                  color: primaryColor,
                  child: child,
                );
              },
              loadingBuilder: (context) => Container(
                height: 40,
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                child: const Center(
                  child: InkerProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              ),
              suggestionsController: _suggestionsController,
              suggestionsCallback: (pattern) async {
                final suggestions = await context
                    .read<ArtistAgendaCreateEventBloc>()
                    .fetchEventGuestsMatches(pattern);

                return suggestions;
              },
              itemBuilder: (context, suggestion) {
                return ListTile(
                  leading: suggestion.profileThumbnail != null
                      ? CircleAvatar(
                          backgroundImage:
                              NetworkImage(suggestion.profileThumbnail!),
                        )
                      : CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            suggestion.firstName[0],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                  title: Text(
                    '${suggestion.firstName} ${suggestion.lastName}',
                    style: TextStyleTheme.copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    suggestion.contactEmail,
                    style: TextStyleTheme.copyWith(color: Colors.white54),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(suggestion.rating, (index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      );
                    }),
                  ),
                );
              },
              onSelected: (suggestion) {
                context.read<ArtistAgendaCreateEventBloc>().add(
                    ArtistAgendaCreateEventEvent.guestChanged(
                        suggestion.firstName));
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
            // const SizedBox(height: 8),
          ],
        );
      },
    );
  }
}
