import 'package:flutter/material.dart';

class Expansion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ExpansionTile(
              title: Text(
                "Login",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              children: [
                Text(
                  "Samandar Abduhamitov",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.indigo,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
