import 'dart:math';

import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[900],
        elevation: 0,
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              size: 30.0,
              color: Colors.white,
            ),
            Container(
              child: Text(
                'Explore',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
            Icon(
              Icons.camera_alt,
              size: 30.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 65.0,
            width: double.infinity,
            color: Colors.blue[900],
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
              ),
              width: 370.0,
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 4,
              bottom: 4,
            ),
            height: 580.0,
            width: double.infinity,
            color: Colors.white,
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/as.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              itemCount: 60,
            ),
          ),
        ],
      ),
    );
  }

  randomColor() {
    List<Color> colors = [
      Colors.black,
      Colors.orange,
      Colors.red,
      Colors.yellow,
      Colors.grey,
      Colors.purple,
      Colors.cyan,
      Colors.blue,
    ];
    int randSon = Random().nextInt(8);
    return colors[randSon];
  }
}
