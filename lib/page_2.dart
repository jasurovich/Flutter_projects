import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'page_1.dart';

class LoginPag extends StatelessWidget {
  String? name;
  String? sname;
  String? uname;
  String? bdate;
  String? email;
  String name1 = "samandar";
  String sname1 = "abduhamitov";
  String uname1 = "samandar";
  String bdate1 = "15.03.2003";
  String email1 = "saman@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                    size: 35.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.vpn_key_rounded,
                    color: Colors.blueAccent,
                    size: 40.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.blueAccent,
                    size: 40.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.car_rental,
                    color: Colors.blueAccent,
                    size: 40.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Create Account",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage(
                  "assets/images/photo1.jpg",
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 120.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: TextFormField(
                          onChanged: (v) {
                            name = v;
                          },
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            hintText: "Name",
                            labelText: "First Name",
                          ),
                        ),
                        width: 150.0,
                        height: 70.0,
                      ),
                      Container(
                        child: TextFormField(
                          onChanged: (v) {
                            sname = v;
                          },
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            hintText: "Surname",
                            labelText: "Last Name",
                          ),
                        ),
                        width: 150.0,
                        height: 70.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: TextFormField(
                      onChanged: (v) {
                        uname = v;
                      },
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Username",
                      ),
                    ),
                    width: 350,
                    height: 70.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: TextFormField(
                      onChanged: (v) {
                        bdate = v;
                      },
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        hintText: "Birth date",
                        labelText: "Date of birth",
                      ),
                    ),
                    width: 350,
                    height: 70.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: TextFormField(
                      onChanged: (v) {
                        email = v;
                      },
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                      ),
                    ),
                    width: 350,
                    height: 70.0,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.blue,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
              onPressed: () {
                if (name == name1 &&
                    uname == uname1 &&
                    sname == sname1 &&
                    bdate == bdate1 &&
                    email == email1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExplorePage(),
                    ),
                  );
                } else {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.ERROR,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'Error',
                    desc: 'Not matched',
                    btnCancelOnPress: () {},
                  )..show();
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 330.0,
                height: 40.0,
                child: Text(
                  "Next Step",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
