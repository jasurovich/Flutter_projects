import 'package:flutter/material.dart';
import 'package:uy_ishi/Expansion/chat_list.dart';
import 'package:uy_ishi/Expansion/second_page.dart';

class Homework extends StatefulWidget {
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  int _currentIndexOfBottomBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Call ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndexOfBottomBar,
        onTap: (i) {
          setState(() {
            _currentIndexOfBottomBar = i;
          });
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Chats",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 90.0,
                  height: 40.0,
                  child: Text(
                    "All chats",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    width: 80.0,
                    height: 40.0,
                    child: Text(
                      "Person",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 80.0,
                  height: 40.0,
                  child: Text(
                    "View",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 80.0,
                  height: 40.0,
                  child: Text(
                    "Contacts",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: double.infinity,
              height: 470.0,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return chatView(context, index);
                },
                itemCount: Person.Names.length,
              ),
            ),
            Container(
              child: Icon(
                Icons.chat_rounded,
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 280.0),
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(40.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget chatView(BuildContext context, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          "assets/images/hotel${index}.jpg",
        ),
        radius: 30.0,
      ),
      title: Text(
        Person.Names[index],
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(Person.messages[index]),
      trailing: Text(
        Person.times[index],
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
