import 'package:flutter/material.dart';
import 'package:uy_ishi/Expansion/chat_list.dart';

class Telegram extends StatefulWidget {
  @override
  _TelegramState createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recent Chats",
              style: TextStyle(color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            child: TabBar(
              indicator: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(8)),
              controller: _tabController,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    "All Chats",
                  ),
                ),
                Tab(
                  child: Text("Personal"),
                ),
                Tab(
                  child: Text("Work"),
                ),
                Tab(
                  child: Text("Groups"),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return chatView(context, index);
                  },
                  itemCount: 5,
                ),
                Container(),
                Container(),
                Container(),
              ],
            ),
          )
        ],
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
