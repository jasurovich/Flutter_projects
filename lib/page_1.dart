import 'package:flutter/material.dart';
import 'package:uy_ishi/car_list.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          size: 30.0,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/photo1.jpg",
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50.0,
                width: 300.0,
                margin: EdgeInsets.only(
                  left: 15.0,
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  onChanged: (v) {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                    ),
                    hintText: "What transport do you need?",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search_rounded,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
                width: 50.0,
                height: 50.0,
                child: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Container(
            height: 50.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return brandsCard(ctx, i);
              },
              itemCount: Cars.CAR_TYPES.length,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            height: 300.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return carsCard(ctx, i);
              },
              itemCount: Cars.CAR_NAMES.length,
            ),
          ),
          Container(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (ctx, i) {
                return gridCard(ctx, i);
              },
              itemCount: 3,
            ),
            width: double.infinity,
            height: 154,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.explore,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.save_outlined,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_box_rounded,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat_bubble,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                ),
              ],
            ),
            width: double.infinity,
            height: 50,
          ),
        ],
      ),
    );
  }

  brandsCard(BuildContext ctx, int i) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      alignment: Alignment.center,
      child: Text(
        Cars.CAR_TYPES[i],
        style: TextStyle(
          fontSize: 18.0,
        ),
      ),
    );
  }

  carsCard(BuildContext ctx, int i) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      width: 350.0,
      margin: EdgeInsets.only(left: 20.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Cars.CAR_NAMES[i],
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                alignment: Alignment.center,
                child: Text(
                  "⭐️ 4.5",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[800],
                  ),
                ),
                width: 50.0,
                height: 25.0,
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 140.0,
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Cars.CAR_YEARS[i],
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  Cars.CAR_CLAS[i],
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 140.0,
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.shop,
                  color: Colors.grey,
                ),
                Text(
                  "5",
                ),
                Icon(
                  Icons.car_repair_sharp,
                  color: Colors.grey,
                ),
                Text(
                  "3",
                ),
                Icon(
                  Icons.shopping_bag,
                  color: Colors.grey,
                ),
                Text(
                  "4",
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 150.0,
            child: Image.asset(
              "assets/images/${Cars.CAR_NAMES[i].toLowerCase()}_${i + 1}.png",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0, top: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Cars.CAR_PRICES[i],
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " per day",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.0,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0, top: 5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: 100.0,
                    height: 40.0,
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  gridCard(BuildContext ctx, int i) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 160.0,
          width: 160.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/${Cars.CAR_TYPES[i].toLowerCase()}_$i.jpg",
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 160.0,
          width: 160.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/${Cars.CAR_TYPES[i+1].toLowerCase()}_${i+1}.jpg",
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
        )
      ],
    );
  }
}
