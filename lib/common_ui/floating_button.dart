import 'package:flutter/material.dart';

FloatingActionButton floatingButton(dynamic fun,
    {text, IconData icon, Color color, bool mini = true}) {
//    bool isChange = true;
  return FloatingActionButton(
    heroTag: '${icon != null ? icon.toString() : text}',
    backgroundColor: Colors.transparent,
    elevation: 0,
    focusElevation: 0,
    highlightElevation: 0.00000001,
    hoverElevation: 0,

    autofocus: true,
//    hoverColor: Colors.transparent,
    focusColor: Colors.transparent,
//    foregroundColor: Colors.transparent,
    isExtended: false,
    mini: mini,
    splashColor: Colors.yellow,
    child: icon == null
        ? AnimatedSwitcher(
            duration: Duration(seconds: 1),
//            transitionBuilder: (Widget child, Animation<double> animation) {
////        animation=Animation<double>();
//              return ScaleTransition(child: child, scale: animation);
//            },

            child: Text(
              text ?? 'EN',
              key: UniqueKey(),
              style: TextStyle(fontSize: 28, color: Colors.black),
            ),
          )
        :
//      icon,
        AnimatedSwitcher(
//      switchInCurve: Curves.easeIn,
//      switchOutCurve: Curves.easeOut,
            duration: const Duration(seconds: 2),
//      transitionBuilder: (Widget child, Animation<double> animation) {
////        animation=Animation<double>();
//        return ScaleTransition(child: child, scale: animation);
//      },
            child: Icon(
              icon,
              color: color,
              size: 28,
            )),
    onPressed: () {
//        isChange = !isChange;
      fun();
    },
  );
}
