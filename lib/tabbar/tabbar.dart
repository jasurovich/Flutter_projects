import 'package:flutter/material.dart';

class TabbarPage extends StatefulWidget {
  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tabbars",
        ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.indigo,
            indicatorWeight: 2.0,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 20.0,
            ),
            labelPadding: EdgeInsets.symmetric(horizontal: 30.0),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 16.0),
            physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              Container(
                child: Text("Home"),
              ),
              Container(
                child: Text("Contacts"),
              ),
              Container(
                child: Text("Bots"),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
