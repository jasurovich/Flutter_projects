import 'package:flutter/material.dart';
import 'package:uy_ishi/ui7/cofe.dart';

class CoffeePage2 extends StatelessWidget {
  const CoffeePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[900],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 30.0,
                          left: 20.0,
                        ),
                        width: 35.0,
                        height: 35.0,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.grey[50],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 30.0,
                          left: 280.0,
                        ),
                        width: 40.0,
                        height: 40.0,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.grey[600],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 180.0),
                    width: double.infinity,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25.0, top: 30.0),
                                child: Text(
                                  "Cappuccino",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28.0,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 25.0,
                                ),
                                child: Text(
                                  "With Oat Milk",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 25.0,
                                  top: 15.0,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "  4.5 ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "(6.986)",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 50.0, top: 20.0),
                                    width: 60.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey[900],
                                      borderRadius: BorderRadius.circular(
                                        15.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.coffee_rounded,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          "Coffee",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 15.0, top: 20.0),
                                    width: 60.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey[900],
                                      borderRadius: BorderRadius.circular(
                                        15.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.pin_drop,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          "Milk",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 50.0, top: 10.0),
                                width: 140.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey[900],
                                  borderRadius: BorderRadius.circular(
                                    15.0,
                                  ),
                                ),
                                child: Text(
                                  "Medium roasted",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              width: double.infinity,
              height: 400.0,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/coffee3.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\nDescription\n",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    "A cappuccino is a coffee-based drink coffee-based drink made coffee-based primarliy from espresso and milk...",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Text(
                    "\nSize",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "S",
                    style: TextStyle(color: Colors.white, fontSize: 28.0),
                  ),
                  margin: EdgeInsets.only(top: 10.0),
                  width: 120.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "M",
                    style: TextStyle(color: Colors.orange, fontSize: 28.0),
                  ),
                  margin: EdgeInsets.only(top: 10.0),
                  width: 120.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "L",
                    style: TextStyle(color: Colors.white, fontSize: 28.0),
                  ),
                  margin: EdgeInsets.only(top: 10.0),
                  width: 120.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "      Price",
                      style: TextStyle(color: Colors.white70, fontSize: 18.0),
                    ),
                    Text(
                      "    &8.40",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CoffeePage(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 30, left: 50.0),
                    width: 230.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
