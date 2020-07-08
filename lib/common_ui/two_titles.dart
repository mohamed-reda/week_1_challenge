import 'package:flutter/material.dart';

Widget twoTitles() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20 / 4),
              child: Text(
                'Recommended',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
//                    Spacer(),
      FlatButton(
        disabledColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          "More",
          style: TextStyle(color: Colors.black),
        ),
      ),
    ],
  );
}
