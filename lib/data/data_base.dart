import 'package:hive/hive.dart';

class TodoDataBase {
  List todoList = [];
  // referencing our hive box
  final _myBox = Hive.box('myBox');

  // running this method 1t time opening
  void createInitialData() {
    todoList = [
      ["Building UI", false],
      ["Build Something", false]
    ];
  }

  // load data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
_myBox.put("TODOLIST", todoList);
  }
}
