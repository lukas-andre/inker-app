import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class InkerStadiumButton extends StatelessWidget {
  final void Function()? onTap;
  final bool? selected;
  final Color backgroundColor;
  final Color? unselectedBackgroundColor;
  final String? text;
  final TextStyle? textStyle;
  final double? width;
  final double? height;

  const InkerStadiumButton(
      {Key? key,
      required this.onTap,
      required this.backgroundColor,
      this.selected,
      this.unselectedBackgroundColor,
      this.text,
      this.textStyle,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 80,
        height: height ?? 30,
        decoration:
            ShapeDecoration(shape: const StadiumBorder(), color: _getColor()),
        child: Center(
          child: Text(
            text ?? '',
            style: textStyle ?? TextStyleTheme.instance,
          ),
        ),
      ),
    );
  }

  Color _getColor() {
    if (selected == null) {
      return backgroundColor;
    } else {
      return selected!
          ? backgroundColor
          : unselectedBackgroundColor ?? backgroundColor;
    }
  }
}
