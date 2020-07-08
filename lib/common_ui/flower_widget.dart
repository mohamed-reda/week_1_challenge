import 'dart:ui';

import 'package:flutter/material.dart';

Widget flowerWidget(BuildContext context) {
  //with dark mode
//    return Container(
//      height: MediaQuery.of(context).size.height,
//      width: MediaQuery.of(context).size.width,
//      child: ColorFiltered(
//        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.colorBurn),
//        child: Image.asset(
//          'assets/pattern.png',
//          fit: BoxFit.cover,
//        ),
//      ),
//    );
  //light mode
  return Container(
    decoration: new BoxDecoration(
      color: Theme.of(context).backgroundColor,
      image: new DecorationImage(
          image: AssetImage('assets/Background.jpg'), fit: BoxFit.fill),
    ),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: new BackdropFilter(
      filter: new ImageFilter.blur(sigmaX: .5, sigmaY: .5),
      child: new Container(
        decoration: new BoxDecoration(color: Colors.white.withOpacity(0.9)),
      ),
    ),
  );
}
