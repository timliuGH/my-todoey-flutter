import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';

class Tasks with ChangeNotifier {
  List<Task> _tasks = [
    Task(taskString: 'Buy milk'),
    Task(taskString: 'Buy eggs'),
    Task(taskString: 'Buy bread'),
  ];

  List<Task> get tasks => _tasks;

  void addTask(String taskString) {
    _tasks.add(Task(taskString: taskString));
    notifyListeners();
  }
}
