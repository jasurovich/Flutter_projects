import 'package:flutter/material.dart';

class BoottomProfile extends StatefulWidget {
  @override
  _BoottomProfileState createState() => _BoottomProfileState();
}

class _BoottomProfileState extends State<BoottomProfile> {
  var _pageController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  var _isVertical = Axis.horizontal;
  bool _isTrue = false;
  List<double> _sizeCircle = [22.0, 11.0, 11.0];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: PageView(
              scrollDirection: _isVertical,
              reverse: false,
              controller: _pageController,
              pageSnapping: true,
              onPageChanged: (v) {
                debugPrint("Page: $v");
                switch (v) {
                  case 0:
                    setState(() {
                      _sizeCircle[0] = 22.0;
                      _sizeCircle[1] = 11.0;
                      _sizeCircle[2] = 11.0;
                    });
                    break;
                  case 1:
                    setState(() {
                      _sizeCircle[0] = 11.0;
                      _sizeCircle[1] = 22.0;
                      _sizeCircle[2] = 11.0;
                    });
                    break;
                  case 2:
                    setState(() {
                      _sizeCircle[0] = 11.0;
                      _sizeCircle[1] = 11.0;
                      _sizeCircle[2] = 22.0;
                    });
                    break;
                }
              },
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.redAccent,
                  child: Text("Page 1", style: TextStyle(fontSize: 24.0)),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  child: Text("Page 2", style: TextStyle(fontSize: 24.0)),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text("Page 3", style: TextStyle(fontSize: 24.0)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        _pageController.jumpToPage(0);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: _sizeCircle[0],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: InkWell(
                        onTap: () {
                          _pageController.jumpToPage(1);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: _sizeCircle[1],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _pageController.jumpToPage(1);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: _sizeCircle[1],
                      ),
                    ),
                  ],
                ),
                CheckboxListTile(
                    value: _isTrue,
                    title: Text("Vertical or Horizontal"),
                    onChanged: (v) {
                      setState(() {
                        _isTrue = v!;
                        if (v) {
                          _isVertical = Axis.horizontal;
                        } else {
                          _isVertical = Axis.vertical;
                        }
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
