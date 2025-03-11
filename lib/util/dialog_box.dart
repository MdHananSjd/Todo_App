import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,        
        child: Column(
          children: [
            //get user input
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task"
              ),
            ),

            //buttons -> save + cancel
            Row(children: [
              //save button
              MyButton(text: 'Save', onPressed: (){}),

              //cancel button
              MyButton(text: 'Cancel', onPressed: (){}),
            ],)
          ],
        )
      ),
    );
  }
}