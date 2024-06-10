import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/agenda/dtos/agenda_event_detail_response.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_event_detail/artist_agenda_event_detail_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class AgendaEventDetailPage extends StatelessWidget {
  final int eventId;

  const AgendaEventDetailPage({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ArtistAgendaEventDetailBloc>();
    bloc.add(ArtistAgendaEventDetailEvent.started(eventId));

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(
          S.of(context).eventDetails,
          style: TextStyleTheme.copyWith(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 24),
        ),
        backgroundColor: primaryColor,
        elevation: 1.0,
        shadowColor: Colors.black54,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocBuilder<ArtistAgendaEventDetailBloc,
          ArtistAgendaEventDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (data) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView(
                      children: [
                        _buildEventInfoSection(context, data),
                        const SizedBox(height: 20),
                        _buildDescriptionSection(context, data),
                        const SizedBox(height: 20),
                        _buildWorkEvidenceSection(context, data),
                        const SizedBox(height: 20),
                        _buildLocationDetailsSection(context, data),
                        const SizedBox(height: 80), // Space for buttons
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: _buildButtonsSection(context, data),
                  ),
                ],
              );
            },
            error: (message) =>
                Center(child: Text('Error loading event details: $message')),
          );
        },
      ),
    );
  }

  Widget _buildEventInfoSection(
      BuildContext context, AgendaEventDetailResponse data) {
    final DateFormat dateFormat =
        DateFormat.yMMMMd(Intl.defaultLocale).add_Hm();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.event.title,
          style: TextStyleTheme.copyWith(
            color: Colors.white54,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          '${dateFormat.format(data.event.start)} - ${dateFormat.format(data.event.end)}',
          style: TextStyleTheme.copyWith(
            color: Colors.grey[500],
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          data.event.done ? S.of(context).completed : S.of(context).upcomming,
          style: TextStyleTheme.copyWith(
            color: data.event.done ? Colors.green : Colors.orange,
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionSection(
      BuildContext context, AgendaEventDetailResponse data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).description,
          style: TextStyleTheme.copyWith(
            fontSize: 18,
            color: Colors.white54,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          data.event.info,
          style: TextStyleTheme.copyWith(
            color: const Color(0xff707070),
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
          ),
        )
      ],
    );
  }

  Widget _buildWorkEvidenceSection(
      BuildContext context, AgendaEventDetailResponse data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).workEvidence,
            style: TextStyleTheme.copyWith(
              fontSize: 18,
              color: Colors.white54,
              fontWeight: FontWeight.bold,
            )),
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
            : Text(
                S.of(context).noWorkEvidence,
                style: TextStyleTheme.copyWith(
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                ),
              ),
      ],
    );
  }

  Widget _buildLocationDetailsSection(
      BuildContext context, AgendaEventDetailResponse data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).locationDetails,
          style: TextStyleTheme.copyWith(
            fontSize: 18,
            color: Colors.white54,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () => _openMap(context, data.location.lat, data.location.lng),
          child: Text(
            data.location.formattedAddress,
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget _buildButtonsSection(
      BuildContext context, AgendaEventDetailResponse data) {
    return Container(
      color: primaryColor,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
            ),
            child: Text(
              S.of(context).edit,
              style: TextStyleTheme.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10), // Adds some spacing between buttons
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text(
              S.of(context).cancel,
              style: TextStyleTheme.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void _openMap(BuildContext context, double latitude, double longitude) async {
    final availableMaps = await MapLauncher.installedMaps;
    if (availableMaps.isNotEmpty) {
      final map = availableMaps.first;
      await map.showMarker(
        coords: Coords(latitude, longitude),
        title: 'Event Location',
      );
    }
  }
}
