import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    this.taskString,
    this.isChecked,
    this.checkboxCallback,
    this.longPressCallback,
  });

  final String taskString;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskString,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (checkboxState) => checkboxCallback(checkboxState),
      ),
    );
  }
}
