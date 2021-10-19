import 'package:flutter/material.dart';
import 'package:uy_ishi/asosiy.dart';
import 'package:uy_ishi/ui6/first_page.dart';

class BurgerPage extends StatefulWidget {
  @override
  _BurgerPageState createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.redAccent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/burger.jpeg",
                fit: BoxFit.cover,
              ),
              title: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Top Foods !",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OrderPage(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            expandedHeight: 250,
            pinned: true,
            stretch: true,
            toolbarHeight: 100,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                    child: Text(
                      "More Categories",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    color: Colors.transparent,
                    margin:
                        EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0)),
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
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "PIZZA PEPPERONI",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "32 000 UZS",
                                  style: TextStyle(
                                    color: Colors.black,
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
                                  "https://res.cloudinary.com/dthnjpsnk/image/upload/v1577257378/menu/Pizza/pizza_pepperoni.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 180,
                            height: 200,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "PIZZA SUPREME",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "45 000 UZS",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
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
                                  "https://res.cloudinary.com/dthnjpsnk/image/upload/v1577257377/menu/Pizza/pizza_steak.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 180,
                            height: 200,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "PIZZA STEAK",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "58 000 UZS",
                                  style: TextStyle(
                                    color: Colors.black,
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
                                  "https://images.unsplash.com/photo-1572785031839-8d006462dcd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=939&q=80",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 180,
                            height: 200,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "PIZZA SPICY",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "37 000 UZS",
                                  style: TextStyle(
                                    color: Colors.black,
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
                                  "https://res.cloudinary.com/dthnjpsnk/image/upload/v1577257378/menu/Pizza/pizza_spicy.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 180,
                            height: 200,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "PIZZA MARGARITTA",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "28 000 UZS",
                                  style: TextStyle(
                                    color: Colors.black,
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
                                  "https://res.cloudinary.com/dthnjpsnk/image/upload/v1577257378/menu/Pizza/pizza_white_cheese.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 180,
                            height: 200,
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
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "BIGGER",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "18 000 UZS",
                                  style: TextStyle(
                                    color: Colors.black,
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
                                  "https://res.cloudinary.com/dthnjpsnk/image/upload/v1577256746/menu/burger/burger_bigger.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 180,
                            height: 200,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "CHEESEBURGER",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "27 000 UZS",
                                  style: TextStyle(
                                    color: Colors.black,
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
                                  "https://res.cloudinary.com/dthnjpsnk/image/upload/v1577256746/menu/burger/burger_cheese.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 180,
                            height: 200,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "PIZZA MARGARITTA",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "28 000 UZS",
                                  style: TextStyle(
                                    color: Colors.black,
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
                                  "https://images.unsplash.com/photo-1572785031839-8d006462dcd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=939&q=80",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 180,
                            height: 200,
                          ),
                          Container(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "PIZZA MARGARITTA",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "28 000 UZS",
                                  style: TextStyle(
                                    color: Colors.black,
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
                                  "https://images.unsplash.com/photo-1572785031839-8d006462dcd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=939&q=80",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 180,
                            height: 200,
                          ),
                          Container(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  "PIZZA MARGARITTA",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "28 000 UZS",
                                  style: TextStyle(
                                    color: Colors.black,
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
                                  "https://images.unsplash.com/photo-1572785031839-8d006462dcd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=939&q=80",
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: 180,
                            height: 200,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1624001934657-640af7e2c599?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHRpcmFtaXN1fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                      ),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1606388899461-17fc8069b24c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGphY2slMjBkYW5pZWxzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                      ),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1594041680534-e8c8cdebd659?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c3RlYWt8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZHJpbmt8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
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
