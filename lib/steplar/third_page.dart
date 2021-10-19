import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uy_ishi/asosiy.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int _son1 = 0;
  int _son2 = 0;
  int _son3 = 0;

  int _randomSon = Random().nextInt(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AsosiyPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 30.0,
                color: Colors.black,
              ),
            ),
            Text(
              "Basket",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_shopping_cart_rounded,
                size: 30.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            height: 180.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(30.0)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  height: 200.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/water.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(60.0)),
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ("Masafi Salad\n\n"),
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ("Bootle 18,9L\n\n"),
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ("\$${_son1}"),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50.0)),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _son1 += _randomSon;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            height: 180.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  height: 200.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/water.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(60.0)),
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ("Cooler Frost\n\n"),
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ("Floor\n\n"),
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ("\$${_son2}"),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50.0)),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _son2 += _randomSon;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            height: 180.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  height: 200.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/water.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(60.0)),
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ("Summer Time\n\n"),
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ("Bootle 2 L\n\n"),
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ("\$${_son3}"),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50.0)),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _son3 += _randomSon;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 20.0),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    "\$${_son1 + _son2 + _son3}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0)),
                    onPressed: () {},
                    child: Text(
                      "Pay",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
