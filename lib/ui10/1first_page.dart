import 'package:flutter/material.dart';
import 'package:uy_ishi/ui10/2second_page.dart';

class RentCar extends StatelessWidget {
  const RentCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                "Explore",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 175.0),
              child: Icon(
                Icons.menu_outlined,
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/as.jpeg",
                ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 30,
                          left: 10,
                        ),
                        width: 300,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.black12,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Icon(
                                Icons.search,
                                color: Colors.black54,
                              ),
                            ),
                            Container(
                              child: Text(
                                "  What transport do you need?",
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.refresh,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.black12,
                              ),
                              margin: EdgeInsets.only(
                                top: 15,
                                left: 10,
                                right: 10,
                              ),
                              child: Text(
                                "Explore",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              width: 80.0,
                              height: 30.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.black12,
                              ),
                              margin: EdgeInsets.only(
                                top: 15,
                                left: 10,
                                right: 10,
                              ),
                              child: Text(
                                "Cars",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              width: 80.0,
                              height: 30.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.black12,
                              ),
                              margin: EdgeInsets.only(
                                top: 15,
                                left: 10,
                                right: 10,
                              ),
                              child: Text(
                                "Trucks",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              width: 80.0,
                              height: 30.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.black12,
                              ),
                              margin: EdgeInsets.only(
                                top: 15,
                                left: 10,
                                right: 10,
                              ),
                              child: Text(
                                "Scooters",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              width: 80.0,
                              height: 30.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.black12,
                              ),
                              margin: EdgeInsets.only(
                                top: 15,
                                left: 10,
                                right: 10,
                              ),
                              child: Text(
                                "Helicopter",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              width: 80.0,
                              height: 30.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.black12,
                              ),
                              margin: EdgeInsets.only(
                                top: 15,
                                left: 10,
                                right: 10,
                              ),
                              child: Text(
                                "Juise",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              width: 80.0,
                              height: 30.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 400.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 22.0, top: 20.0),
                              height: 350.0,
                              width: 350.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 300.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/img1.png",
                                          ),
                                        ),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 20.0, left: 20.0),
                                                child: Text(
                                                  "BMW  X4 Sports",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 60.0,
                                                height: 30.0,
                                                margin: EdgeInsets.only(
                                                    top: 18.0, left: 70.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.yellow[100],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "⭐️ 4.5",
                                                    style: TextStyle(
                                                      color: Colors.yellow[600],
                                                      fontSize: 16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 5.0, right: 190.0),
                                          child: Text(
                                            "2017 - COMFORT CLASS",
                                            style: TextStyle(
                                              color: Colors.black26,
                                              fontSize: 11.0,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 180.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "\$ 210 par day",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: ElevatedButton(
                                                  child: Text(
                                                    "Book Now",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16.0,
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            SecondPagee(),
                                                      ),
                                                    );
                                                  },
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
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 22.0, top: 20.0),
                              height: 350.0,
                              width: 350.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 300.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/mu.png",
                                            ),
                                            fit: BoxFit.cover),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 20.0, left: 20.0),
                                                child: Text(
                                                  "Mustang",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 60.0,
                                                height: 30.0,
                                                margin: EdgeInsets.only(
                                                    top: 18.0, left: 70.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.yellow[100],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "⭐️ 7.5",
                                                    style: TextStyle(
                                                      color: Colors.yellow[600],
                                                      fontSize: 16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 5.0, right: 190.0),
                                          child: Text(
                                            "2017 - COMFORT CLASS",
                                            style: TextStyle(
                                              color: Colors.black26,
                                              fontSize: 11.0,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 180.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "\$ 710 par day",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: ElevatedButton(
                                                  child: Text(
                                                    "Book Now",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16.0,
                                                    ),
                                                  ),
                                                  onPressed: () {},
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
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 22.0, top: 20.0),
                              height: 350.0,
                              width: 350.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 300.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/img.png",
                                            ),
                                            fit: BoxFit.cover),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 20.0, left: 20.0),
                                                child: Text(
                                                  "BMW  X5 Sports",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 60.0,
                                                height: 30.0,
                                                margin: EdgeInsets.only(
                                                    top: 18.0, left: 70.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.yellow[100],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "⭐️ 6.5",
                                                    style: TextStyle(
                                                      color: Colors.yellow[600],
                                                      fontSize: 16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 5.0, right: 190.0),
                                          child: Text(
                                            "2017 - COMFORT CLASS",
                                            style: TextStyle(
                                              color: Colors.black26,
                                              fontSize: 11.0,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 180.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "\$ 430 par day",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: ElevatedButton(
                                                  child: Text(
                                                    "Book Now",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16.0,
                                                    ),
                                                  ),
                                                  onPressed: () {},
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
                            ),
                          ],
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
                              width: 150.0,
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
                                    "https://images.unsplash.com/photo-1593642532871-8b12e02d091c?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              width: 150.0,
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
                                    "https://images.unsplash.com/photo-1593642532871-8b12e02d091c?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
                                  ),
                                  fit: BoxFit.cover,
                                ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70.0,
                          width: 70.0,
                          child: Icon(
                            Icons.explore,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          height: 70.0,
                          width: 70.0,
                          child: Icon(
                            Icons.bookmark_border_outlined,
                          ),
                        ),
                        Container(
                            height: 70.0,
                            width: 70.0,
                            child: IconButton(
                              color: Colors.black,
                              icon: Icon(
                                Icons.add,
                              ),
                              onPressed: () {},
                            )),
                        Container(
                          height: 70.0,
                          width: 70.0,
                          child: Icon(Icons.chat_bubble_outline),
                        ),
                        Container(
                          height: 70.0,
                          width: 70.0,
                          child: Icon(
                            Icons.grid_view_rounded,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
