import 'package:flutter/material.dart';
import 'package:uy_ishi/hotel/Page3.dart';
import 'package:uy_ishi/hotel/hotel_list.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _currentIndexOfBottomBar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_outlined),
            label: "My Trip",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndexOfBottomBar,
        onTap: (i) {
          setState(() {
            _currentIndexOfBottomBar = i;
          });
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Location",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Jemberaya",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FilterPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 30.0,
                        height: 30.0,
                        child: Image.asset(
                          "assets/images/filterIcon.png",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, top: 10.0),
              height: 130.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return rowScroll(ctx, i);
                },
                itemCount: Hotels.hotels.length,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Text(
                "Popular destination",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              height: 170.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return rowScroll2(ctx, i);
                },
                itemCount: Hotels.Luxury_hotels.length,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "NEW HOTEL",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              height: 170.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return rowScroll3(ctx, i);
                },
                itemCount: Hotels.New_hotels.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowScroll(BuildContext context, int i) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/hotel${i}.jpg",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
            ),
          ),
          Text(
            Hotels.hotels[i],
          ),
        ],
      ),
    );
  }

  Widget rowScroll2(BuildContext context, int i) {
    return Container(
      margin: EdgeInsets.only(left: 15.0),
      width: 350.0,
      height: 170.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Luxury${i + 1}.jpg",
            ),
            fit: BoxFit.cover),
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 20.0,
                height: 30.0,
                color: Colors.transparent,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange[900],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      30.0,
                    ),
                    bottomLeft: Radius.circular(
                      30.0,
                    ),
                  ),
                ),
                width: 90.0,
                height: 50.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$1200",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Per Night",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Hotels.Luxury_hotels[i],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "⭐️⭐️⭐️⭐️⭐️(4.2)",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 80.0,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget rowScroll3(BuildContext context, int i) {
    return Container(
      margin: EdgeInsets.only(left: 15.0),
      width: 150.0,
      height: 170.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Luxury${i + 1}.jpg",
            ),
            fit: BoxFit.cover),
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 80.0,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Hotels.New_hotels[i],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "⭐️⭐️⭐️⭐️⭐️(4.2)",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
