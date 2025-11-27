import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/utils/constants.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/formatters/distance_formatter.dart';
import 'dart:ui';

class ArtistProfileHeader extends StatelessWidget {
  final Artist artist;
  final VoidCallback onFollowPressed;
  final VoidCallback? onBackPressed;
  final bool isFollowing;

  const ArtistProfileHeader({
    super.key,
    required this.artist,
    required this.onFollowPressed,
    required this.isFollowing,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildProfileHeader(context),
        const SizedBox(height: 24), // Add extra space after the header
      ],
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final hasStudioPhoto =
        artist.studioPhoto != null && artist.studioPhoto!.isNotEmpty;
    final bannerHeight = MediaQuery.of(context).size.height *
        0.3; // 30% of screen height for banner
    final profileSize =
        screenWidth * 0.4; // 40% of screen width for profile pic

    return SizedBox(
      height: bannerHeight +
          (profileSize / 2) +
          110, // Banner + half profile + info space + buttons
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Banner with blur effect
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: bannerHeight,
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Background image
                hasStudioPhoto
                    ? CachedNetworkImage(
                        imageUrl: artist.studioPhoto!,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: Theme.of(context).colorScheme.surface,
                          child: Center(
                            child: Icon(
                              Icons.brush,
                              size: 40,
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                        ),
                      )
                    : Container(
                        color: Theme.of(context).colorScheme.surface,
                        child: Center(
                          child: Icon(
                            Icons.brush,
                            size: 40,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                      ),
                // Gradient overlay
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Back button
          if (onBackPressed != null)
            Positioned(
              top: MediaQuery.of(context).padding.top +
                  16, // Ajustado para considerar la barra de estado
              left: 16,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      key: K.artistProfileBackButton,
                      borderRadius: BorderRadius.circular(50),
                      onTap: onBackPressed,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          // Artist rating
          _buildRatingBadge(context),

          // Profile image
          Positioned(
            top: bannerHeight - (profileSize / 2),
            left: (screenWidth - profileSize) / 2, // Centered
            child: Container(
              width: profileSize,
              height: profileSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: Theme.of(context).colorScheme.secondary, width: 4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: artist.profileThumbnail ?? defaultProfileImageLink,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: HSLColor.fromColor(
                            Theme.of(context).colorScheme.surface)
                        .withLightness(0.15)
                        .toColor(),
                    child: const Center(
                      child: InkerProgressIndicator(),
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: HSLColor.fromColor(
                            Theme.of(context).colorScheme.surface)
                        .withLightness(0.15)
                        .toColor(),
                    child: Icon(
                      Icons.person,
                      size: profileSize * 0.5,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Artist info section
          Positioned(
            top: bannerHeight + (profileSize / 2) + 10,
            left: 0,
            right: 0,
            child: Column(
              children: [
                // Artist name
                Text(
                  '${artist.firstName ?? ''} ${artist.lastName ?? ''}',
                  style: const TextStyle(
                    fontSize: 26, // Increased from 24 to 26
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),

                // Username
                if (artist.username != null)
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 4), // Increased from 2 to 4
                    child: Text(
                      '@${artist.username}',
                      style: TextStyle(
                        fontSize: 16, // Increased from 14 to 16
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ),

                // Location and followers row
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Followers count
                      Text(
                        S.of(context).follower(artist.followers ?? 0),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                      // Location info if available
                      if (artist.distance != null) ...[
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          height: 16,
                          width: 1,
                          color: Colors.white.withValues(alpha: 0.3),
                        ),
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          DistanceFormatter.formatDistanceWithSuffix(
                            artist.distance,
                            artist.distanceUnit,
                            context,
                          ),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withValues(alpha: 0.8),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),

                // Follow button
                Padding(
                  padding:
                      const EdgeInsets.only(top: 16), // Increased from 14 to 16
                  child: _buildFollowButton(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingBadge(BuildContext context) {
    final ratingValue = artist.review?.avgRating ??
        (artist.review?.value != null
            ? double.parse(artist.rating ?? '0.0')
            : 0.0);
    final hasRating = ratingValue > 0;

    if (!hasRating) return const SizedBox.shrink();

    // Calcular la posición correcta considerando la barra de estado
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Positioned(
      top: statusBarHeight + 16, // Ajustado para considerar la barra de estado
      right: 16,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
              .withLightness(0.2)
              .toColor(),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Theme.of(context).colorScheme.secondary,
              size: 20,
            ),
            const SizedBox(width: 6),
            Text(
              ratingValue.toStringAsFixed(1),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFollowButton(BuildContext context) {
    return TextButton(
      onPressed: onFollowPressed,
      style: TextButton.styleFrom(
        backgroundColor: isFollowing
            ? Colors.transparent
            : Theme.of(context).colorScheme.secondary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
            horizontal: 28, vertical: 10), // Increased padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24), // Increased from 20 to 24
          side: isFollowing
              ? BorderSide(
                  color: Theme.of(context).colorScheme.secondary, width: 1.5)
              : BorderSide.none,
        ),
        minimumSize:
            const Size(140, 40), // Increased size for better touch target
      ),
      child: Text(
        isFollowing ? S.of(context).following : S.of(context).follow,
        style: const TextStyle(
          fontSize: 16, // Increased from 14 to 16
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
