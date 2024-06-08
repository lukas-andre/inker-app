import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

const kExplorerListViewTitle = 'Descubrir';

class ExplorerListViewTitle extends StatelessWidget {
  const ExplorerListViewTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: size.width * 0.5,
            child: Text(
              kExplorerListViewTitle,
              style: TextStyleTheme.copyWith(fontSize: 26, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
