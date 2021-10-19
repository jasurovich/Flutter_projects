import 'package:flutter/material.dart';
import 'package:uy_ishi/drawer_menu.dart';

class FontPage extends StatelessWidget {
  GlobalKey<ScaffoldState> _keyOfScaffold = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyOfScaffold,
      drawer: DrawerMenu(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "Google Fonts",
            style: TextStyle(
                color: Colors.black, fontSize: 33.0, fontFamily: 'Carattere'),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Hello Flutter',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 55.0,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                _keyOfScaffold.currentState!.openDrawer();
              },
              child: Text(
                "Drawerni och",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
