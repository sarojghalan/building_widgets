// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:building_ui/bottom_navigator.dart';
import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack View'),
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
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.deepPurple,
          ),
          Positioned(
            top: 100,
            left: -40,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.deepPurple[400],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple[300],
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigator(),
    );
  }
}
