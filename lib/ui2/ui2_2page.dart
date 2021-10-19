import 'package:flutter/material.dart';
import 'package:uy_ishi/ui2/ui2.dart';

class RepresentPage extends StatefulWidget {
  @override
  _RepresentPageState createState() => _RepresentPageState();
}

class _RepresentPageState extends State<RepresentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "   REPRESENT",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FW19Page(),
                ),
              );
            },
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 400,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/fw19.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 2),
              child: Center(
                child: Text(
                  "FW19",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/kro.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "THE\n    TERRIER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
