import 'package:flutter/material.dart';

class CustomThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size.fromRadius(4.0);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;

    Paint whiteLinePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4.0;

    RRect whiteLineRect = RRect.fromRectAndCorners(
      Rect.fromLTWH(center.dx - 10, center.dy - 30, 6, 60),
      topLeft: const Radius.circular(5.0),
      topRight: const Radius.circular(5.0),
      bottomLeft: const Radius.circular(5.0),
      bottomRight: const Radius.circular(5.0),
    );
    canvas.drawRRect(whiteLineRect, whiteLinePaint);

    // Draw space to the right of the white line
    Paint transparentPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 0.5;
    canvas.drawLine(Offset(center.dx - 9, center.dy - 28),
        Offset(center.dx - 9, center.dy + 28), transparentPaint);
  }
}
