import 'dart:math';

import 'package:flutter/material.dart';

class BoottomCart extends StatefulWidget {
  @override
  _BoottomCartState createState() => _BoottomCartState();
}

class _BoottomCartState extends State<BoottomCart> {
  List<Icon> _listOfIcon = List.generate(
    20,
    (index) => Icon(Icons.keyboard_arrow_down),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(
              10.0,
            ),
            child: ExpansionTile(
              title: Text(
                "Contact $index",
              ),
              collapsedBackgroundColor:
                  Colors.cyan[(Random().nextInt(8) + 1) * 100],
              collapsedTextColor: Colors.white,
              leading: Icon(Icons.contact_mail),
              // trailing: _listOfIcon[index],
              children: [
                Container(
                  height: 100,
                  child: Text("Hello Contact $index"),
                ),
                TextField(),
              ],
              textColor: Colors.white,
              backgroundColor: Colors.purple[200],
              iconColor: Colors.red,
              onExpansionChanged: (v) {
                debugPrint("Bosildi: $v");
                setState(() {
                  if (v) {
                    _listOfIcon[index] = Icon(Icons.keyboard_arrow_down);
                  } else {
                    _listOfIcon[index] = Icon(Icons.keyboard_arrow_left);
                  }
                });
              },
              tilePadding: EdgeInsets.all(10),
              initiallyExpanded: index == 2 ? true: false,
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
