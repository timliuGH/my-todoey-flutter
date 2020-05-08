import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/tasks.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: context.watch<Tasks>().taskCount,
      itemBuilder: (context, index) {
        final Tasks taskData = context.read<Tasks>();
        return TaskTile(
          taskString: taskData.tasks[index].taskString,
          isChecked: taskData.tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            taskData.updateTask(index);
          },
        );
      },
    );
  }
}
