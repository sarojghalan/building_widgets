// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:building_ui/app_bar_drawer.dart';
import 'package:building_ui/first_page.dart';
import 'package:building_ui/grid_view_comp.dart';
import 'package:building_ui/home_page.dart';
import 'package:building_ui/input_view.dart';
import 'package:building_ui/list_view.dart';
import 'package:building_ui/second_page.dart';
import 'package:building_ui/stack_view_practice.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async 
{
  // initializing hive
  await Hive.initFlutter();
  var box =await  Hive.openBox('myBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class ContainerVIew extends StatelessWidget {
  const ContainerVIew({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputView(),
      routes: {
        '/first_page': (context) => FirstPage(),
        '/second_page': (context) => SecondPage(),
        '/grid_view': (context) => GridViewComp(),
        '/list_view': (context) => ListViewComp(),
        '/stacked_view': (context) => StackView(),
        '/app_bar_with_drawer': (context) => AppBarWithDrawer()
      },
    );
  }
}
