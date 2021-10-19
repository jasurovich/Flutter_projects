import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class FindNumber extends StatefulWidget {
  @override
  _FindNumberState createState() => _FindNumberState();
}

class _FindNumberState extends State<FindNumber> {
  int presstime = 0;
  Random random = Random();
  int randomNumber = Random().nextInt(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 320.0,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (ctx, i) {
                  return numbersView(ctx, i);
                },
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0),
              ),
            ),
            SizedBox(
              height: 230.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 45.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                    child: Text(
                      "Press Count : ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 30.0),
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(
                        50.0,
                      ),
                    ),
                    child: Text(
                      "$presstime",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget numbersView(BuildContext ctx, int i) {
    int hozirgiTime = (DateTime.now()).millisecondsSinceEpoch;
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: CircleAvatar(
          radius: 35.0,
          backgroundColor: Colors.grey[800],
          child: Text(
            "${i + 1}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      
      onTap: () {
        setState(() {
          
        });
        print(randomNumber);
        setState(() {});
        presstime += 1;
        if (presstime == 4) {
          int randomNumber = Random().nextInt(10);
          presstime = 0;
          AwesomeDialog(
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.BOTTOMSLIDE,
            title: "Game over",
            desc: "Press time is over 3",
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          )..show();
        } else {
          if (i + 1 == randomNumber) {
            int winTime = (DateTime.now()).millisecondsSinceEpoch;

            AwesomeDialog(
              context: context,
              dialogType: DialogType.SUCCES,
              animType: AnimType.BOTTOMSLIDE,
              title: 'Tabriklaymiz',
              desc: "Raqam to'gri " +
                  "${((winTime - hozirgiTime) / 10)/60} soniyada topdingiz",
              btnCancelOnPress: () {},
              btnOkOnPress: () {},
            )..show();
          } else if (i + 1 > randomNumber) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.BOTTOMSLIDE,
              title: "Noto'g'ri " + "$presstime",
              desc: "Minus number",
              btnCancelOnPress: () {},
              btnOkOnPress: () {},
            )..show();
          } else if (i + 1 < randomNumber) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.BOTTOMSLIDE,
              title: "Noto'g'ri " + "$presstime",
              desc: "Add number",
              btnCancelOnPress: () {},
              btnOkOnPress: () {},
            )..show();
          }
        }
      },
      
    );
  }
}
