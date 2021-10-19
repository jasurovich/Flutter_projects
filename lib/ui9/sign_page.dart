import 'package:flutter/material.dart';

class SignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300.0,
          height: 610.0,
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      size: 40.0,
                    ),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80),
                    transform: Matrix4.skewY(-0.2),
                    color: Colors.teal[200],
                    width: 300,
                    height: 90,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80.0),
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/man.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 90.0, top: 12.0),
                    alignment: Alignment.center,
                    width: 25.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                        size: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Applied",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "28",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Reviewed",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "73",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Contacted",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "18",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Compleate Profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 140,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.teal[200],
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                    ),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7.0,
                          ),
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.headset,
                                color: Colors.teal[200],
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Education",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black45),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "02 Steps\nLeft",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 35,
                            child: Divider(
                              thickness: 2.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      width: 100.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 140,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                    ),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7.0,
                          ),
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.cases_rounded,
                                color: Colors.orange[200],
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Professional",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black45),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "04 Steps\nLeft",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 35,
                            child: Divider(
                              thickness: 2.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      width: 100.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.orange[200],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Buy Pro \$23.49",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
