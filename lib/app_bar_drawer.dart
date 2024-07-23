// ignore_for_file: prefer_const_constructors

import 'package:building_ui/bottom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarWithDrawer extends StatelessWidget {
  const AppBarWithDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer View'),
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
      body: Center(
        child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue[400],
            ),
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            )),
      ),
       bottomNavigationBar: MyBottomNavigator(),
    );
  }
}
