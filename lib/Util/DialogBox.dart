import 'package:flutter/material.dart';
import 'package:todo_app/Util/my_Button.dart';

class DialogBox extends StatelessWidget {
  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  hintText: 'Add a new Task', border: OutlineInputBorder()),
            ),

            //button save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save Button
                MyButton(text: 'Save', onPressed: onSave),
                const SizedBox(
                  width: 8,
                ),
                // Cancel Button
                MyButton(text: 'Cancel', onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
