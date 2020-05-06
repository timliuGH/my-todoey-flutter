import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.taskString, this.isChecked});

  final String taskString;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskString,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
//          task.toggleIsDone();
        },
      ),
    );
  }
}
