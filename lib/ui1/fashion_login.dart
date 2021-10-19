import 'package:flutter/material.dart';
import 'package:uy_ishi/ui1/ui_page.dart';

class FashionLogin2 extends StatefulWidget {

  @override
  _FashionLogin2State createState() => _FashionLogin2State();
}

class _FashionLogin2State extends State<FashionLogin2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(),
            height: 450.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage("assets/images/ui1.jpeg"),
                    fit: BoxFit.cover)),
            child: Container(
              margin: EdgeInsets.only(top: 60.0, left: 320.0),
              child: Text(
                "Log in",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, right: 80.0),
            child: Text(
              "Exceptional\nModerm Clothing\n____",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, right: 60.0),
            child: Text(
              "Shop for exceptional moderm clothings\nfor your everyday life",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, right: 80.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  padding:
                      EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FashionLogin(),
                  ),
                );
              },
              child: Text(
                "Go Shopping",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
