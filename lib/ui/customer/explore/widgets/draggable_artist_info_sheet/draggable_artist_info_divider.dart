import 'package:flutter/material.dart';

class DraggableArtistInfoBottomDivider extends StatelessWidget {
  const DraggableArtistInfoBottomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      endIndent: 16,
      indent: 16,
      color: Theme.of(context).colorScheme.tertiary,
      thickness: 1,
    );
  }
}
