import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/tasks.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: context.watch<Tasks>().tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskString: context.read<Tasks>().tasks[index].taskString,
          isChecked: context.read<Tasks>().tasks[index].isDone,
        );
      },
    );
  }
}
