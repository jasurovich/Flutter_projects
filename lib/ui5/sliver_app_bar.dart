import 'package:flutter/material.dart';
import 'package:uy_ishi/asosiy.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.yellow,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                children: [
                  Container(
                    child: Text(
                      "Home                     ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage(
                        "assets/images/logo1.jpeg",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            expandedHeight: 180.0,
            actions: [
              IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AsosiyPage(),
                    ),
                  );
                },
                icon: Icon(Icons.notifications),
              ),
            ],
            centerTitle: false,
            pinned: true,
            stretch: true,
            toolbarHeight: 80.0,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1593642532871-8b12e02d091c?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            width: 350.0,
                            height: 200.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1511919884226-fd3cad34687c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            width: 350.0,
                            height: 200.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvbmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            width: 350.0,
                            height: 200.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 20.0),
                  child: Text(
                    "Popular Courses",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  color: Colors.transparent,
                ),
                Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "  Compyuter Science",
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  " Console Development \n Basics with I Initv",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1507457379470-08b800bebc67?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBsYXlzdGF0aW9uc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 300.0,
                            height: 250.0,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "  Business & Marketing",
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  " Desing Development \n For Me",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1554224155-6726b3ff858f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJ1c2luZXNzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 300.0,
                            height: 350.0,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "  Compyuter Shop  ",
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  " The Best Compyuter \n Of 2021 year",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            margin: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFjYm9va3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 300.0,
                            height: 2350.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 70.0,
                        width: 70.0,
                        child: Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 70.0,
                        width: 70.0,
                        child: Icon(
                          Icons.favorite_border_rounded,
                        ),
                      ),
                      Container(
                        height: 70.0,
                        width: 70.0,
                        child: Icon(
                          Icons.search_outlined,
                        ),
                      ),
                      Container(
                        height: 70.0,
                        width: 70.0,
                        child: Icon(
                          Icons.filter_none_outlined,
                        ),
                      ),
                      Container(
                        height: 70.0,
                        width: 70.0,
                        child: Icon(
                          Icons.settings,
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
