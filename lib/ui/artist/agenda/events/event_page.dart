import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/agenda/dtos/agenda_event_detail_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_event_detail/artist_agenda_event_detail_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

import '../../../../generated/l10n.dart';

class AgendaEventDetailPage extends StatelessWidget {
  final int eventId;

  const AgendaEventDetailPage({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ArtistAgendaEventDetailBloc>(context)
        .add(ArtistAgendaEventDetailEvent.started(eventId));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).eventDetails,
          style: TextStyleTheme.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 22,
          ),
        ),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocBuilder<ArtistAgendaEventDetailBloc,
          ArtistAgendaEventDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (data) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    _buildEventInfoSection(data),
                    const SizedBox(height: 20),
                    _buildDescriptionSection(data),
                    const SizedBox(height: 20),
                    _buildWorkEvidenceSection(data),
                    const SizedBox(height: 20),
                    _buildLocationDetailsSection(data),
                    const SizedBox(height: 20),
                    _buildButtonsSection(),
                  ],
                ),
              );
            },
            error: (message) =>
                Center(child: Text('Error loading event details: $message')),
          );
        },
      ),
    );
  }

  Widget _buildEventInfoSection(AgendaEventDetailResponse data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.event.title,
          style: const TextStyle(
            fontSize: 24,
            color: Color(0xff686D90),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          '${data.event.start} - ${data.event.end}',
          style: const TextStyle(color: Color(0xff707070)),
        ),
        const SizedBox(height: 10),
        Text(
          data.location.formattedAddress,
          style: const TextStyle(color: Color(0xff707070)),
        ),
        const SizedBox(height: 10),
        Text(
          data.event.done ? 'Completed' : 'Upcoming',
          style: TextStyle(
            color: data.event.done ? Colors.green : Colors.red,
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionSection(AgendaEventDetailResponse data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Description',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff686D90),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          data.event.info,
          style: const TextStyle(color: Color(0xff707070)),
        ),
      ],
    );
  }

  Widget _buildWorkEvidenceSection(AgendaEventDetailResponse data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Work Evidence',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff686D90),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        data.event.workEvidence != null
            ? GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: data.event.workEvidence!.metadata.length,
                itemBuilder: (context, index) {
                  final metadata = data.event.workEvidence!.metadata[index];
                  return Image.network(metadata.url);
                },
              )
            : const Text('No work evidence available.'),
      ],
    );
  }

  Widget _buildLocationDetailsSection(AgendaEventDetailResponse data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Location Details',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff686D90),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          data.location.formattedAddress,
          style: const TextStyle(color: Color(0xff707070)),
        ),
        const SizedBox(height: 10),
        Text(
          'Coordinates: ${data.location.lat}, ${data.location.lng}',
          style: const TextStyle(color: Color(0xff707070)),
        ),
      ],
    );
  }

  Widget _buildButtonsSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff7450ff),
          ),
          child: const Text('Edit Event'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: const Text('Cancel Event'),
        ),
      ],
    );
  }
}
