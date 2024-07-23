// ignore_for_file: prefer_const_constructors

import 'package:building_ui/bottom_navigator.dart';
import 'package:flutter/material.dart';

class ListViewComp extends StatelessWidget {
  const ListViewComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        centerTitle: true,
        leading: const Icon(Icons.person),
        backgroundColor: Colors.blue[50],
        // actions: [
        //   const Icon(Icons.notification_add),
        //   const SizedBox(
        //     width: 2,
        //   ),
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.logout),
        //   ),
        //   const SizedBox(
        //     width: 6,
        //   ),
        // ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.blue[800],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.flag)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue[200],
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 350,
            color: Colors.deepPurple,
          ),
          Container(
            width: 350,
            color: Colors.deepPurple[400],
          ),
          Container(
            width: 350,
            color: Colors.red[200],
          )
        ],
      ),
      bottomNavigationBar: MyBottomNavigator(),
    );
  }
}
