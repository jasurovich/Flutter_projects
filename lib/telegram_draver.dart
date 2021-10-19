import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  List _categories = [
    [Icons.group, "New Group"],
    [Icons.person, "Contacts"],
    [Icons.call, "Calls"],
    [CupertinoIcons.location, "People Nearby"],
    [Icons.bookmark, "Saved Messages"],
    [Icons.settings, "Settings"],
    [Icons.person_add, "Invite Friends"],
    [Icons.info, "Telegram FAQ"],
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  //Profile Info
                  Container(
                    height: 150.0,
                    color: Colors.blueAccent,
                    padding: EdgeInsets.only(
                      right: 20.0,
                      left: 20.0,
                      bottom: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 30.0,
                            ),
                            Icon(CupertinoIcons.moon_fill),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "John Doe",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text(
                                  "+99 895 014 50 35",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        ...List.generate(
                          _categories.length,
                          (index) {
                            return singleCategory(
                              context,
                              icon: _categories[index][0],
                              title: _categories[index][1],
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  singleCategory(BuildContext context, {icon, title, index}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
            size: 30.0,
          ),
          SizedBox(
            width: 25.0,
          ),
          Text(
            "${title}",
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
          )
        ],
      ),
    );
  }
}
