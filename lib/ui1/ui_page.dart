import 'package:flutter/material.dart';
import 'package:uy_ishi/asosiy.dart';

class FashionLogin extends StatefulWidget {
  @override
  _FashionLoginState createState() => _FashionLoginState();
}

class _FashionLoginState extends State<FashionLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Milan ________________________ Search",
          style: TextStyle(
            fontSize: 21.0,
            color: Colors.black,
            // backgroundColor: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZmFzaGlvbiUyMG1lbnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Your Story",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1577686323569-40b90424099b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fGZhc2hpb24lMjBtZW5zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "New In",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1516257984-b1b4d707412e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fGZhc2hpb24lMjBtZW5zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Sale",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1556135063-eba17c48d523?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fGZhc2hpb24lMjBtZW5zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Brand",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZmFzaGlvbiUyMG1lbnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Shoes",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Image.network(
              "https://images.unsplash.com/photo-1506629082955-511b1aa562c8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGZhc2hpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
              width: 370.0,
              height: 370.0,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text(
                    "_______________",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "  Modern\nEssentials",
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    "_______________",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text("Discover new styles "),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 70.0,
                    width: 70.0,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AsosiyPage(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                    )),
                Container(
                  height: 70.0,
                  width: 70.0,
                  child: Icon(
                    Icons.search,
                  ),
                ),
                Container(
                  height: 70.0,
                  width: 70.0,
                  child: Icon(Icons.shop),
                ),
                Container(
                  height: 70.0,
                  width: 70.0,
                  child: Icon(
                    Icons.favorite,
                  ),
                ),
                Container(
                  height: 70.0,
                  width: 70.0,
                  child: Icon(
                    Icons.person,
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
