import 'package:flutter/material.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistProfileBio extends StatefulWidget {
  final Artist artist;

  final Function(double) onToggleDescription;

  const ArtistProfileBio(
      {Key? key, required this.artist, required this.onToggleDescription})
      : super(key: key);

  @override
  _ArtistProfileBioState createState() => _ArtistProfileBioState();
}

class _ArtistProfileBioState extends State<ArtistProfileBio> {
  bool _showFullDescription = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _showFullDescription = false;
      widget.onToggleDescription(_calculateDescriptionHeight(false));
    });
  }

  double _calculateDescriptionHeight(bool showFullDescription) {
    final shortDescription = widget.artist.shortDescription ?? '';
    final expandedDescriptionHeight =
        (shortDescription.length / 40).ceil() * 40.0;
    const initialDescriptionHeight = 20.0;

    return showFullDescription
        ? expandedDescriptionHeight
        : initialDescriptionHeight;
  }

  @override
  Widget build(BuildContext context) {
    final shortDescription = widget.artist.shortDescription ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.artist.username!,
          style: TextStyleTheme.copyWith(fontSize: 24, color: Colors.white),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(Icons.email, size: 16, color: Colors.white),
            const SizedBox(width: 5),
            Text(
              widget.artist.contact?.email ?? '',
              style: TextStyleTheme.copyWith(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(width: 20),
            const Icon(Icons.phone, size: 16, color: Colors.white),
            const SizedBox(width: 5),
            Text(
              widget.artist.contact?.phone ?? '',
              style: TextStyleTheme.copyWith(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 20),
        _buildDescription(shortDescription),
      ],
    );
  }

  Widget _buildDescription(String shortDescription) {
    if (shortDescription.isEmpty) {
      return const SizedBox.shrink();
    }

    if (shortDescription.length <= 100) {
      return Text(
        shortDescription,
        style: TextStyleTheme.copyWith(fontSize: 16),
      );
    }

    if (_showFullDescription) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            shortDescription,
            style: TextStyleTheme.copyWith(fontSize: 12, color: tertiaryColor),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              setState(() {
                _showFullDescription = false;
              });
              widget.onToggleDescription(_calculateDescriptionHeight(false));
            },
            child: const Text(
              'Ver menos',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      );
    } else {
      final abbreviatedDescription = shortDescription.substring(0, 100);
      final lastWordIndex = abbreviatedDescription.lastIndexOf(' ');
      final abbreviatedDescriptionWithElipsis =
          '${abbreviatedDescription.substring(0, lastWordIndex)}...';

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            abbreviatedDescriptionWithElipsis,
            style: TextStyleTheme.copyWith(fontSize: 12, color: tertiaryColor),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              setState(() {
                _showFullDescription = true;
              });
              widget.onToggleDescription(_calculateDescriptionHeight(true));
            },
            child: const Text(
              'Ver más',
              style: TextStyle(
                color: Colors.blue,
                // decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      );
    }
  }
}
