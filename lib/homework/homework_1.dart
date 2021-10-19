import 'package:flutter/material.dart';
import 'package:uy_ishi/homework/homework_2.dart';

class BarberShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.teal,
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Awesome",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            Container(
              width: 250.0,
              child: Divider(
                thickness: 3,
                color: Colors.orange[800],
              ),
            ),
            Text(
              "Barber Shop",
              style: TextStyle(
                fontFamily: "Carattere",
                fontSize: 35.0,
                color: Colors.white,
              ),
            ),
            Container(
              width: 250.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100.0,
                    child: Divider(
                      thickness: 3,
                      color: Colors.orange[800],
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 40.0,
                    child: Image.asset(
                      "assets/images/qaychii.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 100.0,
                    child: Divider(
                      thickness: 3,
                      color: Colors.orange[800],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Like for Real",
              style: TextStyle(
                fontSize: 19.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              child: Image.asset(
                "assets/images/barber.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BarberShop2()));
              },
              child: Container(
                alignment: Alignment.center,
                width: 300.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.orange[800],
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),
                ),
                child: Text(
                  "Get a serious haircut",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "No, take me back to mommy",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
