import 'package:flutter/material.dart';
import 'package:uy_ishi/Expansion/chat_list.dart';

class IndigoPage extends StatefulWidget {
  @override
  _IndigoPageState createState() => _IndigoPageState();
}

class _IndigoPageState extends State<IndigoPage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.indigo[900],
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 70.0,
              height: 5.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  30.0,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 70,
              decoration: BoxDecoration(
                color: Colors.indigo[800],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30.0,
                  ),
                  topRight: Radius.circular(
                    30.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Activity",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
                      controller: _tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      isScrollable: false,
                      tabs: [
                        Tab(
                          child: Text(
                            "All",
                          ),
                        ),
                        Tab(
                          child: Text("Shopping"),
                        ),
                        Tab(
                          child: Text("Taxi"),
                        ),
                        Tab(
                          child: Text("Transport"),
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
                          itemCount: 6,
                        ),
                        Container(),
                        Container(),
                        Container(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget chatView(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 15.0),
        decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
        child: ListTile(
          leading: Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.indigo[800],
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
          ),
          title: Text(
            Person.Names[index],
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text(
            Person.messages[index],
            style: TextStyle(
              color: Colors.white60,
            ),
          ),
          trailing: Column(
            children: [
              Text(
                Person.times[index],
                style: TextStyle(color: Colors.white70, fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
