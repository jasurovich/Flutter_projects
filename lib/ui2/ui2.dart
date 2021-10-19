
import 'package:flutter/material.dart';
import 'package:uy_ishi/ui2/ui2_3page.dart';

class FW19Page extends StatefulWidget {
  @override
  _FW19PageState createState() => _FW19PageState();
}

class _FW19PageState extends State<FW19Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Text(
            "<-                   FW19",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),),);
            },
            icon: Icon(
              Icons.widgets,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/psj.jpg",
                      ),
                      height: 200.0,
                      width: 200.0,
                      // color: Colors.tealAccent,
                    ),
                    Container(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14.0,
                            // color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: ("    REPRESENT X\n"),
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ("LESSONS HOODIE\n"),
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ("        💶 215.00 GPB"),
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: Colors.teal.shade200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/atletico.jpg",
                      ),
                      height: 200.0,
                      width: 200.0,
                      // color: Colors.tealAccent,
                    ),
                    Container(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14.0,
                            // color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: ("    DINNER SHIRT\n"),
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ("            SPLIT\n"),
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ("          💶 175.00 GPB"),
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: Colors.teal.shade200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/roma.jpg",
                        ),
                        height: 200.0,
                        width: 200.0,
                        // color: Colors.tealAccent,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14.0,
                              // color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: ("      T-SHIRT\n"),
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ("WASHED BLACK\n"),
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ("      💶 100.00 GPB"),
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.teal.shade200,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/tot.jpg",
                        ),
                        height: 200.0,
                        width: 200.0,
                        // color: Colors.tealAccent,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14.0,
                              // color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: ("    LOGO SWEATER\n"),
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ("       RED MARBLE\n"),
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ("           💶 200.00 GPB"),
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.teal.shade200,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
