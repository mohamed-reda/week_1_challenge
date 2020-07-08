import 'package:flutter/material.dart';

Widget searchBar(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(horizontal: 20),
    padding: EdgeInsets.only(left: 10),
    height: 50,
    width: MediaQuery.of(context).size.width * .7,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 50,
          color: Color(0xFF0C9869).withOpacity(0.23),
        ),
      ],
    ),
    child: TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.search,
          color: Colors.green,
        ),
        hintText: "Search",
        hintStyle: TextStyle(
          color: Color(0xFF0C9869).withOpacity(0.5),
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    ),
  );
}
