import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class ArtistProfileHeaderWeb extends StatelessWidget {
  final Artist artist;
  final bool isFollowing;
  final VoidCallback onFollowPressed;

  const ArtistProfileHeaderWeb({
    super.key,
    required this.artist,
    required this.isFollowing,
    required this.onFollowPressed,
  });

  @override
  Widget build(BuildContext context) {
    final rating = double.tryParse(artist.rating ?? '0') ?? 0.0;
    
    return Column(
      children: [
        // Profile image with studio background
        Stack(
          clipBehavior: Clip.none,
          children: [
            // Studio photo background
            if (artist.studioPhoto != null)
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(artist.studioPhoto!),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            else
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                      Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                    ],
                  ),
                ),
              ),
            // Profile image
            Positioned(
              bottom: -50,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.surface,
                      width: 4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 58,
                    backgroundColor: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
                    backgroundImage: artist.profileThumbnail != null
                        ? NetworkImage(artist.profileThumbnail!)
                        : null,
                    child: artist.profileThumbnail == null
                        ? Icon(
                            Icons.person,
                            size: 60,
                            color: Theme.of(context).colorScheme.secondary,
                          )
                        : null,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 60),
        // Artist info
        Column(
          children: [
            // Name
            Text(
              '${artist.firstName ?? ''} ${artist.lastName ?? ''}'.trim(),
              style: TextStyleTheme.copyWith(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            // Username
            Text(
              '@${artist.username ?? ''}',
              style: TextStyleTheme.copyWith(
                fontSize: 18,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            // Stats row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Followers
                _buildStatItem(
                  context,
                  count: artist.followers ?? 0,
                  label: S.of(context).followers,
                ),
                const SizedBox(width: 32),
                // Rating
                if (rating > 0)
                  _buildRatingItem(context, rating),
                const SizedBox(width: 32),
                // Works
                _buildStatItem(
                  context,
                  count: artist.worksCount ?? 0,
                  label: S.of(context).works,
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Follow button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onFollowPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isFollowing
                      ? Theme.of(context).colorScheme.surface
                      : Theme.of(context).colorScheme.secondary,
                  foregroundColor: isFollowing
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: isFollowing
                        ? BorderSide(
                            color: Theme.of(context).colorScheme.secondary,
                            width: 2,
                          )
                        : BorderSide.none,
                  ),
                ),
                child: Text(
                  isFollowing ? S.of(context).following : S.of(context).follow,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatItem(BuildContext context, {required int count, required String label}) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: TextStyleTheme.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: TextStyleTheme.copyWith(
            fontSize: 14,
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }

  Widget _buildRatingItem(BuildContext context, double rating) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              size: 24,
              color: const Color(0xFFFDD22E),
            ),
            const SizedBox(width: 4),
            Text(
              rating.toStringAsFixed(1),
              style: TextStyleTheme.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
        Text(
          S.of(context).rating,
          style: TextStyleTheme.copyWith(
            fontSize: 14,
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}