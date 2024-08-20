import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:inker_studio/data/api/customer/dtos/search_customer_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GuestTypeAheadField extends StatelessWidget {
  final SuggestionsController<CustomerDTO> suggestionsController;

  const GuestTypeAheadField({
    super.key,
    required this.suggestionsController,
  });

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<CustomerDTO>(
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
      suggestionsController: suggestionsController,
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
                  backgroundColor: secondaryColor,
                  backgroundImage: NetworkImage(suggestion.profileThumbnail!),
                )
              : CircleAvatar(
                  backgroundColor: secondaryColor,
                  child: Text(
                    suggestion.firstName[0].toUpperCase() +
                        suggestion.lastName[0].toUpperCase(),
                    style: TextStyleTheme.copyWith(
                        color: Colors.white, fontSize: 16),
                  ),
                ),
          title: Text(
            '${suggestion.firstName} ${suggestion.lastName}',
            style: TextStyleTheme.copyWith(color: Colors.white),
          ),
          subtitle: Text(
            suggestion.contactEmail,
            style: TextStyleTheme.copyWith(color: Colors.white54, fontSize: 14),
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
      debounceDuration: const Duration(milliseconds: 600),
      builder: (context, controller, focusNode) {
        return TextFormField(
          controller: controller,
          focusNode: focusNode,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelText: S.of(context).guest,
            labelStyle: TextStyleTheme.copyWith(color: Colors.white54),
            filled: true,
            fillColor: const Color(0x002a2d40),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0x002a2d40)),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: InputBorder.none,
            errorText:
                context.read<ArtistAgendaCreateEventBloc>().state.guestError,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).errorMsgGuestValidationError;
            }
            return null;
          },
        );
      },
    );
  }
}
