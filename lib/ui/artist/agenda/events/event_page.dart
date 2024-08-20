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
              return Padding(
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
              );
            },
            error: (message) =>
                Center(child: Text('Error loading event details: $message')),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<ArtistAgendaEventDetailBloc,
          ArtistAgendaEventDetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (data) => !data.event.done
                ? _buildButtonsSection(context, data)
                : const SizedBox(),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildEventInfoSection(
      BuildContext context, AgendaEventDetailResponse data) {
    final DateFormat dateFormat = DateFormat('d MMMM yyyy', Intl.defaultLocale);
    final DateFormat timeFormat = DateFormat('Hm', Intl.defaultLocale);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInfoRow(
          context,
          icon: Icons.event,
          text: data.event.title,
          textStyle: TextStyleTheme.copyWith(
            color: Colors.white54,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
        const SizedBox(height: 10),
        _buildInfoRow(
          context,
          icon: Icons.calendar_today,
          text:
              '${dateFormat.format(data.event.start)} [${timeFormat.format(data.event.start)} - ${timeFormat.format(data.event.end)}]',
          textStyle: TextStyleTheme.copyWith(
            color: Colors.grey[500],
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(height: 10),
        _buildInfoRow(
          context,
          icon: data.event.done ? Icons.check_circle : Icons.schedule,
          text: data.event.done
              ? S.of(context).completed
              : S.of(context).upcomming,
          iconColor: data.event.done ? Colors.green : Colors.orange,
          textStyle: TextStyleTheme.copyWith(
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
    return _buildSection(
      context,
      icon: Icons.description,
      title: S.of(context).description,
      content: Text(
        data.event.info,
        style: TextStyleTheme.copyWith(
          color: const Color(0xff707070),
          fontWeight: FontWeight.normal,
          fontSize: 14.0,
        ),
      ),
    );
  }

  Widget _buildWorkEvidenceSection(
      BuildContext context, AgendaEventDetailResponse data) {
    return _buildSection(
      context,
      icon: Icons.photo_library,
      title: S.of(context).workEvidence,
      content: data.event.workEvidence != null
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
    );
  }

  Widget _buildLocationDetailsSection(
      BuildContext context, AgendaEventDetailResponse data) {
    return _buildSection(
      context,
      icon: Icons.location_on,
      title: S.of(context).locationDetails,
      content: InkWell(
        onTap: () => _openMap(context, data.location.lat, data.location.lng,
            S.of(context).eventLocation),
        child: Text(
          data.location.formattedAddress,
          style: const TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  Widget _buildButtonsSection(
      BuildContext context, AgendaEventDetailResponse data) {
    return Container(
      color: primaryColor,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.edit, color: Colors.white),
            label: Text(
              S.of(context).edit,
              style: TextStyleTheme.copyWith(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.cancel, color: Colors.white),
            label: Text(
              S.of(context).cancel,
              style: TextStyleTheme.copyWith(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context,
      {required IconData icon,
      required String text,
      Color? iconColor,
      required TextStyle textStyle}) {
    return Row(
      children: [
        Icon(icon, color: iconColor ?? Colors.white54),
        const SizedBox(width: 8),
        Expanded(child: Text(text, style: textStyle)),
      ],
    );
  }

  Widget _buildSection(BuildContext context,
      {required IconData icon,
      required String title,
      required Widget content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.white54),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyleTheme.copyWith(
                fontSize: 18,
                color: Colors.white54,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        content,
      ],
    );
  }

  void _openMap(BuildContext context, double latitude, double longitude,
      String mapTitle) async {
    final availableMaps = await MapLauncher.installedMaps;
    if (availableMaps.isNotEmpty) {
      final map = availableMaps.first;
      await map.showMarker(
        coords: Coords(latitude, longitude),
        title: mapTitle,
      );
    }
  }
}
