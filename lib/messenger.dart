import 'package:flutter/material.dart';

class MessengerPage extends StatelessWidget {
  List chats = [
    [Colors.red, "Flutter Bootcamp N2|14:00", "Active 5m ago"],
    [Colors.yellow, "Uzb", "Active 6m ago"],
    [Colors.green, "New Group", "Active 15m ago"],
    [Colors.orange, "New Group", "Active 50m ago"],
    [Colors.indigo, "New Group", "Hello flutter"],
    [Colors.black, "New Group", "Hello flutter"],
    [Colors.teal, "New Group", "Hello flutter"],
    [Colors.blue, "New Group", "Hello flutter"],
    [Colors.red, "New Group", "Hello flutter"],
    [Colors.yellow, "New Group", "Hello flutter"],
    [Colors.green, "New Group", "Hello flutter"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                Text(
                  "Samandar_jasurovich",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.menu
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(Icons.edit_outlined),
                    SizedBox(
                      width: 15.0,
                    )
                  ],
                )
              ],
            ),
            Container(
              height: 45.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.settings),
                  hintText: "Search Users...",
                  labelText: "Search",
                ),
              ),
            ),
            Container(
              height: 50.0,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Primary",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "General",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "0 request",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 168,
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
          ],
        ),
      ),
    );
  }

  singleCategory(BuildContext context, {color, title, subtitle, index}) {
    return ListTile(
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
        trailing: Icon(Icons.camera_alt_outlined));
  }
}
