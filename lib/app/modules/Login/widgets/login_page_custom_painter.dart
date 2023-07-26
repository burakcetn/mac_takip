import 'package:flutter/material.dart';

class LoginPageCustomPainter extends CustomPainter {
  Color color;
  LoginPageCustomPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;

    Path path = Path()
      ..moveTo(size.width, size.height / 8)
      ..lineTo(0, 2 * size.height / 3)
      ..lineTo(0, 0)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
