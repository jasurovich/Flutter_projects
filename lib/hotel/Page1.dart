import 'package:flutter/material.dart';
import 'package:uy_ishi/hotel/Page2.dart';

class FPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange[900],
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.hotel_outlined,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuPage()));
                },
                child: Text(
                  "OTEL",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
