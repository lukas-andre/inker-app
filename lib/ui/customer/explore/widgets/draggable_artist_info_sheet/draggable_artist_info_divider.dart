import 'package:flutter/material.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class DraggableArtistInfoBottomDivider extends StatelessWidget {
  const DraggableArtistInfoBottomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      endIndent: 16,
      indent: 16,
      color: greyColor,
      thickness: 1,
    );
  }
}
