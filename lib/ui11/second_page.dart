import 'package:flutter/material.dart';
import 'package:uy_ishi/steplar/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SafeArea(
                  child: Column(
                    children: [
                      
                      Container(
                        height: 50.0,
                        color: Colors.red[600],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Hi, Burhan",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Container(
                                height: 35.0,
                                width: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.green[300],
                                ),
                                child: Icon(
                                  Icons.gps_fixed,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.red[600],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              color: Colors.red[600],
                              child: Text(
                                "Good Morning ☀️",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5.0),
                              color: Colors.red[600],
                              child: Text(
                                "Map View",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red[600],
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(30.0),
                          ),
                        ),
                        height: 120.0,
                        width: double.infinity,
                        child: Container(
                          margin:
                              EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                          child: Form(
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: "Search",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 350.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white60,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50.0,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              // color: Colors.orange,
                              margin: EdgeInsets.only(right: 230.0),
                              child: Text(
                                "30%",
                                style: TextStyle(
                                  color: Colors.red[600],
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 130.0, top: 5.0),
                              child: Text(
                                "Discount for All Food",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 80.0),
                                  child: Text(
                                    "Valid until November 16",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  height: 120.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://images.unsplash.com/photo-1607532941433-304659e8198a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2FsYWRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                          ),
                                          fit: BoxFit.cover),
                                      color: Colors.yellowAccent,
                                      borderRadius: BorderRadius.circular(20.0)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 20.0, left: 20.0, bottom: 20.0),
                            child: Text(
                              "Popular Chef",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            color: Colors.transparent,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 180.0),
                            child: Icon(
                              Icons.menu_sharp,
                              size: 30.0,
                              color: Colors.black54,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: Icon(
                              Icons.grid_view_rounded,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 250.0,
                        // color: Colors.red,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://images.unsplash.com/photo-1558985250-27a406d64cb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dHVuYSUyMHNhbmR3aWNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20.0),
                                          bottom: Radius.circular(20.0))),
                                  width: 270.0,
                                  height: 270.0,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 170.0),
                                    width: 270.0,
                                    height: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(top: 5.0, left: 10.0),
                                      child: ListTile(
                                        title: Text(
                                          "Chif Sam's...",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Tuna Sandwich",
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 45.0),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.white),
                                                child: Icon(
                                                  Icons.snowmobile_outlined,
                                                  color: Colors.black,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/77073e77919903.5c9580420401b.jpg"),
                                          fit: BoxFit.cover),
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20.0),
                                          bottom: Radius.circular(20.0))),
                                  width: 270.0,
                                  height: 270.0,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 170.0),
                                    width: 270.0,
                                    height: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(top: 5.0, left: 10.0),
                                      child: ListTile(
                                        title: Text(
                                          "Aku's Kitc...",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Banku(Papp",
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 45.0),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.white),
                                                child: Icon(
                                                  Icons.snowmobile_outlined,
                                                  color: Colors.black,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNhbGFkc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20.0),
                                          bottom: Radius.circular(20.0))),
                                  width: 270.0,
                                  height: 270.0,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 170.0),
                                    width: 270.0,
                                    height: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(top: 5.0, left: 10.0),
                                      child: ListTile(
                                        title: Text(
                                          "Chif Sam's...",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Tuna Sandwich",
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 45.0),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.white),
                                                child: Icon(
                                                  Icons.snowmobile_outlined,
                                                  color: Colors.black,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 250.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 10.0,
                                    top: 15.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://avatars.mds.yandex.net/i?id=41f6a0180ade83d903320d195d23a7c4-4809920-images-thumbs&n=13&exp=1",
                                          ),
                                          fit: BoxFit.cover),
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20.0),
                                          bottom: Radius.circular(20.0))),
                                  width: 270.0,
                                  height: 280.0,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 170.0),
                                    width: 270.0,
                                    height: 230.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(top: 5.0, left: 10.0),
                                      child: ListTile(
                                        title: Text(
                                          "Yorm's kit...",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Jollof Rice",
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 45.0),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.white),
                                                child: Icon(
                                                  Icons.snowmobile_outlined,
                                                  color: Colors.black,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0, top: 15.0),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://thumbs.dreamstime.com/b/portion-grilled-squid-fresh-vegetables-close-up-plate-black-table-top-view-above-portion-grilled-squid-124041704.jpg",
                                          ),
                                          fit: BoxFit.cover),
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20.0),
                                          bottom: Radius.circular(20.0))),
                                  width: 270.0,
                                  height: 270.0,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 170.0),
                                    width: 270.0,
                                    height: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(top: 5.0, left: 10.0),
                                      child: ListTile(
                                        title: Text(
                                          "Hadiza Ki...",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Waakyee",
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 45.0),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.white),
                                                child: Icon(
                                                  Icons.snowmobile_outlined,
                                                  color: Colors.black,
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ThirdPage(),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0, top: 15.0),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://thumbs.dreamstime.com/b/%D0%B7%D0%B0%D0%B6%D0%B0%D1%80%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5-%D0%BA%D1%83%D1%80%D0%B8%D0%BD%D1%8B%D0%B5-%D0%B3%D1%80%D1%83%D0%B4%D0%BA%D0%B8-%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D0%BB%D0%B8-%D0%BD%D0%B0-%D0%BC%D1%80%D0%B0%D0%BC%D0%BE%D1%80%D0%BD%D0%BE%D0%B9-%D1%82%D0%B0%D0%B1%D0%BB%D0%B8%D1%86%D0%B5-%D0%BF%D0%BB%D0%BE%D1%81%D0%BA%D0%BE%D0%BC-136837295.jpg",
                                          ),
                                          fit: BoxFit.cover),
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20.0),
                                          bottom: Radius.circular(20.0))),
                                  width: 270.0,
                                  height: 270.0,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 170.0),
                                    width: 270.0,
                                    height: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(top: 5.0, left: 10.0),
                                      child: ListTile(
                                        title: Text(
                                          "Chif Sam's...",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Tuna Sandwich",
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 45.0),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.white),
                                                child: Icon(
                                                  Icons.snowmobile_outlined,
                                                  color: Colors.black,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
    );
  }
}
