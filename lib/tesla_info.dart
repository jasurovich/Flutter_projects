import 'package:flutter/material.dart';

class TeslaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  child: Image.asset(
                    "assets/images/tesla_logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 250.0,
            child: Image.asset(
              "assets/images/tesla.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "360",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.touch_app_outlined,
                  size: 30.0,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tesla S model future",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Tesla officially delayed the launch of its long-awaited Cybertruck this month, changing the expected delivery date on its website to 2022." +
                      "The futuristic pickup isn't the only vehicle Tesla fans have been waiting for. Elon Musk's automaker sells just four models currently, but it has grand plans to expand its offerings in the near future.",
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
            width: 360.0,
            height: 200.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "<5 sec",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "Time",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey,
                  width: 0.5,
                  height: 15.0,
                ),
                Column(
                  children: [
                    Text(
                      "+250 mt",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "Speed",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey,
                  width: 0.5,
                  height: 15.0,
                ),
                Column(
                  children: [
                    Text(
                      "\$100.000",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Reserver now",
              style: TextStyle(fontSize: 25.0),
            ),
            width: 250.0,
            height: 50.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(
                30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
