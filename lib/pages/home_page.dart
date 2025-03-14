// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:todo_app/util/dialog_box.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of todo items
  List toDoList = [
    ['Make Todo App', false],
    ['Workout', false]
  ];
  //Checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }
  //Creating new task
  void createNewTask(){
    showDialog(context: context, builder: (context){
      return DialogBox();
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.yellow[200],

      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("To Do"),
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: createNewTask,
        child: Icon(Icons.add)
      ),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index)
          );
        },
      ),

    );
  }
}