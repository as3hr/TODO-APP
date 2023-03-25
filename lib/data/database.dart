import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference the box
  final _mybox = Hive.box('mybox');

  // run this method if the user is opening the app for the very first time
  void createInitialData() {
    toDoList = [
      ["Make Tutorials", false],
      ["Do excercise", false],
    ];
  }

  //load database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  //Update database
  void updateDatabse() {
    _mybox.put("TODOLIST", toDoList);
  }
}
