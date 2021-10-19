import 'package:flutter/material.dart';

class TabbarPage2 extends StatefulWidget {
  @override
  _TabbarPage2State createState() => _TabbarPage2State();
}

class _TabbarPage2State extends State<TabbarPage2>
    with TickerProviderStateMixin {
  Color _colorOfContainer = Colors.amber;
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Tab Bar",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        bottom: TabBar(
          indicatorColor: _colorOfContainer,
          labelColor: Colors.black,
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_repair_service,
                color: Colors.amber,
              ),
              text: "First Tab",
            ),
            Tab(
              icon: Icon(
                Icons.home_repair_service,
                color: Colors.red,
              ),
              text: "Second Tab",
            ),
            Tab(
              icon: Icon(
                Icons.home_repair_service,
                color: Colors.green,
              ),
              text: "Third Tab",
            ),
          ],
          onTap: (index) {
            switch (index) {
              case 0:
                _colorOfContainer = Colors.amber;
                break;
              case 1:
                _colorOfContainer = Colors.green;
                break;
              case 2:
                _colorOfContainer = Colors.red;
                break;
            }
            setState(() {});
          },
        ),
      ),
      body: Container(
        color: _colorOfContainer,
        height: 400,
      ),
    );
  }
}
