import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:inker_studio/data/api/customer/dtos/search_customer_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_create_event/artist_agenda_create_event_bloc.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event/guest_type_ahead.dart';
import 'package:inker_studio/ui/artist/agenda/events/ui/guest_chip.dart';

class GuestField extends StatelessWidget {
  const GuestField({super.key});

  @override
  Widget build(BuildContext context) {
    final SuggestionsController<CustomerDTO> suggestionsController =
        SuggestionsController<CustomerDTO>();

    return BlocBuilder<ArtistAgendaCreateEventBloc,
        ArtistAgendaCreateEventState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (state.selectedGuest != null)
              GuestChip(
                guest: state.selectedGuest!,
                onDeleted: () => context
                    .read<ArtistAgendaCreateEventBloc>()
                    .add(const ArtistAgendaCreateEventEvent.guestChanged(null)),
              ),
            if (state.selectedGuest == null)
              GuestTypeAheadField(
                suggestionsController: suggestionsController,
              ),
            const SizedBox(height: 8),
          ],
        );
      },
    );
  }
}
