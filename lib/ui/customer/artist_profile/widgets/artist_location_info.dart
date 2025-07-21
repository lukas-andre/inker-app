import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/location/artist_location.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/formatters/distance_formatter.dart';

class ArtistLocationInfo extends StatelessWidget {
  final ArtistLocation? location;
  final double? distance;
  final String? distanceUnit;
  final bool showFullAddress;
  final bool isCompact;

  const ArtistLocationInfo({
    super.key,
    this.location,
    this.distance,
    this.distanceUnit,
    this.showFullAddress = false,
    this.isCompact = false,
  });

  @override
  Widget build(BuildContext context) {
    if (location == null) return const SizedBox.shrink();

    final hasDistance = distance != null && distance! > 0;

    if (isCompact) {
      return _buildCompactView(context, hasDistance);
    }

    return _buildDetailedView(context, hasDistance);
  }

  Widget _buildCompactView(BuildContext context, bool hasDistance) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          size: 16,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            _getLocationString(),
            style: TextStyleTheme.copyWith(
              fontSize: 14,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (hasDistance) ...[
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              DistanceFormatter.formatDistanceCompact(distance, distanceUnit, context),
              style: TextStyleTheme.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildDetailedView(BuildContext context, bool hasDistance) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).dividerColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Encabezado
          Row(
            children: [
              Icon(
                Icons.store,
                size: 20,
                color: Theme.of(context).colorScheme.secondary,
              ),
              const SizedBox(width: 8),
              Text(
                'Ubicación del Estudio',
                style: TextStyleTheme.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const Spacer(),
              if (hasDistance)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.near_me,
                        size: 14,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        DistanceFormatter.formatDistanceWithSuffix(distance, distanceUnit, context),
                        style: TextStyleTheme.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: 12),
          // Nombre del estudio
          if (location!.name.isNotEmpty) ...[
            Text(
              location!.name,
              style: TextStyleTheme.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 8),
          ],
          // Dirección
          if (showFullAddress && location!.formattedAddress != null) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 16,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    location!.formattedAddress!,
                    style: TextStyleTheme.copyWith(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
                    ),
                  ),
                ),
              ],
            ),
          ] else ...[
            // Dirección simplificada
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 16,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${location!.address1} ${location!.address2}',
                        style: TextStyleTheme.copyWith(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        _getLocationString(),
                        style: TextStyleTheme.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
          // Etiquetas de ubicación
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              if (location!.country != null)
                _buildLocationChip(
                  context,
                  icon: Icons.flag,
                  label: location!.country!,
                ),
              if (location!.city.isNotEmpty)
                _buildLocationChip(
                  context,
                  icon: Icons.location_city,
                  label: location!.city,
                ),
              if (location!.state != null)
                _buildLocationChip(
                  context,
                  icon: Icons.map,
                  label: location!.state!,
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLocationChip(BuildContext context, {required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 14,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyleTheme.copyWith(
              fontSize: 13,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }

  String _getLocationString() {
    final parts = <String>[];
    
    if (location!.city.isNotEmpty) parts.add(location!.city);
    if (location!.state != null && location!.state!.isNotEmpty) parts.add(location!.state!);
    if (location!.country != null && location!.country!.isNotEmpty) parts.add(location!.country!);
    
    return parts.join(', ');
  }
}