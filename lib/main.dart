import 'dart:ui';

import 'package:flutter/material.dart';

import 'common_ui/floating_button.dart';
import 'common_ui/flower_widget.dart';
import 'common_ui/list_tile.dart';
import 'common_ui/my_custom_clipper.dart';
import 'common_ui/recommend_objects.dart';
import 'common_ui/search_bar.dart';
import 'common_ui/two_titles.dart';
import 'pages/Cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  double kDefaultPadding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        width: 295.0,
        height: 812.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(250.0),
          ),
          color: Colors.green.withOpacity(.8),
          boxShadow: [
            BoxShadow(
                color: const Color(0x1a000000),
                offset: Offset(-15, 5),
                blurRadius: 15)
          ],
        ),
        child: ListView(
          children: <Widget>[
            listTile(),
            listTile(),
            listTile(),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              flowerWidget(context),
              ClipPath(
                clipper: MyCustomClipper()
                  ..begin = 10
                  ..hh = 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.grey.withOpacity(.4),
                ),
              ),
              ClipPath(
                clipper: MyCustomClipper()
                  ..hh = 40
                  ..oneThird = MediaQuery.of(context).size.width / 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  color: Colors.green.withOpacity(.8),
                ),
              ),
              ClipPath(
                clipper: MyCustomClipper()..hh = 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  color: Colors.green,
                ),
              ),
              SafeArea(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        floatingButton(() {
                          _scaffoldKey.currentState.openDrawer();
                        }, icon: Icons.dehaze, color: Colors.black),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/photo.jpg'),
                          ),
                        ),
                        floatingButton(
                          () {},
                          mini: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 90, bottom: 20),
                    child: searchBar(context),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 160,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          MyCards(),
                          twoTitles(),
                          RecommendsObjects(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
