// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyBottomNavigator extends StatelessWidget {
  const MyBottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.grid_3x3),
            onPressed: () {
              Navigator.pushNamed(context, '/grid_view');
            },
          ),
          IconButton(
            icon: Icon(Icons.gif_box),
            onPressed: () {
              Navigator.pushNamed(context, '/first_page');
            },
          ),
          IconButton(
            icon: Icon(Icons.baby_changing_station),
            onPressed: () {
              Navigator.pushNamed(context, '/second_page');
            },
          ),
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.pushNamed(context, '/list_view');
            },
          ),
          IconButton(
            icon: Icon(Icons.stacked_bar_chart),
            onPressed: () {
              Navigator.pushNamed(context, '/stacked_view');
            },
          ),
          IconButton(
            icon: Icon(Icons.charging_station),
            onPressed: () {
              Navigator.pushNamed(context, '/app_bar_with_drawer');
            },
          ),
        ],
      ),
    );
  }
}
