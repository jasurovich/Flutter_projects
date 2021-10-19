import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues _currentRangeValues = const RangeValues(0, 3000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Filter",
            ),
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Text(
                "CLEAR",
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  "\$   ",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 3000,
            divisions: 3,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
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
                alignment: Alignment.center,
                child: Text(
                  "& " + _currentRangeValues.start.toString(),
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.grey[300],
                width: 160.0,
                height: 50.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "& " + _currentRangeValues.end.toString(),
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.grey[300],
                width: 160.0,
                height: 50.0,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            width: double.infinity,
            child: Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Free Break Fast",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Icon(
                    Icons.check_sharp,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Divider(
              thickness: 2,
              color: Colors.grey[300],
            ),
          ),
          Container(
            width: double.infinity,
            height: 40.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Free Wifi",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Icon(
                    Icons.check_sharp,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            width: double.infinity,
            child: Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
          ),
          Container(
            width: double.infinity,
            height: 40.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sunrise check-in",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Icon(
                    Icons.check_sharp,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            width: double.infinity,
            child: Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
          ),
          Container(
            width: double.infinity,
            height: 80.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "USER RATINGS",
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text("⭐️ 3"),
                        width: 48.0,
                        height: 25.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text("⭐️ 4"),
                        width: 48.0,
                        height: 25.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        decoration: BoxDecoration(
                          color: Colors.orange[900],
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "⭐️ 5",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        width: 48.0,
                        height: 25.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            width: double.infinity,
            child: Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
          ),
          ListTile(
            title: Text(
              "Other Facilities",
            ),
            subtitle: Text(
              "Parking, Pool, Bar",
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Apply",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
            ),
            width: 200.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.orange[900],
              borderRadius: BorderRadius.circular(30.0),
            ),
          )
        ],
      ),
    );
  }
}
