import 'package:flutter/material.dart';
import 'package:uy_ishi/ui10/3page.dart';
class SecondPagee extends StatefulWidget {
  const SecondPagee({Key? key}) : super(key: key);

  @override
  _SecondPageeState createState() => _SecondPageeState();
}

class _SecondPageeState extends State<SecondPagee> {
  var _formKey = GlobalKey<FormState>();
  var _userNameController = TextEditingController();
  var _userFNameController = TextEditingController();
  var _userSNameController = TextEditingController();
  var _userEmailController = TextEditingController();
  var _userDataController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 150.0),
              child: Icon(
                Icons.local_police_outlined,
                size: 40.0,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.vpn_key,
                size: 35.0,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.room,
                size: 30.0,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.snowmobile_outlined,
                color: Colors.blue,
                size: 25.0,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(
              "Create accaunt",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, left: 10.0),
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image.asset(
              "assets/images/avatar.jpg",
            ),
          ),
          Container(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(left: 20.0, right: 20.0, bottom: 7.0),
                      child: TextFormField(
                        validator: (text) {
                          if (text!.length < 4) {
                            return "4 ta belgidan kam bo'lmasin";
                          }
                        },
                        controller: _userFNameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter Fname..",
                          labelText: "Fname",
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 20.0, right: 20.0, bottom: 7.0),
                      child: TextFormField(
                        validator: (text) {
                          if (text!.length < 4) {
                            return "4 ta belgidan kam bo'lmasin";
                          }
                        },
                        controller: _userSNameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter Sname..",
                          labelText: "Sname",
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 20.0, right: 20.0, bottom: 7.0),
                      child: TextFormField(
                        validator: (text) {
                          if (text!.length < 4) {
                            return "4 ta belgidan kam bo'lmasin";
                          }
                        },
                        controller: _userNameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter User Name..",
                          labelText: "User Name",
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 20.0, right: 20.0, bottom: 7.0),
                      child: TextFormField(
                        validator: (text) {
                          if (text!.length < 4) {
                            return "4 ta belgidan kam bo'lmasin";
                          }
                        },
                        controller: _userDataController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter Data Of Birth..",
                          labelText: "Data of birth",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextFormField(
                        validator: (text) {
                          if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(_userEmailController.text)) {
                            return "Emailni To'g'ri kiriting";
                          }
                        },
                        controller: _userEmailController,
                        onTap: () {},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter Email...",
                          labelText: "Email",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 100.0, vertical: 15.0)),
                        child: Text(
                          "Next Step",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdPage(
                                kelganUser: _userFNameController.text,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  buttonSave() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) =>
        //         SecondPage(kelganUserName: _userNameController.text),
        //   ),
        // );
      });
    }
  }
}


