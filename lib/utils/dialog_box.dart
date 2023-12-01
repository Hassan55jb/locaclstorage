import 'package:flutter/material.dart';
import 'package:localstroge/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  VoidCallback onSave;
  VoidCallback onCancel;
  final controller;
  DialogBox(
      {super.key,
      this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add New Task'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', onPressed: onSave),
                SizedBox(
                  width: 4,
                ),
                MyButton(text: 'cancel', onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
