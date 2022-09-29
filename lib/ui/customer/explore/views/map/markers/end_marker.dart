import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class EndMarkerPainter extends CustomPainter {
  final String kilometers;
  final String description;

  EndMarkerPainter(
      {this.kilometers = '55', this.description = '<description>'});

  @override
  void paint(Canvas canvas, Size size) {
    final blackPaint = Paint()..color = Colors.black;
    final whitePaint = Paint()..color = Colors.white;

    const double circleBlackRadius = 20;
    const double circleWhiteRadius = 7;

    canvas.drawCircle(Offset(size.width * 0.5, size.height - circleBlackRadius),
        circleBlackRadius, blackPaint);

    canvas.drawCircle(Offset(size.width * 0.5, size.height - circleBlackRadius),
        circleWhiteRadius, whitePaint);

    // Paint white box
    final path = Path();
    path.moveTo(10, 10);
    path.lineTo(size.width - 10, 10);
    path.lineTo(size.width - 10, 110);
    path.lineTo(10, 110);
    path.close();

    // Shadow
    canvas.drawShadow(path, Colors.black, 10, false);
    canvas.drawPath(path, whitePaint);

    // Black box
    const blackBox = Rect.fromLTWH(10, 10, 70, 100);
    canvas.drawRect(blackBox, blackPaint);

    // Text
    final textSpan = TextSpan(
        text: kilometers,
        style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 30));

    final minutesPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center);
    minutesPainter.layout(minWidth: 70, maxWidth: 70);
    minutesPainter.paint(canvas, const Offset(10, 35));

    final textSpan2 = TextSpan(
        text: 'Kms',
        style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 16));

    final minutesPainter2 = TextPainter(
        text: textSpan2,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center);
    minutesPainter2.layout(minWidth: 70, maxWidth: 70);
    minutesPainter2.paint(canvas, const Offset(10, 68));

    // Description
    final descriptionTextSpan = TextSpan(
        text: description,
        style: TextStyleTheme.copyWith(color: Colors.black, fontSize: 16));
    final descriptionPainter = TextPainter(
        maxLines: 2,
        ellipsis: '...',
        text: descriptionTextSpan,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.left);
    descriptionPainter.layout(
        minWidth: size.width - 95, maxWidth: size.width - 95);

    final double offsetY = (description.length > 50) ? 35 : 45;

    descriptionPainter.paint(canvas, Offset(90, offsetY));
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
