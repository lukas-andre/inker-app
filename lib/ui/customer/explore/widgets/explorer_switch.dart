import 'package:flutter/material.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_plage_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ExplorerSwitch extends StatelessWidget {
  final String? text;
  final ExplorerView selectedView;
  final ExplorerView view;
  final void Function()? onTap;
  const ExplorerSwitch(
      {Key? key,
      this.text,
      required this.selectedView,
      required this.onTap,
      required this.view})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const selectedTextColor = Colors.white;
    final unselectedTextColor =
        selectedView == ExplorerView.map ? Colors.black : Colors.white;
    final selectedBackgroundColor = secondaryColor;
    final unselectedBackgroundColor = selectedView == ExplorerView.map
        ? Colors.white
        : explorerSecondaryColor;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 30,
        decoration: ShapeDecoration(
          shape: const StadiumBorder(),
          color: selectedView == view
              ? selectedBackgroundColor
              : unselectedBackgroundColor,
        ),
        child: Center(
          child: Text(
            text ?? '',
            style: TextStyleTheme.copyWith(
                fontSize: 14,
                color: selectedView == view
                    ? selectedTextColor
                    : unselectedTextColor),
          ),
        ),
      ),
    );
  }
}
