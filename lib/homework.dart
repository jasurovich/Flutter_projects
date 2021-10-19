import 'package:flutter/material.dart';
import 'package:uy_ishi/drawer_menu.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.search,
              size: 30.0,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: DrawerMenu(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 70.0,
                    height: 90.0,
                  ),
                  Text(
                    "bertruck",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 70.0,
                    height: 90.0,
                    child: Image.asset(
                      "assets/images/tesla_logo.png",
                      // fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Tesla S",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 70.0,
                    height: 90.0,
                  ),
                  Text(
                    "Rocket tr",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 250.0,
            child: Image.asset(
              "assets/images/tesla.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 3.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 3.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 3.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Text(
                    "Discovery",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: Text(
                    "1/6",
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10.0,
            ),
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 15.0,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/tesla_tablet.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
                      width: 150.0,
                      height: 140.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30.0,
                      ),
                      child: Text(
                        "Interface",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 15.0,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/tesla_door.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
                      width: 150.0,
                      height: 140.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30.0,
                      ),
                      child: Text(
                        "Speed",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 15.0,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/tesla_tablet.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
                      width: 150.0,
                      height: 140.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30.0,
                      ),
                      child: Text(
                        "Interface",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
