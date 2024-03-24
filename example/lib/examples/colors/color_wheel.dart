import 'package:flutter/material.dart';
import 'dart:math' as math;

class ColorWheel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: CustomPaint(
          painter: _ColorWheelPainter(),
        ),
      ),
    );
  }
}

class _ColorWheelPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2;
    final double arcAngle = 2 * math.pi / 360;
    final double sweepAngle = 360.0 / 360;
    final double startAngle = -90 * arcAngle;

    // List of colors for the color wheel
    final List<Color> colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
    ];

    for (int i = 0; i < colors.length; i++) {
      final paint = Paint()
        ..color = colors[i]
        ..style = PaintingStyle.fill;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle + (i * sweepAngle),
        sweepAngle,
        true,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_ColorWheelPainter oldDelegate) {
    return false;
  }
}
