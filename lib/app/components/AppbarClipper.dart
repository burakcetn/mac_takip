import 'package:flutter/cupertino.dart';

class AppbarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, size.height - 15)
      ..quadraticBezierTo(
          size.width / 2, size.height, size.width, size.height - 15)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
