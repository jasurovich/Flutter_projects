import 'package:flutter/material.dart';
import 'package:uy_ishi/Project/women.dart';

class NewUI extends StatefulWidget {
  @override
  _NewUIState createState() => _NewUIState();
}

class _NewUIState extends State<NewUI> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0, top: 80.0),
              child: Text(
                "Select",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Text(
                "Coffee",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, top: 20.0),
              child: Row(
                children: [
                  Container(
                    width: 25.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 4.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 3.0,
                    height: 3.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 400.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, top: 20.0, bottom: 20.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WomenPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 300.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                30.0,
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 280.0,
                                  height: 230.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/coffee.jpg",
                                        ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        30.0,
                                      ),
                                      topRight: Radius.circular(
                                        30.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 280.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(
                                        30.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        30.0,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, top: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cappucino",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          "Lattesso",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          width: 70.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                              35.0,
                            ),
                          ),
                          child: Text(
                            "\$25",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, top: 20.0, bottom: 20.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WomenPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 300.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                30.0,
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 280.0,
                                  height: 230.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/coffee.jpg",
                                        ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        30.0,
                                      ),
                                      topRight: Radius.circular(
                                        30.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 280.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(
                                        30.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        30.0,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, top: 25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cappucino",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          "Lattesso",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          width: 70.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                              35.0,
                            ),
                          ),
                          child: Text(
                            "\$25",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25.0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  unselectedLabelColor: Colors.grey[200],
                  unselectedLabelStyle:
                      TextStyle(fontSize: 16.0, color: Colors.grey),
                  // physics:
                  //     ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: Row(
                        children: [
                          Text(
                            "Cappucino",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: 5.0,
                            height: 5.0,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(
                                30.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Americano",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
