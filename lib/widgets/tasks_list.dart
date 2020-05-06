import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:todoeyflutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskString: 'Buy milk'),
    Task(taskString: 'Buy eggs'),
    Task(taskString: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskString: tasks[index].taskString,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleIsDone();
            });
          },
        );
      },
    );
  }
}
