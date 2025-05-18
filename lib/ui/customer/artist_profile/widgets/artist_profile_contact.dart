import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class ArtistProfileContact extends StatelessWidget {
  final Artist artist;

  const ArtistProfileContact({
    super.key,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.18).toColor(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).contactInfo,
            style: TextStyleTheme.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          _buildContactInfo(context),
          const SizedBox(height: 24),
          _buildActionButton(context),
        ],
      ),
    );
  }

  Widget _buildContactInfo(BuildContext context) {
    final hasEmail = artist.contact?.email != null && artist.contact!.email.isNotEmpty;
    final hasPhone = artist.contact?.phone != null && artist.contact!.phone.isNotEmpty;
    
    if (!hasEmail && !hasPhone) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.12).toColor(),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade800),
        ),
        child: Row(
          children: [
            Icon(
              Icons.info_outline,
              color: Colors.white.withOpacity(0.7),
              size: 24,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                S.of(context).noContactInfo,
                style: TextStyleTheme.copyWith(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      );
    }
    
    return Column(
      children: [
        if (hasEmail)
          _buildContactItem(
            context: context,
            icon: Icons.email,
            label: S.of(context).email,
            value: artist.contact!.email,
            onTap: () => _copyToClipboard(context, artist.contact!.email),
          ),
        if (hasEmail && hasPhone)
          const SizedBox(height: 12),
        if (hasPhone)
          _buildContactItem(
            context: context,
            icon: Icons.phone,
            label: S.of(context).phone,
            value: artist.contact!.phone,
            onTap: () => _copyToClipboard(context, artist.contact!.phone),
          ),
      ],
    );
  }
  
  Widget _buildContactItem({
    required BuildContext context,
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.12).toColor(),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade800),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Theme.of(context).colorScheme.secondary, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyleTheme.copyWith(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyleTheme.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.content_copy,
              color: Theme.of(context).colorScheme.secondary,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildActionButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            CreateQuotationPage.route(artistId: artist.id),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          S.of(context).requestQuote,
          style: TextStyleTheme.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(S.of(context).copiedToClipboard),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}