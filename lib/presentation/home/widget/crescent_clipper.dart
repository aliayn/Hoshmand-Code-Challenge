import 'package:flutter/material.dart';

class CrescentClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    
    // Starting point (شروع از نقطه پایین‌تر)
    path.moveTo(0, 60);
    
    // Create the curved top with higher control point
    path.quadraticBezierTo(
      size.width / 2, // control point x
      -40, // control point y (نقطه کنترل بالاتر برای قوس بیشتر)
      size.width, // end point x
      60, // end point y (پایان در همان ارتفاع شروع)
    );
    
    // Complete the rectangle
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
} 