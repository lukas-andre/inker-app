import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/formatters/distance_formatter.dart';
import 'package:universal_html/html.dart' as html;

class ArtistProfileSidebarWeb extends StatelessWidget {
  final Artist artist;
  final VoidCallback onReviewsPressed;

  const ArtistProfileSidebarWeb({
    super.key,
    required this.artist,
    required this.onReviewsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Descripción
        if (artist.shortDescription != null && artist.shortDescription!.isNotEmpty) ...[
          _buildSectionTitle(context, S.of(context).about, Icons.info_outline),
          const SizedBox(height: 12),
          Text(
            artist.shortDescription!,
            style: TextStyleTheme.copyWith(
              fontSize: 16,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
            ).copyWith(height: 1.5),
          ),
          const SizedBox(height: 24),
        ],

        // Especialidades/Géneros
        if (artist.genres != null && artist.genres!.isNotEmpty) ...[
          _buildSectionTitle(context, 'Especialidades', Icons.brush),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: artist.genres!.map((genre) {
              return Chip(
                label: Text(
                  genre,
                  style: TextStyleTheme.copyWith(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                backgroundColor: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 24),
        ],

        // Tags
        if (artist.tags != null && artist.tags!.isNotEmpty) ...[
          _buildSectionTitle(context, 'Estilos', Icons.style),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: artist.tags!.map((tag) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                child: Text(
                  tag,
                  style: TextStyleTheme.copyWith(
                    fontSize: 13,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 24),
        ],

        // Información de contacto
        if (artist.contact != null &&
            ((artist.contact!.email.isNotEmpty) ||
             (artist.contact!.phone.isNotEmpty))) ...[
          _buildSectionTitle(context, 'Contact', Icons.contact_mail),
          const SizedBox(height: 12),
          if (artist.contact!.email.isNotEmpty) ...[
            _buildContactItem(
              context,
              icon: Icons.email_outlined,
              label: artist.contact!.email,
              onTap: () => _copyToClipboard(context, artist.contact!.email),
            ),
            const SizedBox(height: 8),
          ],
          if (artist.contact!.phone.isNotEmpty)
            _buildContactItem(
              context,
              icon: Icons.phone_outlined,
              label: artist.contact!.phone,
              onTap: () => _copyToClipboard(context, artist.contact!.phone),
            ),
          const SizedBox(height: 24),
        ],

        // Reviews section
        if (artist.review != null && artist.review!.count != null && artist.review!.count! > 0) ...[
          _buildSectionTitle(context, S.of(context).reviews, Icons.star_outline),
          const SizedBox(height: 12),
          InkWell(
            onTap: onReviewsPressed,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFFFDD22E),
                    size: 32,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${artist.review!.count} ${S.of(context).reviews}',
                          style: TextStyleTheme.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        Text(
                          'Ver todas las reseñas',
                          style: TextStyleTheme.copyWith(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.secondary,
                          ).copyWith(decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],

        // Ubicación
        if (artist.distance != null) ...[
          _buildSectionTitle(context, S.of(context).location, Icons.location_on_outlined),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Dirección y distancia
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Dirección del estudio
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.location_on,
                            size: 20,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dirección del Estudio',
                                style: TextStyleTheme.copyWith(
                                  fontSize: 12,
                                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Av. Providencia 1234, Providencia',
                                style: TextStyleTheme.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                              Text(
                                'Santiago, Chile',
                                style: TextStyleTheme.copyWith(
                                  fontSize: 14,
                                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Distancia
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.near_me,
                            size: 20,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Distancia desde tu ubicación',
                              style: TextStyleTheme.copyWith(
                                fontSize: 12,
                                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                              ),
                            ),
                            Text(
                              DistanceFormatter.formatDistanceWithSuffix(artist.distance, artist.distanceUnit, context),
                              style: TextStyleTheme.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Botón de abrir en mapas
                ElevatedButton.icon(
                  onPressed: () {
                    _showNavigationOptions(context);
                  },
                  icon: const Icon(Icons.directions, size: 20),
                  label: const Text('Cómo llegar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Theme.of(context).colorScheme.secondary,
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: TextStyleTheme.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );
  }

  Widget _buildContactItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 18,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                label,
                style: TextStyleTheme.copyWith(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
                ),
              ),
            ),
            Icon(
              Icons.copy,
              size: 16,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4),
            ),
          ],
        ),
      ),
    );
  }

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(S.of(context).copiedToClipboard),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _showNavigationOptions(BuildContext context) {
    // For MVP, use a default location
    const lat = -33.4489;
    const lng = -70.6693;
    final locationName = artist.username ?? 'Estudio de Tatuajes';
    
    // Create Google Maps URL
    final googleMapsUrl = 'https://www.google.com/maps/dir/?api=1&destination=$lat,$lng&destination_place_id=${Uri.encodeComponent(locationName)}';
    
    // Open in new tab using dart:html
    html.window.open(googleMapsUrl, '_blank');
  }
}