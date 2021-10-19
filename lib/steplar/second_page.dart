import 'package:flutter/material.dart';
import 'package:uy_ishi/steplar/third_page.dart';

class SecondUiPage extends StatelessWidget {
  const SecondUiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 300.0),
              child: IconButton(
                icon: Icon(
                  Icons.add_shopping_cart_outlined,
                  size: 32.0,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 160.0, top: 30.0),
                      child: Text(
                        "Water Shop",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 34.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                      child: Form(
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: "🔍 Search",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60.0),
                              borderSide: BorderSide(
                                color: Colors.black12,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                      height: 260.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(30.0),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/home.png",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Text(
                              "Catalog",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              "see all >",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 200.0,
                                height: 200.0,
                                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Bottles",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.0,
                                          vertical: 10.0,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Show all",
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200.0,
                                height: 200.0,
                                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Coolers",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.0,
                                          vertical: 10.0,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Show all",
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200.0,
                                height: 200.0,
                                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Pages",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.0,
                                          vertical: 10.0,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Show all",
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200.0,
                                height: 200.0,
                                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Bottles",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.0,
                                          vertical: 10.0,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Show all",
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200.0,
                                height: 200.0,
                                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Bottles",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.0,
                                          vertical: 10.0,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Show all",
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
