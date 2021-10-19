

import 'package:flutter/material.dart';
import 'package:uy_ishi/ui9/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 340.0,
          height: 750.0,
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 30.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                            50.0,
                          ),
                          bottomRight: Radius.circular(
                            50.0,
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 170),
                    transform: Matrix4.skewY(-0.2),
                    color: Colors.teal[200],
                    width: double.infinity,
                    height: 100,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image(
                          image: AssetImage(
                            "assets/images/women.png",
                          ),
                          height: 280,
                          width: 280,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 325, left: 35),
                    transform: Matrix4.skewY(-0.2),
                    color: Colors.orange[300],
                    width: 270.0,
                    height: 100,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Get Started",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Millions of people \nuse to turn their \nideas into reality.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skip Now",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),),);
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Text("Next", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
