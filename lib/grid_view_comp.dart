// ignore_for_file: prefer_const_constructors

import 'package:building_ui/bottom_navigator.dart';
import 'package:flutter/material.dart';

class GridViewComp extends StatelessWidget {
  const GridViewComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
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
      body: GridView.builder(
          itemCount: 64,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.deepPurple,
              margin: const EdgeInsets.all(2),
              child: Center(
                  child: Text(
                '$index',
                style: const TextStyle(color: Colors.white),
              )),
            );
          }),
          bottomNavigationBar: MyBottomNavigator(),
    );
  }
}
