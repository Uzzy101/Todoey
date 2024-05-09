import 'package:flutter/material.dart';

class TaskTiles extends StatelessWidget {
  TaskTiles({
    required this.taskTitle,
    required this.isChecked,
    required this.checkBoxCallback,
    required this.deleteTaskCallback,
  });

  final bool isChecked;
  final String taskTitle;
  final Function() checkBoxCallback;
  final Function() deleteTaskCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTaskCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20,
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        checkColor: Colors.white,
        activeColor: Colors.deepPurple,
        value: isChecked,
        onChanged: (newValue) {
          checkBoxCallback();
        },
      ),
    );
  }
}
