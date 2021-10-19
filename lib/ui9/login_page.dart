import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:uy_ishi/ui9/sign_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _inputdagiTexta = "";

  String _inputdagiTextb = "";

  String _inputdagiTextc = "Dstudio_agency";

  String _inputdagiTextd = "12345";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            // color: Colors.amber,
            width: 340.0,
            height: 750.0,
            margin: EdgeInsets.only(top:30,left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 20.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        50.0,
                      ),
                      bottomRight: Radius.circular(
                        50.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Hey,\nLogin Now.",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Text(
                      "If you are new / ",
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    Text(
                      "Create New",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (a) {
                      _inputdagiTexta = a;
                    },
                    decoration: InputDecoration(
                      suffixIcon: Container(
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 12.5,
                              ),
                              child: Icon(
                                Icons.circle_sharp,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 17.0, left: 5.0),
                              child: Icon(
                                Icons.flash_on_rounded,
                                color: Colors.black,
                                size: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.orange.shade200),
                      ),
                      fillColor: Colors.orange.shade200,
                      filled: true,
                      hintText: "User name",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.orange.shade200),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (b) {
                      _inputdagiTextb = b;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      hintText: "Password",
                      // labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.orange.shade200),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Text(
                      "If you are new / ",
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    Text(
                      "Create New",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Container(
                    width: 290,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        if (_inputdagiTexta == _inputdagiTextc &&
                            _inputdagiTextb == _inputdagiTextd) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignPage(),
                            ),
                          );
                        } else {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.ERROR,
                            animType: AnimType.BOTTOMSLIDE,
                            title:
                                'The email address or password you entered is incorrect',
                            btnCancelOnPress: () {},
                          )..show();
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0,),
                Center(
                  child: Text(
                    "Skip Now",
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
