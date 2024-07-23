// ignore_for_file: prefer_const_constructors

import 'package:building_ui/bottom_navigator.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
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
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/first_page');
            },
            child: Text('Go to First page.')),
      ),
       bottomNavigationBar: MyBottomNavigator(),
    );
  }
}
