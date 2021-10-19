import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uy_ishi/chat.dart';
import 'package:uy_ishi/drawer_menu.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List chats = [
    [Colors.red, "Flutter Bootcamp N2|14:00", "Hello flutter"],
    [Colors.yellow, "IT jobs", "New job is available"],
    [Colors.green, "New Group", "Hello flutter"],
    [Colors.orange, "New Group", "Hello flutter"],
    [Colors.indigo, "New Group", "Hello flutter"],
    [Colors.black, "New Group", "Hello flutter"],
    [Colors.teal, "New Group", "Hello flutter"],
    [Colors.blue, "New Group", "Hello flutter"],
    [Colors.red, "New Group", "Hello flutter"],
    [Colors.yellow, "New Group", "Hello flutter"],
    [Colors.green, "New Group", "Hello flutter"],
  ];
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerMenu(),
        appBar: AppBar(
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ],
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
          title: Text(
            "Telegram",
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.white,fontSize: 20.0,
                ),
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              Column(
                children: [
                  ...List.generate(
                    chats.length,
                    (index) {
                      return singleCategory(
                        context,
                        color: chats[index][0],
                        title: chats[index][1],
                        subtitle: chats[index][2],
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  singleCategory(BuildContext context, {color, title, subtitle, index}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => ChatPage(
              color: color,
              title: title,
              subtitle: subtitle,
            ),
          ),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          radius: 30.0,
        ),
        title: Text(
          "${title}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text("${subtitle}"),
        // trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
