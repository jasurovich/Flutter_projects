import 'package:flutter/material.dart';
import 'package:uy_ishi/ui11/second_page.dart';

class FirstttPage extends StatelessWidget {
  const FirstttPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
            height: 250.0,
            width: 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/ho.png",
                ),
                fit: BoxFit.cover
              ),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60.0, right: 130.0),
            child: Text(
              " Order your \n Favourite\n Food",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, right: 75.0),
            child: Text(
              "Made by the fitnest Home Chefs, every\ndish raises the bar of Taste , Health\nHygiene, and cleanliness",
              style: TextStyle(
                color: Colors.black38,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0, left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                      color: Colors.orange[600],
                      borderRadius: BorderRadius.circular(50.0)),
                  child: IconButton(
                    color: Colors.orange,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(),
                        ),
                      );
                    },
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
