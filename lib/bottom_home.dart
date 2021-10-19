import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uy_ishi/messenger.dart';

class BoottomHome extends StatelessWidget {
  var _bucket = PageStorageBucket();

  BoottomHome({Key? key}) : super(key: key);
  String name = "User";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          firstElement(context),
          secondElement(context),
          thirdElement(context),
        ],
      ),
    );
  }

  Widget firstElement(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessengerPage()));
              },
              icon: Icon(
                Icons.send,
                color: Colors.black,
                size: 24.0,
              ),
            ),
          ],
        ),
      );
  Widget secondElement(BuildContext context) => Container(
        height: 80.0,
        child: PageStorage(
          key: PageStorageKey("1"),
          bucket: _bucket,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.indigo[Random().nextInt(9) * 100],
                    ),
                    Text(
                        name.length <= 7 ? name : name.substring(0, 6) + "..."),
                  ],
                ),
              );
            },
            itemCount: 15,
          ),
        ),
      );
  Widget thirdElement(BuildContext context) => PageStorage(
        bucket: _bucket,
        key: PageStorageKey("2"),
        child: Container(
          height: 500.0,
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.pink[(Random().nextInt(8) + 1) * 100],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.all(5.0),
                height: 50.0,
              );
            },
          ),
        ),
      );
}
