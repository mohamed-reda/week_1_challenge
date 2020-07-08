import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  double hh = 0;
  double begin = 0;
  double oneThird = 0;

  @override
  Path getClip(Size size) {
//    if (half == 0) {
//      half = size.width;
//    }
    double w = size.width;
    double h = size.height;
    // var controlPoint = Offset(size.width / 2, size.height / 2);
    // var endPoint = Offset(size.width, size.height);
    Path path = Path()
      ..moveTo(oneThird, 0)
      ..lineTo(oneThird, (h / 3) + begin)
      ..quadraticBezierTo(w / 2, h + begin, w, (h / 2) + hh - begin)
      ..lineTo(w, h / 2)
      ..lineTo(w, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
