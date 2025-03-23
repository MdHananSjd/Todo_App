// ignore_for_file: unused_field

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];

  //referencing our box
  final _mybox = Hive.box('mybox');

  //If its the first time ever opening the app
  void createInitialData(){
    toDoList = [
      ['Make Tutorial', false],
      ['Do workout', false]
    ];
  }

  //Load data from database
  void loadData(){
    toDoList = _mybox.get('TODOLIST');
  }
  
  //Update data into database
  void updateData(){
    _mybox.put('TODOLIST', toDoList);
  }

}