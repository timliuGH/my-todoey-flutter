import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.taskString, this.isChecked, this.checkboxCallback});

  final String taskString;
  final bool isChecked;
  final Function checkboxCallback;

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
        onChanged: checkboxCallback,
      ),
    );
  }
}
