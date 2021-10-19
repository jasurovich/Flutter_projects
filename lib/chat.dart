import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  Color? color;
  String? title;
  String? subtitle;
  ChatPage({this.color, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
        ),
        title: Text(
          "${title}",
        ),
        subtitle: Text(
          "${subtitle}",
        ),
      )),
    );
  }
}
