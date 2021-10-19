import 'package:flutter/material.dart';

class BarberShop2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.orange,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                "Hey,",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                "Derek",
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              width: 340.0,
              child: Divider(
                thickness: 2,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                "Services",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 350.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0, top: 10.0),
                        width: 160.0,
                        height: 160.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/first.png",
                              ),
                              fit: BoxFit.cover),
                          color: Colors.brown[400],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              30.0,
                            ),
                            topRight: Radius.circular(
                              30.0,
                            ),
                            bottomLeft: Radius.circular(
                              30.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0, top: 20.0),
                        width: 160.0,
                        height: 160.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/second.png",
                              ),
                              fit: BoxFit.cover),
                          color: Colors.brown[400],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              30.0,
                            ),
                            topRight: Radius.circular(
                              30.0,
                            ),
                            bottomLeft: Radius.circular(
                              30.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0, top: 10.0),
                        width: 160.0,
                        height: 160.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/third.png",
                              ),
                              fit: BoxFit.cover),
                          color: Colors.brown[400],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              30.0,
                            ),
                            topRight: Radius.circular(
                              30.0,
                            ),
                            bottomLeft: Radius.circular(
                              30.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0, top: 20.0),
                        width: 160.0,
                        height: 160.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/fourth.png",
                              ),
                              fit: BoxFit.cover),
                          color: Colors.brown[400],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              30.0,
                            ),
                            topRight: Radius.circular(
                              30.0,
                            ),
                            bottomLeft: Radius.circular(
                              30.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
