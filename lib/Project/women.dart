import 'package:flutter/material.dart';

class WomenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Positioned(
            top: 40.0,
            left: 20.0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25.0,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, bottom: 60.0),
            width: 380.0,
            height: double.infinity,
            child: Image.asset(
              "assets/images/work.png",
            ),
          ),
          Positioned(
            top: 250.0,
            left: 10.0,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "       Qakley",
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  Text(
                    "      Glasses",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              width: 120.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  35.0,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 24.0,
            child: Container(
              alignment: Alignment.center,
              width: 350.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(
                  55.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Cappucino",
                        style: TextStyle(color: Colors.white70, fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Coffee",
                        style: TextStyle(color: Colors.white, fontSize: 23.0),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(color: Colors.white70, fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "\$25",
                        style: TextStyle(color: Colors.white, fontSize: 23.0),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 30.0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white70,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 180.0,
            left: 90.0,
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.black,
            ),
          ),
          Positioned(
            bottom: 170.0,
            left: 100.0,
            child: CircleAvatar(
              radius: 3,
              backgroundColor: Colors.black,
            ),
          ),
          Positioned(
            bottom: 160.0,
            left: 106.0,
            child: CircleAvatar(
              radius: 3,
              backgroundColor: Colors.black,
            ),
          ),
          Positioned(
            bottom: 150.0,
            left: 113.0,
            child: CircleAvatar(
              radius: 3,
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
