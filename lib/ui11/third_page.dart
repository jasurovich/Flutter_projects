import 'package:flutter/material.dart';
import 'package:uy_ishi/asosiy.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  RangeValues _currentRangeValues = const RangeValues(0, 160);
  double _sliderNum = 5.0;
  double _sliderPrice = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AsosiyPage(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.cancel,
                  size: 30.0,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              child: Text(
                "Filter",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              child: Text(
                "Reset All",
                style: TextStyle(color: Colors.green, fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 30.0),
                child: Text(
                  "Distanse",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 200.0),
                child: Center(
                  child: Text(
                    "${_sliderNum} mi",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Slider(
            label: "${_sliderNum}",
            min: 5.0,
            max: 15.0,
            divisions: 5,
            value: _sliderNum,
            onChanged: (v) {
              setState(
                () {
                  _sliderNum = v;
                },
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(right: 240.0),
                child: Text(
                  "5 mi",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "15 mi",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 30.0),
                child: Text(
                  "Price",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 150.0),
                child: Center(
                  child: Text(
                    "${_currentRangeValues.start}",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
               Container(
                margin: EdgeInsets.only(top: 20.0, left: 100.0),
                child: Center(
                  child: Text(
                    "${_currentRangeValues.end}",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          RangeSlider(
                values: _currentRangeValues,
                min: 0,
                max: 160,
                activeColor: Colors.green,
                divisions: 160,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toInt().toString(),
                  _currentRangeValues.end.round().toInt().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(right: 240.0),
                child: Text(
                  "10\$ ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "160\$",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 265.0, top: 50.0),
            child: Text(
              "Cuisine",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.only(
                  left: 20.0,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green[500],
                      padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  child: Text(
                    "English",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {},
                ),
                width: 100.0,
                height: 100.0,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.only(
                  left: 5.0,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0)),
                  child: Text(
                    "Chiness",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {},
                ),
                width: 100.0,
                height: 100.0,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.only(
                  left: 5.0,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0)),
                  child: Text(
                    "Indian",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {},
                ),
                width: 100.0,
                height: 100.0,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 285.0, top: 10.0),
            child: Text(
              "Diet",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.only(
                  left: 20.0,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green[500],
                      padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  child: Text(
                    "Paleo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {},
                ),
                width: 100.0,
                height: 100.0,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.only(
                  left: 5.0,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0)),
                  child: Text(
                    "Kategonic",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {},
                ),
                width: 100.0,
                height: 100.0,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.only(
                  left: 10.0,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0)),
                  child: Text(
                    "Jollof Rich",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.only(
                  left: 35.0,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0)),
                  child: Text(
                    "Banku",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.only(
                  left: 25.0,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0)),
                  child: Text(
                    "Sandwich",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green[500],
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0)),
              child: Text(
                "Apply Fliter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
