// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:building_ui/data/data_base.dart';
import 'package:building_ui/utils/dialog_box.dart';
import 'package:building_ui/utils/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // referencing the hive box
  final _myBox = Hive.box('myBox');
  TodoDataBase db = TodoDataBase();
  final _controller = TextEditingController();

  @override
  void initState() {
    // if this is the 1st time opening app, creating a default data
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      // there a;ready exits
      db.loadData();
    }
    super.initState();
  }

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.todoList[index][1] = !db.todoList[index][1];
    });
    db.updateDatabase();
  }

  // saving new task
  void saveNewTask() {
    setState(() {
      db.todoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }

  // creating a task
  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onCancel: () => Navigator.of(context).pop(),
            onSave: saveNewTask,
          );
        });
  }

  void deleteTask(int index) {
    setState(() {
      db.todoList.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('TO DO'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.todoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: db.todoList[index][0],
            taskCompleted: db.todoList[index][1],
            onChanged: (value) {
              checkBoxChanged(value, index);
            },
            deleteFunc: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
