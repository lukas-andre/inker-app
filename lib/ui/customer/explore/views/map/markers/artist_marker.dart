import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'dart:ui' as ui show Image;

import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistMarkerPainter extends CustomPainter {
  final ui.Image artistProfileImage;
  final String artistName;
  final bool isOpen;
  final bool isSelected;

  ArtistMarkerPainter({
    required this.artistProfileImage,
    required this.artistName,
    required this.isSelected,
    this.isOpen = false,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = isSelected ? secondaryColor : Colors.white
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;

    final double width = size.width - 5;
    final double height = size.height - 10;

    final BorderRadius borderRadius = BorderRadius.circular(150);
    final Rect rect = Rect.fromLTRB(5, 10, width, height);
    final RRect outer = borderRadius.toRRect(rect);
    // Add shadow
    final Path shadowPath = Path();
    shadowPath.addRRect(outer);
    canvas.drawShadow(shadowPath, Colors.black, 2, true);

    // Draw white background
    canvas.drawRRect(outer, paint);

    // Name text
    final name = '@$artistName';
    final isBigText = name.length > 15;

    final textSpan = TextSpan(
        text: name,
        style: TextStyleTheme.copyWith(
            color: isSelected ? Colors.white : Colors.black, fontSize: 30));

    final artistNamePainter = TextPainter(
        text: textSpan,
        maxLines: 2,
        ellipsis: '...',
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center);
    artistNamePainter.layout(minWidth: 70, maxWidth: 240);
    artistNamePainter.paint(
        canvas, Offset(isBigText ? 120 : 140, isBigText ? 10 : 40));

    // Status text
    final statusText = isOpen ? 'Abierto' : 'Cerrado';
    final statusTextSpan = TextSpan(
        text: statusText,
        style: TextStyleTheme.copyWith(
            color: isOpen ? Colors.green : Colors.red, fontSize: 26));
    final statusTextPainter = TextPainter(
        text: statusTextSpan,
        maxLines: 1,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center);
    statusTextPainter.layout(minWidth: 70, maxWidth: 240);
    statusTextPainter.paint(canvas, const Offset(140, 90));

    // Draw circular image
    final Path clipPath = Path();
    Paint paintBorder = Paint()
      ..color = Colors.white
      ..strokeWidth = 8.5
      ..style = PaintingStyle.stroke;

    final imageRect = Rect.fromLTWH(
        30, 35, size.height.toDouble() * 0.55, size.height.toDouble() * 0.55);

    clipPath.addRRect(
        RRect.fromRectAndRadius(imageRect, const Radius.circular(100)));

    canvas.drawPath(clipPath, paintBorder);
    canvas.clipPath(clipPath);

    paintImage(
        canvas: canvas,
        rect: imageRect,
        fit: BoxFit.cover,
        image: artistProfileImage);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) {
    return false;
  }
}
