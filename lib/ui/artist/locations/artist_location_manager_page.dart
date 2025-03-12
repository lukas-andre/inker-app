import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_location/artist_location_bloc.dart';
import 'package:inker_studio/domain/models/location/artist_location.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/empty_state.dart';
import 'package:inker_studio/ui/shared/location/location_input_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistLocationManagerPage extends StatelessWidget {
  final int artistId;

  const ArtistLocationManagerPage({
    super.key,
    required this.artistId,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ArtistLocationBloc>(context);
    bloc.state.whenOrNull(
      initial: () => bloc.add(ArtistLocationEvent.loadLocations(artistId)),
    );

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          S.of(context).manageLocations,
          style: TextStyleTheme.headline2,
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocConsumer<ArtistLocationBloc, ArtistLocationState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (locations) => _buildLocationsList(context, locations),
            error: (message) => Center(
              child: Text('${S.of(context).error}: $message',
                  style: TextStyleTheme.headline2),
            ),
          );
        },
      ),
      floatingActionButton: BlocBuilder<ArtistLocationBloc, ArtistLocationState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (locations) {
              // Only show the add button if the artist has fewer than 3 locations
              if (locations.length < 3) {
                return FloatingActionButton(
                  backgroundColor: secondaryColor,
                  onPressed: () => _navigateToAddLocation(context),
                  child: const Icon(Icons.add_location_alt),
                );
              }
              return const SizedBox.shrink(); // Return empty widget instead of null
            },
            orElse: () => const SizedBox.shrink(), // Return empty widget instead of null
          );
        },
      ),
    );
  }

  Widget _buildLocationsList(
      BuildContext context, List<ArtistLocation> locations) {
    if (locations.isEmpty) {
      return EmptyState(
        icon: Icons.location_off,
        message: S.of(context).noLocationsAvailable,
        action: TextButton.icon(
          onPressed: () => _navigateToAddLocation(context),
          icon: const Icon(Icons.add_location_alt),
          label: Text(S.of(context).addLocation,
              style: TextStyleTheme.button),
        ),
        title: S.of(context).manageLocations,
      );
    }

    return ListView.builder(
      key: const Key('locationsListView'),
      padding: const EdgeInsets.all(16.0),
      itemCount: locations.length,
      itemBuilder: (context, index) {
        final location = locations[index];
        return _buildLocationCard(context, location);
      },
    );
  }

  Widget _buildLocationCard(BuildContext context, ArtistLocation location) {
    return Card(
      key: Key('locationCard_${location.id}'),
      color: explorerSecondaryColor,
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    location.name,
                    style: TextStyleTheme.headline3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    '${S.of(context).location} ${location.locationOrder + 1}',
                    style: TextStyleTheme.caption,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              location.formattedAddress ??
                  '${location.address1}, ${location.address2}, ${location.city}',
              style: TextStyleTheme.bodyText1,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () => _navigateToEditLocation(context, location),
                  icon: const Icon(Icons.edit, color: Colors.white),
                  label: Text(S.of(context).edit,
                      style: TextStyleTheme.button),
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                ),
                const SizedBox(width: 16.0),
                TextButton.icon(
                  onPressed: () => _confirmDeleteLocation(context, location),
                  icon: const Icon(Icons.delete, color: Colors.red),
                  label: Text(S.of(context).delete,
                      style: TextStyleTheme.button
                          .copyWith(color: Colors.red)),
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _navigateToAddLocation(BuildContext context) async {
    // Navigate to the location input page
    final result = await Navigator.push<Map<String, dynamic>>(
      context,
      MaterialPageRoute(
        builder: (context) => LocationInputPage(
          title: S.of(context).addLocation,
        ),
      ),
    );

    if (result != null && context.mounted) {
      final bloc = BlocProvider.of<ArtistLocationBloc>(context);

      // Create a new location with the next order number
      final currentLocations = bloc.state.maybeWhen(
        loaded: (locations) => locations,
        orElse: () => <ArtistLocation>[],
      );

      final locationOrder = currentLocations.length;

      final newLocation = ArtistLocation(
        artistId: artistId,
        name: result['name'] as String,
        address1: result['address1'] as String,
        address2: result['address2'] as String,
        city: result['city'] as String,
        lat: result['lat'] as double,
        lng: result['lng'] as double,
        formattedAddress: result['formattedAddress'] as String?,
        locationOrder: locationOrder,
        googlePlaceId: result['placeId'] as String?,
      );

      bloc.add(ArtistLocationEvent.createLocation(artistId, newLocation));
    }
  }

  Future<void> _navigateToEditLocation(
      BuildContext context, ArtistLocation location) async {
    // Navigate to the location input page with pre-filled data
    final result = await Navigator.push<Map<String, dynamic>>(
      context,
      MaterialPageRoute(
        builder: (context) => LocationInputPage(
          title: S.of(context).editLocation,
          initialName: location.name,
          initialAddress: location.formattedAddress ??
              '${location.address1}, ${location.address2}, ${location.city}',
          initialLatLng: LatLng(location.lat, location.lng),
        ),
      ),
    );

    if (result != null && context.mounted) {
      final bloc = BlocProvider.of<ArtistLocationBloc>(context);

      final updatedLocation = location.copyWith(
        name: result['name'] as String,
        address1: result['address1'] as String,
        address2: result['address2'] as String,
        city: result['city'] as String,
        lat: result['lat'] as double,
        lng: result['lng'] as double,
        formattedAddress: result['formattedAddress'] as String?,
        googlePlaceId: result['placeId'] as String?,
      );

      bloc.add(ArtistLocationEvent.updateLocation(
          artistId, location.id!, updatedLocation));
    }
  }

  Future<void> _confirmDeleteLocation(
      BuildContext context, ArtistLocation location) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: primaryColor,
        title:
            Text(S.of(context).deleteLocation, style: TextStyleTheme.headline2),
        content: Text(
          '${S.of(context).areYouSureDelete} ${location.name}?',
          style: TextStyleTheme.bodyText1,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(S.of(context).cancel, style: TextStyleTheme.button),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(S.of(context).delete,
                style: TextStyleTheme.button.copyWith(color: Colors.red)),
          ),
        ],
      ),
    );

    if (result == true && context.mounted) {
      final bloc = BlocProvider.of<ArtistLocationBloc>(context);
      bloc.add(ArtistLocationEvent.deleteLocation(artistId, location.id!));
    }
  }
}

class LatLng {
  final double latitude;
  final double longitude;

  const LatLng(this.latitude, this.longitude);
}
