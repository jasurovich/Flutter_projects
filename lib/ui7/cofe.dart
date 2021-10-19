
import 'package:flutter/material.dart';

class CoffeePage extends StatefulWidget {
  @override
  _CoffeePageState createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[900],
              ),
              child: Icon(
                Icons.grid_view_rounded,
                color: Colors.grey[800],
              ),
            ),
            Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/avatar.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 25.0,),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 25.0),
              child: Text(
                "Find the best\ncoffee for you",
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: 370.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey[800],
                    ),
                  ),
                  Text(
                    "Find your Coffee",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5.0, left: 25.0),
                        child: Text(
                          "Cappuccino",
                          style:
                              TextStyle(color: Colors.orange, fontSize: 20.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0, left: 25.0),
                        child: Text(
                          "Espresso",
                          style: TextStyle(
                              color: Colors.grey[100], fontSize: 20.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0, left: 25.0),
                        child: Text(
                          "Latte",
                          style: TextStyle(
                              color: Colors.grey[100], fontSize: 20.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0, left: 25.0),
                        child: Text(
                          "Flat Coffee",
                          style: TextStyle(
                              color: Colors.grey[100], fontSize: 20.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0, left: 25.0),
                        child: Text(
                          "For You",
                          style: TextStyle(
                              color: Colors.grey[100], fontSize: 20.0),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              height: 300.0,
              color: Colors.black,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                            ),
                            height: 280.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black87,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(
                                          50.0,
                                        ),
                                      ),
                                    ),
                                    width: 70.0,
                                    height: 20.0,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "⭐️ 4.5",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  margin: EdgeInsets.all(5.0),
                                  width: 165.0,
                                  height: 160.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/coffee2.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Cappuccino",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, top: 5),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "with Oat Mix",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(top: 15.0, left: 20.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          "&",
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          " 4.20",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 55.0),
                                        alignment: Alignment.center,
                                        width: 35.0,
                                        height: 35.0,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.circular(
                                            12.0,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                            ),
                            height: 280.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black87,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(
                                          50.0,
                                        ),
                                      ),
                                    ),
                                    width: 70.0,
                                    height: 20.0,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "⭐️ 4.2",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  margin: EdgeInsets.all(5.0),
                                  width: 165.0,
                                  height: 160.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/coffee2.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Cappuccino",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, top: 5),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "with Oat Mix",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(top: 15.0, left: 20.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          "&",
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          " 4.20",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 55.0),
                                        alignment: Alignment.center,
                                        width: 35.0,
                                        height: 35.0,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.circular(
                                            12.0,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "    Special for you",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        height: 180.0,
                        width: 380.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 160.0,
                              height: 160.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/images/coffee3.jpg",
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20.0, top: 10.0),
                              child: Text(
                                "5 Coffee Beans You\n Must Try!\n\nCoffe for You,\n Your lovely \nCappuccino",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 28.0,),
            Container(
              width: double.infinity,
              height: 40.0,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: Colors.orange,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shop,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.grey,
                      size: 30,
                    ),
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
