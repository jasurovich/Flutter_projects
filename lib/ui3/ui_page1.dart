import 'package:flutter/material.dart';
import 'package:uy_ishi/asosiy.dart';

class SportPage extends StatefulWidget {
  @override
  _SportPageState createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.purple[50],
                ),
                child: Text(
                  "Hey Brian,",
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30.0),
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/sa.jpeg",
                      ),
                      fit: BoxFit.cover),
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 30.0,
              
            ),
            child: Text(
              "What are you\nup to today?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 180.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10, left: 20.0),
                      child: Text(
                        "Swimming",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 170.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/swin.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 180.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.orangeAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20.0,
                      ),
                      child: Text(
                        "Running",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 170.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/rin.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 180.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.orange[800],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10, left: 20.0),
                      child: Text(
                        "Football",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 170.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/ball.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 180.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.purple,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20.0,
                      ),
                      child: Text(
                        "Basketball",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 170.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/bass.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 180.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue[800],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10, left: 20.0),
                      child: Text(
                        "Cycling",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 170.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/velo.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 180.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.redAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20.0,
                      ),
                      child: Text(
                        "Tennis",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 170.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/ten.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AsosiyPage(),),);
                },
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.stacked_bar_chart_rounded, 
                  color: Colors.grey,
                  size: 30.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: Colors.grey,
                  size: 30.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.supervisor_account,
                  color: Colors.grey,
                  size: 30.0,
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/sa.jpeg",
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}