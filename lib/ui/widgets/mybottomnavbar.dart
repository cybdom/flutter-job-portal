import 'package:flutter/material.dart';
import 'mybottomnavitem.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          MyBottomNavItem(
            text: "Search",
            icon: Icons.search,
            id: 0,
            onPressed: () {
              setState(() {
                _active = 0;
              });
            },
            active: _active,
          ),
          MyBottomNavItem(
            text: "Map",
            icon: Icons.map,
            id: 1,
            onPressed: () {
              setState(() {
                _active = 1;
              });
            },
            active: _active,
          ),
          MyBottomNavItem(
            text: "Decisions",
            icon: Icons.flight_takeoff,
            id: 2,
            onPressed: () {
              setState(() {
                _active = 2;
              });
            },
            active: _active,
          ),
          MyBottomNavItem(
            text: "Jobs",
            icon: Icons.work,
            id: 3,
            onPressed: () {
              setState(() {
                _active = 3;
              });
            },
            active: _active,
          ),
        ],
      ),
    );
  }
}
