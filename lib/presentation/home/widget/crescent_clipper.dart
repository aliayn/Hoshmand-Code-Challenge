import 'package:flutter/material.dart';

class CrescentClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0, 60);

    path.quadraticBezierTo(
      size.width / 2,
      -40,
      size.width,
      60,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
