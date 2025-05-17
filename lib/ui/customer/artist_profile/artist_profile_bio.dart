import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistProfileBio extends StatefulWidget {
  final Artist artist;

  final Function(double) onToggleDescription;

  const ArtistProfileBio(
      {super.key, required this.artist, required this.onToggleDescription});

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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.email, size: 16, color: Colors.white),
                const SizedBox(width: 5),
                Flexible(
                  child: Text(
                    widget.artist.contact?.email ?? '',
                    style: TextStyleTheme.copyWith(
                        fontSize: 16, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.phone, size: 16, color: Colors.white),
                const SizedBox(width: 5),
                Flexible(
                  child: Text(
                    widget.artist.contact?.phone ?? '',
                    style: TextStyleTheme.copyWith(
                        fontSize: 16, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
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
        style: TextStyleTheme.copyWith(fontSize: 16, color: tertiaryColor),
      );
    }

    if (_showFullDescription) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            shortDescription,
            style: TextStyleTheme.copyWith(fontSize: 14, color: tertiaryColor),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              setState(() {
                _showFullDescription = false;
              });
              widget.onToggleDescription(_calculateDescriptionHeight(false));
            },
            child: Text(
              S.of(context).seeLess,
              style: const TextStyle(
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
            style: TextStyleTheme.copyWith(fontSize: 14, color: tertiaryColor),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              setState(() {
                _showFullDescription = true;
              });
              widget.onToggleDescription(_calculateDescriptionHeight(true));
            },
            child:  Text(
              S.of(context).seeMore,
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      );
    }
  }
}
