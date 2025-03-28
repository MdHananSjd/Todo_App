// ignore_for_file: sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function (bool?)? onChanged;
  Function (BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.0, right: 25, left: 25), 
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(15)
            )
            ]
          ),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              //Checkbox
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
        
              //Task text
              Text(
                taskName,
                style: TextStyle(decoration: taskCompleted? TextDecoration.lineThrough : TextDecoration.none),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.yellow[500],
            borderRadius: BorderRadius.circular(15)
          ),
        ),
      ),
    );
  }
}