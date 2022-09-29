import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class StartMarkerPainter extends CustomPainter {
  final String minutes;
  final String description;

  StartMarkerPainter({this.minutes = '55', this.description = '<description>'});

  @override
  void paint(Canvas canvas, Size size) {
    final blackPaint = Paint()..color = Colors.black;
    final whitePaint = Paint()..color = Colors.white;

    const double circleBlackRadius = 20;
    const double circleWhiteRadius = 7;

    canvas.drawCircle(
        Offset(circleBlackRadius, size.height - circleBlackRadius),
        circleBlackRadius,
        blackPaint);

    canvas.drawCircle(
        Offset(circleBlackRadius, size.height - circleBlackRadius),
        circleWhiteRadius,
        whitePaint);

    // Paint white box
    final path = Path();
    path.moveTo(40, 20);
    path.lineTo(size.width - 10, 20);
    path.lineTo(size.width - 10, 100);
    path.lineTo(40, 100);
    path.close();

    // Shadow
    canvas.drawShadow(path, Colors.black, 10, false);
    canvas.drawPath(path, whitePaint);

    // Black box
    const blackBox = Rect.fromLTWH(40, 20, 70, 80);
    canvas.drawRect(blackBox, blackPaint);

    // Text
    final textSpan = TextSpan(
        text: minutes,
        style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 30));

    final minutesPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center);
    minutesPainter.layout(minWidth: 70, maxWidth: 70);
    minutesPainter.paint(canvas, const Offset(40, 35));

    final textSpan2 = TextSpan(
        text: 'Min',
        style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 16));

    final minutesPainter2 = TextPainter(
        text: textSpan2,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center);
    minutesPainter2.layout(minWidth: 70, maxWidth: 70);
    minutesPainter2.paint(canvas, const Offset(40, 68));

    // Description
    final descriptionTextSpan = TextSpan(
        text: description,
        style: TextStyleTheme.copyWith(color: Colors.black, fontSize: 16));
    final descriptionPainter = TextPainter(
        maxLines: 2,
        ellipsis: '...',
        text: descriptionTextSpan,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center);
    descriptionPainter.layout(
        minWidth: size.width - 135, maxWidth: size.width - 135);

    final double offsetY = (description.length > 20) ? 35 : 45;

    descriptionPainter.paint(canvas, const Offset(120, 35));
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
