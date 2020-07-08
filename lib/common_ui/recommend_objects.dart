import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecommendsObjects extends StatelessWidget {
  const RecommendsObjects({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendCard(
            image: "assets/Background.jpg",
            title: "Reda",
            country: "Egypt",
            price: 400,
            press: () {},
          ),
          RecommendCard(
            image: "assets/Background.jpg",
            title: "Reda",
            country: "Egypt",
            price: 400,
            press: () {},
          ),
          RecommendCard(
            image: "assets/Background.jpg",
            title: "Reda",
            country: "Egypt",
            price: 400,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 10,
        bottom: 20 * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.asset(image),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(20 / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.green.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: Colors.green.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.green),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
